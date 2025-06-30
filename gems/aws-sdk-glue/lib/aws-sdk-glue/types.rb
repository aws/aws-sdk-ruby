# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Glue
  module Types

    # Access to a resource was denied.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an action to be initiated by a trigger.
    #
    # @!attribute [rw] job_name
    #   The name of a job to be run.
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   The job arguments used when this trigger fires. For this job run,
    #   they replace the default arguments set in the job definition itself.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that Glue itself consumes.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the key-value pairs that Glue consumes to set
    #   up your job, see the [Special Parameters Used by Glue][2] topic in
    #   the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] timeout
    #   The `JobRun` timeout in minutes. This is the maximum time that a job
    #   run can consume resources before it is terminated and enters
    #   `TIMEOUT` status. This overrides the timeout value set in the parent
    #   job.
    #
    #   Jobs must have timeout values less than 7 days or 10080 minutes.
    #   Otherwise, the jobs will throw an exception.
    #
    #   When the value is left blank, the timeout is defaulted to 2880
    #   minutes.
    #
    #   Any existing Glue jobs that had a timeout value greater than 7 days
    #   will be defaulted to 7 days. For instance if you have specified a
    #   timeout of 20 days for a batch job, it will be stopped on the 7th
    #   day.
    #
    #   For streaming jobs, if you have set up a maintenance window, it will
    #   be restarted during the maintenance window after 7 days.
    #   @return [Integer]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this action.
    #   @return [String]
    #
    # @!attribute [rw] notification_property
    #   Specifies configuration properties of a job run notification.
    #   @return [Types::NotificationProperty]
    #
    # @!attribute [rw] crawler_name
    #   The name of the crawler to be used with this action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Action AWS API Documentation
    #
    class Action < Struct.new(
      :job_name,
      :arguments,
      :timeout,
      :security_configuration,
      :notification_property,
      :crawler_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that groups rows by chosen fields and computes
    # the aggregated value by specified function.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   Specifies the fields and rows to use as inputs for the aggregate
    #   transform.
    #   @return [Array<String>]
    #
    # @!attribute [rw] groups
    #   Specifies the fields to group by.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] aggs
    #   Specifies the aggregate functions to be performed on specified
    #   fields.
    #   @return [Array<Types::AggregateOperation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Aggregate AWS API Documentation
    #
    class Aggregate < Struct.new(
      :name,
      :inputs,
      :groups,
      :aggs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the set of parameters needed to perform aggregation in the
    # aggregate transform.
    #
    # @!attribute [rw] column
    #   Specifies the column on the data set on which the aggregation
    #   function will be applied.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agg_func
    #   Specifies the aggregation function to apply.
    #
    #   Possible aggregation functions include: avg countDistinct, count,
    #   first, last, kurtosis, max, min, skewness, stddev\_samp,
    #   stddev\_pop, sum, sumDistinct, var\_samp, var\_pop
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AggregateOperation AWS API Documentation
    #
    class AggregateOperation < Struct.new(
      :column,
      :agg_func)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a value allowed for a property.
    #
    # @!attribute [rw] description
    #   A description of the allowed value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value allowed for the property.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AllowedValue AWS API Documentation
    #
    class AllowedValue < Struct.new(
      :description,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource to be created or added already exists.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AlreadyExistsException AWS API Documentation
    #
    class AlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an optional value when connecting to the Redshift cluster.
    #
    # @!attribute [rw] key
    #   The key for the additional connection option.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the additional connection option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AmazonRedshiftAdvancedOption AWS API Documentation
    #
    class AmazonRedshiftAdvancedOption < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Amazon Redshift node.
    #
    # @!attribute [rw] access_type
    #   The access type for the Redshift connection. Can be a direct
    #   connection or catalog connections.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The source type to specify whether a specific table is the source or
    #   a custom query.
    #   @return [String]
    #
    # @!attribute [rw] connection
    #   The Glue connection to the Redshift cluster.
    #   @return [Types::Option]
    #
    # @!attribute [rw] schema
    #   The Redshift schema name when working with a direct connection.
    #   @return [Types::Option]
    #
    # @!attribute [rw] table
    #   The Redshift table name when working with a direct connection.
    #   @return [Types::Option]
    #
    # @!attribute [rw] catalog_database
    #   The name of the Glue Data Catalog database when working with a data
    #   catalog.
    #   @return [Types::Option]
    #
    # @!attribute [rw] catalog_table
    #   The Glue Data Catalog table name when working with a data catalog.
    #   @return [Types::Option]
    #
    # @!attribute [rw] catalog_redshift_schema
    #   The Redshift schema name when working with a data catalog.
    #   @return [String]
    #
    # @!attribute [rw] catalog_redshift_table
    #   The database table to read from.
    #   @return [String]
    #
    # @!attribute [rw] temp_dir
    #   The Amazon S3 path where temporary data can be staged when copying
    #   out of the database.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   Optional. The role name use when connection to S3. The IAM role ill
    #   default to the role on the job when left blank.
    #   @return [Types::Option]
    #
    # @!attribute [rw] advanced_options
    #   Optional values when connecting to the Redshift cluster.
    #   @return [Array<Types::AmazonRedshiftAdvancedOption>]
    #
    # @!attribute [rw] sample_query
    #   The SQL used to fetch the data from a Redshift sources when the
    #   SourceType is 'query'.
    #   @return [String]
    #
    # @!attribute [rw] pre_action
    #   The SQL used before a MERGE or APPEND with upsert is run.
    #   @return [String]
    #
    # @!attribute [rw] post_action
    #   The SQL used before a MERGE or APPEND with upsert is run.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Specifies how writing to a Redshift cluser will occur.
    #   @return [String]
    #
    # @!attribute [rw] table_prefix
    #   Specifies the prefix to a table.
    #   @return [String]
    #
    # @!attribute [rw] upsert
    #   The action used on Redshift sinks when doing an APPEND.
    #   @return [Boolean]
    #
    # @!attribute [rw] merge_action
    #   The action used when to detemine how a MERGE in a Redshift sink will
    #   be handled.
    #   @return [String]
    #
    # @!attribute [rw] merge_when_matched
    #   The action used when to detemine how a MERGE in a Redshift sink will
    #   be handled when an existing record matches a new record.
    #   @return [String]
    #
    # @!attribute [rw] merge_when_not_matched
    #   The action used when to detemine how a MERGE in a Redshift sink will
    #   be handled when an existing record doesn't match a new record.
    #   @return [String]
    #
    # @!attribute [rw] merge_clause
    #   The SQL used in a custom merge to deal with matching records.
    #   @return [String]
    #
    # @!attribute [rw] crawler_connection
    #   Specifies the name of the connection that is associated with the
    #   catalog table used.
    #   @return [String]
    #
    # @!attribute [rw] table_schema
    #   The array of schema output for a given node.
    #   @return [Array<Types::Option>]
    #
    # @!attribute [rw] staging_table
    #   The name of the temporary staging table that is used when doing a
    #   MERGE or APPEND with upsert.
    #   @return [String]
    #
    # @!attribute [rw] selected_columns
    #   The list of column names used to determine a matching record when
    #   doing a MERGE or APPEND with upsert.
    #   @return [Array<Types::Option>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AmazonRedshiftNodeData AWS API Documentation
    #
    class AmazonRedshiftNodeData < Struct.new(
      :access_type,
      :source_type,
      :connection,
      :schema,
      :table,
      :catalog_database,
      :catalog_table,
      :catalog_redshift_schema,
      :catalog_redshift_table,
      :temp_dir,
      :iam_role,
      :advanced_options,
      :sample_query,
      :pre_action,
      :post_action,
      :action,
      :table_prefix,
      :upsert,
      :merge_action,
      :merge_when_matched,
      :merge_when_not_matched,
      :merge_clause,
      :crawler_connection,
      :table_schema,
      :staging_table,
      :selected_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Amazon Redshift source.
    #
    # @!attribute [rw] name
    #   The name of the Amazon Redshift source.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Specifies the data of the Amazon Reshift source node.
    #   @return [Types::AmazonRedshiftNodeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AmazonRedshiftSource AWS API Documentation
    #
    class AmazonRedshiftSource < Struct.new(
      :name,
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Amazon Redshift target.
    #
    # @!attribute [rw] name
    #   The name of the Amazon Redshift target.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Specifies the data of the Amazon Redshift target node.
    #   @return [Types::AmazonRedshiftNodeData]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AmazonRedshiftTarget AWS API Documentation
    #
    class AmazonRedshiftTarget < Struct.new(
      :name,
      :data,
      :inputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # A failed annotation.
    #
    # @!attribute [rw] profile_id
    #   The Profile ID for the failed annotation.
    #   @return [String]
    #
    # @!attribute [rw] statistic_id
    #   The Statistic ID for the failed annotation.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason why the annotation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AnnotationError AWS API Documentation
    #
    class AnnotationError < Struct.new(
      :profile_id,
      :statistic_id,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that maps data property keys in the data source
    # to data property keys in the data target. You can rename keys, modify
    # the data types for keys, and choose which keys to drop from the
    # dataset.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] mapping
    #   Specifies the mapping of data property keys in the data source to
    #   data property keys in the data target.
    #   @return [Array<Types::Mapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ApplyMapping AWS API Documentation
    #
    class ApplyMapping < Struct.new(
      :name,
      :inputs,
      :mapping)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a connector to an Amazon Athena data source.
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection that is associated with the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_name
    #   The name of a connector that assists with accessing the data store
    #   in Glue Studio.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection, such as marketplace.athena or custom.athena,
    #   designating a connection to an Amazon Athena data store.
    #   @return [String]
    #
    # @!attribute [rw] connection_table
    #   The name of the table in the data source.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the Cloudwatch log group to read from. For example,
    #   `/aws-glue/jobs/output`.
    #   @return [String]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the custom Athena source.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AthenaConnectorSource AWS API Documentation
    #
    class AthenaConnectorSource < Struct.new(
      :name,
      :connection_name,
      :connector_name,
      :connection_type,
      :connection_table,
      :schema_name,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the Lake Formation audit context.
    #
    # @!attribute [rw] additional_audit_context
    #   A string containing the additional audit context information.
    #   @return [String]
    #
    # @!attribute [rw] requested_columns
    #   The requested columns for audit.
    #   @return [Array<String>]
    #
    # @!attribute [rw] all_columns_requested
    #   All columns request for audit.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AuditContext AWS API Documentation
    #
    class AuditContext < Struct.new(
      :additional_audit_context,
      :requested_columns,
      :all_columns_requested)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authentication configuration for a connection returned by the
    # `DescribeConnectionType` API.
    #
    # @!attribute [rw] authentication_type
    #   The type of authentication for a connection.
    #   @return [Types::Property]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) for the Secrets Manager.
    #   @return [Types::Property]
    #
    # @!attribute [rw] o_auth_2_properties
    #   A map of key-value pairs for the OAuth2 properties. Each value is a
    #   a `Property` object.
    #   @return [Hash<String,Types::Property>]
    #
    # @!attribute [rw] basic_authentication_properties
    #   A map of key-value pairs for the OAuth2 properties. Each value is a
    #   a `Property` object.
    #   @return [Hash<String,Types::Property>]
    #
    # @!attribute [rw] custom_authentication_properties
    #   A map of key-value pairs for the custom authentication properties.
    #   Each value is a a `Property` object.
    #   @return [Hash<String,Types::Property>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AuthConfiguration AWS API Documentation
    #
    class AuthConfiguration < Struct.new(
      :authentication_type,
      :secret_arn,
      :o_auth_2_properties,
      :basic_authentication_properties,
      :custom_authentication_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the authentication configuration.
    #
    # @!attribute [rw] authentication_type
    #   A structure containing the authentication configuration.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The secret manager ARN to store credentials.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_2_properties
    #   The properties for OAuth2 authentication.
    #   @return [Types::OAuth2Properties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AuthenticationConfiguration AWS API Documentation
    #
    class AuthenticationConfiguration < Struct.new(
      :authentication_type,
      :secret_arn,
      :o_auth_2_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the authentication configuration in the
    # CreateConnection request.
    #
    # @!attribute [rw] authentication_type
    #   A structure containing the authentication configuration in the
    #   CreateConnection request.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_2_properties
    #   The properties for OAuth2 authentication in the CreateConnection
    #   request.
    #   @return [Types::OAuth2PropertiesInput]
    #
    # @!attribute [rw] secret_arn
    #   The secret manager ARN to store credentials in the CreateConnection
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key used to encrypt the connection. Only taken an
    #   as input in the request and stored in the Secret Manager.
    #   @return [String]
    #
    # @!attribute [rw] basic_authentication_credentials
    #   The credentials used when the authentication type is basic
    #   authentication.
    #   @return [Types::BasicAuthenticationCredentials]
    #
    # @!attribute [rw] custom_authentication_credentials
    #   The credentials used when the authentication type is custom
    #   authentication.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AuthenticationConfigurationInput AWS API Documentation
    #
    class AuthenticationConfigurationInput < Struct.new(
      :authentication_type,
      :o_auth_2_properties,
      :secret_arn,
      :kms_key_arn,
      :basic_authentication_credentials,
      :custom_authentication_credentials)
      SENSITIVE = [:custom_authentication_credentials]
      include Aws::Structure
    end

    # The set of properties required for the the OAuth2 `AUTHORIZATION_CODE`
    # grant type workflow.
    #
    # @!attribute [rw] authorization_code
    #   An authorization code to be used in the third leg of the
    #   `AUTHORIZATION_CODE` grant workflow. This is a single-use code which
    #   becomes invalid once exchanged for an access token, thus it is
    #   acceptable to have this value as a request parameter.
    #   @return [String]
    #
    # @!attribute [rw] redirect_uri
    #   The redirect URI where the user gets redirected to by authorization
    #   server when issuing an authorization code. The URI is subsequently
    #   used when the authorization code is exchanged for an access token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AuthorizationCodeProperties AWS API Documentation
    #
    class AuthorizationCodeProperties < Struct.new(
      :authorization_code,
      :redirect_uri)
      SENSITIVE = [:authorization_code]
      include Aws::Structure
    end

    # A list of errors that can occur when registering partition indexes for
    # an existing table.
    #
    # These errors give the details about why an index registration failed
    # and provide a limited number of partitions in the response, so that
    # you can fix the partitions at fault and try registering the index
    # again. The most common set of errors that can occur are categorized as
    # follows:
    #
    # * EncryptedPartitionError: The partitions are encrypted.
    #
    # * InvalidPartitionTypeDataError: The partition value doesn't match
    #   the data type for that partition column.
    #
    # * MissingPartitionValueError: The partitions are encrypted.
    #
    # * UnsupportedPartitionCharacterError: Characters inside the partition
    #   value are not supported. For example: U+0000 , U+0001, U+0002.
    #
    # * InternalError: Any error which does not belong to other error codes.
    #
    # @!attribute [rw] code
    #   The error code for an error that occurred when registering partition
    #   indexes for an existing table.
    #   @return [String]
    #
    # @!attribute [rw] partitions
    #   A list of a limited number of partitions in the response.
    #   @return [Array<Types::PartitionValueList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BackfillError AWS API Documentation
    #
    class BackfillError < Struct.new(
      :code,
      :partitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # For supplying basic auth credentials when not providing a `SecretArn`
    # value.
    #
    # @!attribute [rw] username
    #   The username to connect to the data source.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password to connect to the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BasicAuthenticationCredentials AWS API Documentation
    #
    class BasicAuthenticationCredentials < Struct.new(
      :username,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Specifies a target that uses a Glue Data Catalog table.
    #
    # @!attribute [rw] name
    #   The name of your data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_keys
    #   The partition keys used to distribute data across multiple
    #   partitions or shards based on a specific key or set of key.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] database
    #   The database that contains the table you want to use as the target.
    #   This database must already exist in the Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The table that defines the schema of your output data. This table
    #   must already exist in the Data Catalog.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BasicCatalogTarget AWS API Documentation
    #
    class BasicCatalogTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :database,
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the catalog in which the partition is to be created.
    #   Currently, this should be the Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the metadata database in which the partition is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the metadata table in which the partition is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] partition_input_list
    #   A list of `PartitionInput` structures that define the partitions to
    #   be created.
    #   @return [Array<Types::PartitionInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchCreatePartitionRequest AWS API Documentation
    #
    class BatchCreatePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_input_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   The errors encountered when trying to create the requested
    #   partitions.
    #   @return [Array<Types::PartitionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchCreatePartitionResponse AWS API Documentation
    #
    class BatchCreatePartitionResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connections reside. If none
    #   is provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] connection_name_list
    #   A list of names of the connections to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteConnectionRequest AWS API Documentation
    #
    class BatchDeleteConnectionRequest < Struct.new(
      :catalog_id,
      :connection_name_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] succeeded
    #   A list of names of the connection definitions that were successfully
    #   deleted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   A map of the names of connections that were not successfully deleted
    #   to error details.
    #   @return [Hash<String,Types::ErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteConnectionResponse AWS API Documentation
    #
    class BatchDeleteConnectionResponse < Struct.new(
      :succeeded,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partition to be deleted
    #   resides. If none is provided, the Amazon Web Services account ID is
    #   used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table that contains the partitions to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] partitions_to_delete
    #   A list of `PartitionInput` structures that define the partitions to
    #   be deleted.
    #   @return [Array<Types::PartitionValueList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeletePartitionRequest AWS API Documentation
    #
    class BatchDeletePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partitions_to_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   The errors encountered when trying to delete the requested
    #   partitions.
    #   @return [Array<Types::PartitionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeletePartitionResponse AWS API Documentation
    #
    class BatchDeletePartitionResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the tables to delete
    #   reside. For Hive compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] tables_to_delete
    #   A list of the table to delete.
    #   @return [Array<String>]
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID at which to delete the table contents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTableRequest AWS API Documentation
    #
    class BatchDeleteTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :tables_to_delete,
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of errors encountered in attempting to delete the specified
    #   tables.
    #   @return [Array<Types::TableError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTableResponse AWS API Documentation
    #
    class BatchDeleteTableResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #   @return [String]
    #
    # @!attribute [rw] version_ids
    #   A list of the IDs of versions to be deleted. A `VersionId` is a
    #   string representation of an integer. Each version is incremented by
    #   1.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTableVersionRequest AWS API Documentation
    #
    class BatchDeleteTableVersionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :version_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of errors encountered while trying to delete the specified
    #   table versions.
    #   @return [Array<Types::TableVersionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTableVersionResponse AWS API Documentation
    #
    class BatchDeleteTableVersionResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] names
    #   A list of blueprint names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_blueprint
    #   Specifies whether or not to include the blueprint in the response.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_parameter_spec
    #   Specifies whether or not to include the parameters, as a JSON
    #   string, for the blueprint in the response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetBlueprintsRequest AWS API Documentation
    #
    class BatchGetBlueprintsRequest < Struct.new(
      :names,
      :include_blueprint,
      :include_parameter_spec)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprints
    #   Returns a list of blueprint as a `Blueprints` object.
    #   @return [Array<Types::Blueprint>]
    #
    # @!attribute [rw] missing_blueprints
    #   Returns a list of `BlueprintNames` that were not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetBlueprintsResponse AWS API Documentation
    #
    class BatchGetBlueprintsResponse < Struct.new(
      :blueprints,
      :missing_blueprints)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] crawler_names
    #   A list of crawler names, which might be the names returned from the
    #   `ListCrawlers` operation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetCrawlersRequest AWS API Documentation
    #
    class BatchGetCrawlersRequest < Struct.new(
      :crawler_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] crawlers
    #   A list of crawler definitions.
    #   @return [Array<Types::Crawler>]
    #
    # @!attribute [rw] crawlers_not_found
    #   A list of names of crawlers that were not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetCrawlersResponse AWS API Documentation
    #
    class BatchGetCrawlersResponse < Struct.new(
      :crawlers,
      :crawlers_not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] names
    #   A list of names of the custom patterns that you want to retrieve.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetCustomEntityTypesRequest AWS API Documentation
    #
    class BatchGetCustomEntityTypesRequest < Struct.new(
      :names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_entity_types
    #   A list of `CustomEntityType` objects representing the custom
    #   patterns that have been created.
    #   @return [Array<Types::CustomEntityType>]
    #
    # @!attribute [rw] custom_entity_types_not_found
    #   A list of the names of custom patterns that were not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetCustomEntityTypesResponse AWS API Documentation
    #
    class BatchGetCustomEntityTypesResponse < Struct.new(
      :custom_entity_types,
      :custom_entity_types_not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] result_ids
    #   A list of unique result IDs for the data quality results.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetDataQualityResultRequest AWS API Documentation
    #
    class BatchGetDataQualityResultRequest < Struct.new(
      :result_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   A list of `DataQualityResult` objects representing the data quality
    #   results.
    #   @return [Array<Types::DataQualityResult>]
    #
    # @!attribute [rw] results_not_found
    #   A list of result IDs for which results were not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetDataQualityResultResponse AWS API Documentation
    #
    class BatchGetDataQualityResultResponse < Struct.new(
      :results,
      :results_not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dev_endpoint_names
    #   The list of `DevEndpoint` names, which might be the names returned
    #   from the `ListDevEndpoint` operation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetDevEndpointsRequest AWS API Documentation
    #
    class BatchGetDevEndpointsRequest < Struct.new(
      :dev_endpoint_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dev_endpoints
    #   A list of `DevEndpoint` definitions.
    #   @return [Array<Types::DevEndpoint>]
    #
    # @!attribute [rw] dev_endpoints_not_found
    #   A list of `DevEndpoints` not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetDevEndpointsResponse AWS API Documentation
    #
    class BatchGetDevEndpointsResponse < Struct.new(
      :dev_endpoints,
      :dev_endpoints_not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_names
    #   A list of job names, which might be the names returned from the
    #   `ListJobs` operation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetJobsRequest AWS API Documentation
    #
    class BatchGetJobsRequest < Struct.new(
      :job_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of job definitions.
    #   @return [Array<Types::Job>]
    #
    # @!attribute [rw] jobs_not_found
    #   A list of names of jobs not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetJobsResponse AWS API Documentation
    #
    class BatchGetJobsResponse < Struct.new(
      :jobs,
      :jobs_not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partitions in question reside.
    #   If none is supplied, the Amazon Web Services account ID is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partitions reside.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partitions' table.
    #   @return [String]
    #
    # @!attribute [rw] partitions_to_get
    #   A list of partition values identifying the partitions to retrieve.
    #   @return [Array<Types::PartitionValueList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetPartitionRequest AWS API Documentation
    #
    class BatchGetPartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partitions_to_get)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partitions
    #   A list of the requested partitions.
    #   @return [Array<Types::Partition>]
    #
    # @!attribute [rw] unprocessed_keys
    #   A list of the partition values in the request for which partitions
    #   were not returned.
    #   @return [Array<Types::PartitionValueList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetPartitionResponse AWS API Documentation
    #
    class BatchGetPartitionResponse < Struct.new(
      :partitions,
      :unprocessed_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a table optimizer to retrieve in the
    # `BatchGetTableOptimizer` operation.
    #
    # @!attribute [rw] catalog_id
    #   The Catalog ID of the table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database in the catalog in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of table optimizer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetTableOptimizerEntry AWS API Documentation
    #
    class BatchGetTableOptimizerEntry < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details on one of the errors in the error list returned by
    # the `BatchGetTableOptimizer` operation.
    #
    # @!attribute [rw] error
    #   An `ErrorDetail` object containing code and message details about
    #   the error.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] catalog_id
    #   The Catalog ID of the table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database in the catalog in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of table optimizer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetTableOptimizerError AWS API Documentation
    #
    class BatchGetTableOptimizerError < Struct.new(
      :error,
      :catalog_id,
      :database_name,
      :table_name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   A list of `BatchGetTableOptimizerEntry` objects specifying the table
    #   optimizers to retrieve.
    #   @return [Array<Types::BatchGetTableOptimizerEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetTableOptimizerRequest AWS API Documentation
    #
    class BatchGetTableOptimizerRequest < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_optimizers
    #   A list of `BatchTableOptimizer` objects.
    #   @return [Array<Types::BatchTableOptimizer>]
    #
    # @!attribute [rw] failures
    #   A list of errors from the operation.
    #   @return [Array<Types::BatchGetTableOptimizerError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetTableOptimizerResponse AWS API Documentation
    #
    class BatchGetTableOptimizerResponse < Struct.new(
      :table_optimizers,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trigger_names
    #   A list of trigger names, which may be the names returned from the
    #   `ListTriggers` operation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetTriggersRequest AWS API Documentation
    #
    class BatchGetTriggersRequest < Struct.new(
      :trigger_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] triggers
    #   A list of trigger definitions.
    #   @return [Array<Types::Trigger>]
    #
    # @!attribute [rw] triggers_not_found
    #   A list of names of triggers not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetTriggersResponse AWS API Documentation
    #
    class BatchGetTriggersResponse < Struct.new(
      :triggers,
      :triggers_not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] names
    #   A list of workflow names, which may be the names returned from the
    #   `ListWorkflows` operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_graph
    #   Specifies whether to include a graph when returning the workflow
    #   resource metadata.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetWorkflowsRequest AWS API Documentation
    #
    class BatchGetWorkflowsRequest < Struct.new(
      :names,
      :include_graph)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflows
    #   A list of workflow resource metadata.
    #   @return [Array<Types::Workflow>]
    #
    # @!attribute [rw] missing_workflows
    #   A list of names of workflows not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetWorkflowsResponse AWS API Documentation
    #
    class BatchGetWorkflowsResponse < Struct.new(
      :workflows,
      :missing_workflows)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] inclusion_annotations
    #   A list of `DatapointInclusionAnnotation`'s.
    #   @return [Array<Types::DatapointInclusionAnnotation>]
    #
    # @!attribute [rw] client_token
    #   Client Token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchPutDataQualityStatisticAnnotationRequest AWS API Documentation
    #
    class BatchPutDataQualityStatisticAnnotationRequest < Struct.new(
      :inclusion_annotations,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_inclusion_annotations
    #   A list of `AnnotationError`'s.
    #   @return [Array<Types::AnnotationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchPutDataQualityStatisticAnnotationResponse AWS API Documentation
    #
    class BatchPutDataQualityStatisticAnnotationResponse < Struct.new(
      :failed_inclusion_annotations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Records an error that occurred when attempting to stop a specified job
    # run.
    #
    # @!attribute [rw] job_name
    #   The name of the job definition that is used in the job run in
    #   question.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The `JobRunId` of the job run in question.
    #   @return [String]
    #
    # @!attribute [rw] error_detail
    #   Specifies details about the error that was encountered.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchStopJobRunError AWS API Documentation
    #
    class BatchStopJobRunError < Struct.new(
      :job_name,
      :job_run_id,
      :error_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the job definition for which to stop job runs.
    #   @return [String]
    #
    # @!attribute [rw] job_run_ids
    #   A list of the `JobRunIds` that should be stopped for that job
    #   definition.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchStopJobRunRequest AWS API Documentation
    #
    class BatchStopJobRunRequest < Struct.new(
      :job_name,
      :job_run_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful_submissions
    #   A list of the JobRuns that were successfully submitted for stopping.
    #   @return [Array<Types::BatchStopJobRunSuccessfulSubmission>]
    #
    # @!attribute [rw] errors
    #   A list of the errors that were encountered in trying to stop
    #   `JobRuns`, including the `JobRunId` for which each error was
    #   encountered and details about the error.
    #   @return [Array<Types::BatchStopJobRunError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchStopJobRunResponse AWS API Documentation
    #
    class BatchStopJobRunResponse < Struct.new(
      :successful_submissions,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Records a successful request to stop a specified `JobRun`.
    #
    # @!attribute [rw] job_name
    #   The name of the job definition used in the job run that was stopped.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The `JobRunId` of the job run that was stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchStopJobRunSuccessfulSubmission AWS API Documentation
    #
    class BatchStopJobRunSuccessfulSubmission < Struct.new(
      :job_name,
      :job_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details for one of the table optimizers returned by the
    # `BatchGetTableOptimizer` operation.
    #
    # @!attribute [rw] catalog_id
    #   The Catalog ID of the table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database in the catalog in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_optimizer
    #   A `TableOptimizer` object that contains details on the configuration
    #   and last run of a table optimizer.
    #   @return [Types::TableOptimizer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchTableOptimizer AWS API Documentation
    #
    class BatchTableOptimizer < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :table_optimizer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a batch update partition error.
    #
    # @!attribute [rw] partition_value_list
    #   A list of values defining the partitions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] error_detail
    #   The details about the batch update partition error.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchUpdatePartitionFailureEntry AWS API Documentation
    #
    class BatchUpdatePartitionFailureEntry < Struct.new(
      :partition_value_list,
      :error_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the catalog in which the partition is to be updated.
    #   Currently, this should be the Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the metadata database in which the partition is to be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the metadata table in which the partition is to be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   A list of up to 100 `BatchUpdatePartitionRequestEntry` objects to
    #   update.
    #   @return [Array<Types::BatchUpdatePartitionRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchUpdatePartitionRequest AWS API Documentation
    #
    class BatchUpdatePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the values and structure used to update a
    # partition.
    #
    # @!attribute [rw] partition_value_list
    #   A list of values defining the partitions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_input
    #   The structure used to update a partition.
    #   @return [Types::PartitionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchUpdatePartitionRequestEntry AWS API Documentation
    #
    class BatchUpdatePartitionRequestEntry < Struct.new(
      :partition_value_list,
      :partition_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   The errors encountered when trying to update the requested
    #   partitions. A list of `BatchUpdatePartitionFailureEntry` objects.
    #   @return [Array<Types::BatchUpdatePartitionFailureEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchUpdatePartitionResponse AWS API Documentation
    #
    class BatchUpdatePartitionResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines column statistics supported for bit sequence data values.
    #
    # @!attribute [rw] maximum_length
    #   The size of the longest bit sequence in the column.
    #   @return [Integer]
    #
    # @!attribute [rw] average_length
    #   The average bit sequence length in the column.
    #   @return [Float]
    #
    # @!attribute [rw] number_of_nulls
    #   The number of null values in the column.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BinaryColumnStatisticsData AWS API Documentation
    #
    class BinaryColumnStatisticsData < Struct.new(
      :maximum_length,
      :average_length,
      :number_of_nulls)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a blueprint.
    #
    # @!attribute [rw] name
    #   The name of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] created_on
    #   The date and time the blueprint was registered.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The date and time the blueprint was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] parameter_spec
    #   A JSON string that indicates the list of parameter specifications
    #   for the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_location
    #   Specifies the path in Amazon S3 where the blueprint is published.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_service_location
    #   Specifies a path in Amazon S3 where the blueprint is copied when you
    #   call `CreateBlueprint/UpdateBlueprint` to register the blueprint in
    #   Glue.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the blueprint registration.
    #
    #   * Creating — The blueprint registration is in progress.
    #
    #   * Active — The blueprint has been successfully registered.
    #
    #   * Updating — An update to the blueprint registration is in progress.
    #
    #   * Failed — The blueprint registration failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message.
    #   @return [String]
    #
    # @!attribute [rw] last_active_definition
    #   When there are multiple versions of a blueprint and the latest
    #   version has some errors, this attribute indicates the last
    #   successful blueprint definition that is available with the service.
    #   @return [Types::LastActiveDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Blueprint AWS API Documentation
    #
    class Blueprint < Struct.new(
      :name,
      :description,
      :created_on,
      :last_modified_on,
      :parameter_spec,
      :blueprint_location,
      :blueprint_service_location,
      :status,
      :error_message,
      :last_active_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a blueprint.
    #
    # @!attribute [rw] blueprint_name
    #   The name of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The run ID for this blueprint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BlueprintDetails AWS API Documentation
    #
    class BlueprintDetails < Struct.new(
      :blueprint_name,
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a blueprint run.
    #
    # @!attribute [rw] blueprint_name
    #   The name of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The run ID for this blueprint run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of a workflow that is created as a result of a successful
    #   blueprint run. If a blueprint run has an error, there will not be a
    #   workflow created.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the blueprint run. Possible values are:
    #
    #   * Running — The blueprint run is in progress.
    #
    #   * Succeeded — The blueprint run completed successfully.
    #
    #   * Failed — The blueprint run failed and rollback is complete.
    #
    #   * Rolling Back — The blueprint run failed and rollback is in
    #     progress.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time that the blueprint run started.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The date and time that the blueprint run completed.
    #   @return [Time]
    #
    # @!attribute [rw] error_message
    #   Indicates any errors that are seen while running the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] rollback_error_message
    #   If there are any errors while creating the entities of a workflow,
    #   we try to roll back the created entities until that point and delete
    #   them. This attribute indicates the errors seen while trying to
    #   delete the entities that are created.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The blueprint parameters as a string. You will have to provide a
    #   value for each key that is required from the parameter spec that is
    #   defined in the `Blueprint$ParameterSpec`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role ARN. This role will be assumed by the Glue service and will
    #   be used to create the workflow and other entities of a workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BlueprintRun AWS API Documentation
    #
    class BlueprintRun < Struct.new(
      :blueprint_name,
      :run_id,
      :workflow_name,
      :state,
      :started_on,
      :completed_on,
      :error_message,
      :rollback_error_message,
      :parameters,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines column statistics supported for Boolean data columns.
    #
    # @!attribute [rw] number_of_trues
    #   The number of true values in the column.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_falses
    #   The number of false values in the column.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_nulls
    #   The number of null values in the column.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BooleanColumnStatisticsData AWS API Documentation
    #
    class BooleanColumnStatisticsData < Struct.new(
      :number_of_trues,
      :number_of_falses,
      :number_of_nulls)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] run_id
    #   The unique run identifier associated with this run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelDataQualityRuleRecommendationRunRequest AWS API Documentation
    #
    class CancelDataQualityRuleRecommendationRunRequest < Struct.new(
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelDataQualityRuleRecommendationRunResponse AWS API Documentation
    #
    class CancelDataQualityRuleRecommendationRunResponse < Aws::EmptyStructure; end

    # @!attribute [rw] run_id
    #   The unique run identifier associated with this run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelDataQualityRulesetEvaluationRunRequest AWS API Documentation
    #
    class CancelDataQualityRulesetEvaluationRunRequest < Struct.new(
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelDataQualityRulesetEvaluationRunResponse AWS API Documentation
    #
    class CancelDataQualityRulesetEvaluationRunResponse < Aws::EmptyStructure; end

    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] task_run_id
    #   A unique identifier for the task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelMLTaskRunRequest AWS API Documentation
    #
    class CancelMLTaskRunRequest < Struct.new(
      :transform_id,
      :task_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] task_run_id
    #   The unique identifier for the task run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for this run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelMLTaskRunResponse AWS API Documentation
    #
    class CancelMLTaskRunResponse < Struct.new(
      :transform_id,
      :task_run_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The Session ID of the statement to be cancelled.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the statement to be cancelled.
    #   @return [Integer]
    #
    # @!attribute [rw] request_origin
    #   The origin of the request to cancel the statement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelStatementRequest AWS API Documentation
    #
    class CancelStatementRequest < Struct.new(
      :session_id,
      :id,
      :request_origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelStatementResponse AWS API Documentation
    #
    class CancelStatementResponse < Aws::EmptyStructure; end

    # Specifies the supported authentication types returned by the
    # `DescribeConnectionType` API.
    #
    # @!attribute [rw] supported_authentication_types
    #   A list of supported authentication types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_data_operations
    #   A list of supported data operations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_compute_environments
    #   A list of supported compute environments.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Capabilities AWS API Documentation
    #
    class Capabilities < Struct.new(
      :supported_authentication_types,
      :supported_data_operations,
      :supported_compute_environments)
      SENSITIVE = []
      include Aws::Structure
    end

    # The catalog object represents a logical grouping of databases in the
    # Glue Data Catalog or a federated source. You can now create a
    # Redshift-federated catalog or a catalog containing resource links to
    # Redshift databases in another account or region.
    #
    # @!attribute [rw] catalog_id
    #   The ID of the catalog. To grant access to the default catalog, this
    #   field should not be provided.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the catalog. Cannot be the same as the account ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) assigned to the catalog resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description string, not more than 2048 bytes long, matching the URI
    #   address multi-line string pattern. A description of the catalog.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A map array of key-value pairs that define parameters and properties
    #   of the catalog.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] create_time
    #   The time at which the catalog was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time at which the catalog was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] target_redshift_catalog
    #   A `TargetRedshiftCatalog` object that describes a target catalog for
    #   database resource linking.
    #   @return [Types::TargetRedshiftCatalog]
    #
    # @!attribute [rw] federated_catalog
    #   A `FederatedCatalog` object that points to an entity outside the
    #   Glue Data Catalog.
    #   @return [Types::FederatedCatalog]
    #
    # @!attribute [rw] catalog_properties
    #   A `CatalogProperties` object that specifies data lake access
    #   properties and other custom properties.
    #   @return [Types::CatalogPropertiesOutput]
    #
    # @!attribute [rw] create_table_default_permissions
    #   An array of `PrincipalPermissions` objects. Creates a set of default
    #   permissions on the table(s) for principals. Used by Amazon Web
    #   Services Lake Formation. Not used in the normal course of Glue
    #   operations.
    #   @return [Array<Types::PrincipalPermissions>]
    #
    # @!attribute [rw] create_database_default_permissions
    #   An array of `PrincipalPermissions` objects. Creates a set of default
    #   permissions on the database(s) for principals. Used by Amazon Web
    #   Services Lake Formation. Not used in the normal course of Glue
    #   operations.
    #   @return [Array<Types::PrincipalPermissions>]
    #
    # @!attribute [rw] allow_full_table_external_data_access
    #   Allows third-party engines to access data in Amazon S3 locations
    #   that are registered with Lake Formation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Catalog AWS API Documentation
    #
    class Catalog < Struct.new(
      :catalog_id,
      :name,
      :resource_arn,
      :description,
      :parameters,
      :create_time,
      :update_time,
      :target_redshift_catalog,
      :federated_catalog,
      :catalog_properties,
      :create_table_default_permissions,
      :create_database_default_permissions,
      :allow_full_table_external_data_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a Delta Lake data source that is registered in the Glue Data
    # Catalog.
    #
    # @!attribute [rw] name
    #   The name of the Delta Lake data source.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] additional_delta_options
    #   Specifies additional connection options.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the Delta Lake source.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogDeltaSource AWS API Documentation
    #
    class CatalogDeltaSource < Struct.new(
      :name,
      :database,
      :table,
      :additional_delta_options,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a table definition in the Glue Data Catalog.
    #
    # @!attribute [rw] database_name
    #   The database in which the table metadata resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table in question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogEntry AWS API Documentation
    #
    class CatalogEntry < Struct.new(
      :database_name,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a Hudi data source that is registered in the Glue Data
    # Catalog.
    #
    # @!attribute [rw] name
    #   The name of the Hudi data source.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] additional_hudi_options
    #   Specifies additional connection options.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the Hudi source.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogHudiSource AWS API Documentation
    #
    class CatalogHudiSource < Struct.new(
      :name,
      :database,
      :table,
      :additional_hudi_options,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing migration status information.
    #
    # @!attribute [rw] import_completed
    #   `True` if the migration has completed, or `False` otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] import_time
    #   The time that the migration was started.
    #   @return [Time]
    #
    # @!attribute [rw] imported_by
    #   The name of the person who initiated the migration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogImportStatus AWS API Documentation
    #
    class CatalogImportStatus < Struct.new(
      :import_completed,
      :import_time,
      :imported_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes catalog properties.
    #
    # @!attribute [rw] description
    #   Description string, not more than 2048 bytes long, matching the URI
    #   address multi-line string pattern. A description of the catalog.
    #   @return [String]
    #
    # @!attribute [rw] federated_catalog
    #   A `FederatedCatalog` object. A `FederatedCatalog` structure that
    #   references an entity outside the Glue Data Catalog, for example a
    #   Redshift database.
    #   @return [Types::FederatedCatalog]
    #
    # @!attribute [rw] parameters
    #   A map array of key-value pairs that define the parameters and
    #   properties of the catalog.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] target_redshift_catalog
    #   A `TargetRedshiftCatalog` object that describes a target catalog for
    #   resource linking.
    #   @return [Types::TargetRedshiftCatalog]
    #
    # @!attribute [rw] catalog_properties
    #   A `CatalogProperties` object that specifies data lake access
    #   properties and other custom properties.
    #   @return [Types::CatalogProperties]
    #
    # @!attribute [rw] create_table_default_permissions
    #   An array of `PrincipalPermissions` objects. Creates a set of default
    #   permissions on the table(s) for principals. Used by Amazon Web
    #   Services Lake Formation. Typically should be explicitly set as an
    #   empty list.
    #   @return [Array<Types::PrincipalPermissions>]
    #
    # @!attribute [rw] create_database_default_permissions
    #   An array of `PrincipalPermissions` objects. Creates a set of default
    #   permissions on the database(s) for principals. Used by Amazon Web
    #   Services Lake Formation. Typically should be explicitly set as an
    #   empty list.
    #   @return [Array<Types::PrincipalPermissions>]
    #
    # @!attribute [rw] allow_full_table_external_data_access
    #   Allows third-party engines to access data in Amazon S3 locations
    #   that are registered with Lake Formation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogInput AWS API Documentation
    #
    class CatalogInput < Struct.new(
      :description,
      :federated_catalog,
      :parameters,
      :target_redshift_catalog,
      :catalog_properties,
      :create_table_default_permissions,
      :create_database_default_permissions,
      :allow_full_table_external_data_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Apache Kafka data store in the Data Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data store.
    #   @return [String]
    #
    # @!attribute [rw] window_size
    #   The amount of time to spend processing each micro batch.
    #   @return [Integer]
    #
    # @!attribute [rw] detect_schema
    #   Whether to automatically determine the schema from the incoming
    #   data.
    #   @return [Boolean]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] streaming_options
    #   Specifies the streaming options.
    #   @return [Types::KafkaStreamingSourceOptions]
    #
    # @!attribute [rw] data_preview_options
    #   Specifies options related to data preview for viewing a sample of
    #   your data.
    #   @return [Types::StreamingDataPreviewOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogKafkaSource AWS API Documentation
    #
    class CatalogKafkaSource < Struct.new(
      :name,
      :window_size,
      :detect_schema,
      :table,
      :database,
      :streaming_options,
      :data_preview_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a Kinesis data source in the Glue Data Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] window_size
    #   The amount of time to spend processing each micro batch.
    #   @return [Integer]
    #
    # @!attribute [rw] detect_schema
    #   Whether to automatically determine the schema from the incoming
    #   data.
    #   @return [Boolean]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] streaming_options
    #   Additional options for the Kinesis streaming data source.
    #   @return [Types::KinesisStreamingSourceOptions]
    #
    # @!attribute [rw] data_preview_options
    #   Additional options for data preview.
    #   @return [Types::StreamingDataPreviewOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogKinesisSource AWS API Documentation
    #
    class CatalogKinesisSource < Struct.new(
      :name,
      :window_size,
      :detect_schema,
      :table,
      :database,
      :streaming_options,
      :data_preview_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that specifies data lake access properties and other
    # custom properties.
    #
    # @!attribute [rw] data_lake_access_properties
    #   A `DataLakeAccessProperties` object that specifies properties to
    #   configure data lake access for your catalog resource in the Glue
    #   Data Catalog.
    #   @return [Types::DataLakeAccessProperties]
    #
    # @!attribute [rw] custom_properties
    #   Additional key-value properties for the catalog, such as column
    #   statistics optimizations.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogProperties AWS API Documentation
    #
    class CatalogProperties < Struct.new(
      :data_lake_access_properties,
      :custom_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Property attributes that include configuration properties for the
    # catalog resource.
    #
    # @!attribute [rw] data_lake_access_properties
    #   A `DataLakeAccessProperties` object with input properties to
    #   configure data lake access for your catalog resource in the Glue
    #   Data Catalog.
    #   @return [Types::DataLakeAccessPropertiesOutput]
    #
    # @!attribute [rw] custom_properties
    #   Additional key-value properties for the catalog, such as column
    #   statistics optimizations.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogPropertiesOutput AWS API Documentation
    #
    class CatalogPropertiesOutput < Struct.new(
      :data_lake_access_properties,
      :custom_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # A policy that specifies update behavior for the crawler.
    #
    # @!attribute [rw] enable_update_catalog
    #   Whether to use the specified update behavior when the crawler finds
    #   a changed schema.
    #   @return [Boolean]
    #
    # @!attribute [rw] update_behavior
    #   The update behavior when the crawler finds a changed schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogSchemaChangePolicy AWS API Documentation
    #
    class CatalogSchemaChangePolicy < Struct.new(
      :enable_update_catalog,
      :update_behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a data store in the Glue Data Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data store.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to read from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogSource AWS API Documentation
    #
    class CatalogSource < Struct.new(
      :name,
      :database,
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Glue Data Catalog target.
    #
    # @!attribute [rw] database_name
    #   The name of the database to be synchronized.
    #   @return [String]
    #
    # @!attribute [rw] tables
    #   A list of the tables to be synchronized.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection for an Amazon S3-backed Data Catalog
    #   table to be a target of the crawl when using a `Catalog` connection
    #   type paired with a `NETWORK` Connection type.
    #   @return [String]
    #
    # @!attribute [rw] event_queue_arn
    #   A valid Amazon SQS ARN. For example,
    #   `arn:aws:sqs:region:account:sqs`.
    #   @return [String]
    #
    # @!attribute [rw] dlq_event_queue_arn
    #   A valid Amazon dead-letter SQS ARN. For example,
    #   `arn:aws:sqs:region:account:deadLetterQueue`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogTarget AWS API Documentation
    #
    class CatalogTarget < Struct.new(
      :database_name,
      :tables,
      :connection_name,
      :event_queue_arn,
      :dlq_event_queue_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_format
    #   The data format of the schema definition. Currently `AVRO`, `JSON`
    #   and `PROTOBUF` are supported.
    #   @return [String]
    #
    # @!attribute [rw] schema_definition
    #   The definition of the schema that has to be validated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CheckSchemaVersionValidityInput AWS API Documentation
    #
    class CheckSchemaVersionValidityInput < Struct.new(
      :data_format,
      :schema_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] valid
    #   Return true, if the schema is valid and false otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] error
    #   A validation failure error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CheckSchemaVersionValidityResponse AWS API Documentation
    #
    class CheckSchemaVersionValidityResponse < Struct.new(
      :valid,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Classifiers are triggered during a crawl task. A classifier checks
    # whether a given file is in a format it can handle. If it is, the
    # classifier creates a schema in the form of a `StructType` object that
    # matches that data format.
    #
    # You can use the standard classifiers that Glue provides, or you can
    # write your own classifiers to best categorize your data sources and
    # specify the appropriate schemas to use for them. A classifier can be a
    # `grok` classifier, an `XML` classifier, a `JSON` classifier, or a
    # custom `CSV` classifier, as specified in one of the fields in the
    # `Classifier` object.
    #
    # @!attribute [rw] grok_classifier
    #   A classifier that uses `grok`.
    #   @return [Types::GrokClassifier]
    #
    # @!attribute [rw] xml_classifier
    #   A classifier for XML content.
    #   @return [Types::XMLClassifier]
    #
    # @!attribute [rw] json_classifier
    #   A classifier for JSON content.
    #   @return [Types::JsonClassifier]
    #
    # @!attribute [rw] csv_classifier
    #   A classifier for comma-separated values (CSV).
    #   @return [Types::CsvClassifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Classifier AWS API Documentation
    #
    class Classifier < Struct.new(
      :grok_classifier,
      :xml_classifier,
      :json_classifier,
      :csv_classifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how Amazon CloudWatch data should be encrypted.
    #
    # @!attribute [rw] cloud_watch_encryption_mode
    #   The encryption mode to use for CloudWatch data.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to be used to encrypt
    #   the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CloudWatchEncryption AWS API Documentation
    #
    class CloudWatchEncryption < Struct.new(
      :cloud_watch_encryption_mode,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # `CodeGenConfigurationNode` enumerates all valid Node types. One and
    # only one of its member variables can be populated.
    #
    # @!attribute [rw] athena_connector_source
    #   Specifies a connector to an Amazon Athena data source.
    #   @return [Types::AthenaConnectorSource]
    #
    # @!attribute [rw] jdbc_connector_source
    #   Specifies a connector to a JDBC data source.
    #   @return [Types::JDBCConnectorSource]
    #
    # @!attribute [rw] spark_connector_source
    #   Specifies a connector to an Apache Spark data source.
    #   @return [Types::SparkConnectorSource]
    #
    # @!attribute [rw] catalog_source
    #   Specifies a data store in the Glue Data Catalog.
    #   @return [Types::CatalogSource]
    #
    # @!attribute [rw] redshift_source
    #   Specifies an Amazon Redshift data store.
    #   @return [Types::RedshiftSource]
    #
    # @!attribute [rw] s3_catalog_source
    #   Specifies an Amazon S3 data store in the Glue Data Catalog.
    #   @return [Types::S3CatalogSource]
    #
    # @!attribute [rw] s3_csv_source
    #   Specifies a command-separated value (CSV) data store stored in
    #   Amazon S3.
    #   @return [Types::S3CsvSource]
    #
    # @!attribute [rw] s3_excel_source
    #   Defines configuration parameters for reading Excel files from Amazon
    #   S3.
    #   @return [Types::S3ExcelSource]
    #
    # @!attribute [rw] s3_json_source
    #   Specifies a JSON data store stored in Amazon S3.
    #   @return [Types::S3JsonSource]
    #
    # @!attribute [rw] s3_parquet_source
    #   Specifies an Apache Parquet data store stored in Amazon S3.
    #   @return [Types::S3ParquetSource]
    #
    # @!attribute [rw] relational_catalog_source
    #   Specifies a relational catalog data store in the Glue Data Catalog.
    #   @return [Types::RelationalCatalogSource]
    #
    # @!attribute [rw] dynamo_db_catalog_source
    #   Specifies a DynamoDBC Catalog data store in the Glue Data Catalog.
    #   @return [Types::DynamoDBCatalogSource]
    #
    # @!attribute [rw] jdbc_connector_target
    #   Specifies a data target that writes to Amazon S3 in Apache Parquet
    #   columnar storage.
    #   @return [Types::JDBCConnectorTarget]
    #
    # @!attribute [rw] spark_connector_target
    #   Specifies a target that uses an Apache Spark connector.
    #   @return [Types::SparkConnectorTarget]
    #
    # @!attribute [rw] catalog_target
    #   Specifies a target that uses a Glue Data Catalog table.
    #   @return [Types::BasicCatalogTarget]
    #
    # @!attribute [rw] redshift_target
    #   Specifies a target that uses Amazon Redshift.
    #   @return [Types::RedshiftTarget]
    #
    # @!attribute [rw] s3_catalog_target
    #   Specifies a data target that writes to Amazon S3 using the Glue Data
    #   Catalog.
    #   @return [Types::S3CatalogTarget]
    #
    # @!attribute [rw] s3_glue_parquet_target
    #   Specifies a data target that writes to Amazon S3 in Apache Parquet
    #   columnar storage.
    #   @return [Types::S3GlueParquetTarget]
    #
    # @!attribute [rw] s3_hyper_direct_target
    #   Defines configuration parameters for writing data to Amazon S3 using
    #   HyperDirect optimization.
    #   @return [Types::S3HyperDirectTarget]
    #
    # @!attribute [rw] s3_direct_target
    #   Specifies a data target that writes to Amazon S3.
    #   @return [Types::S3DirectTarget]
    #
    # @!attribute [rw] s3_iceberg_direct_target
    #   Defines configuration parameters for writing data to Amazon S3 as an
    #   Apache Iceberg table.
    #   @return [Types::S3IcebergDirectTarget]
    #
    # @!attribute [rw] apply_mapping
    #   Specifies a transform that maps data property keys in the data
    #   source to data property keys in the data target. You can rename
    #   keys, modify the data types for keys, and choose which keys to drop
    #   from the dataset.
    #   @return [Types::ApplyMapping]
    #
    # @!attribute [rw] select_fields
    #   Specifies a transform that chooses the data property keys that you
    #   want to keep.
    #   @return [Types::SelectFields]
    #
    # @!attribute [rw] drop_fields
    #   Specifies a transform that chooses the data property keys that you
    #   want to drop.
    #   @return [Types::DropFields]
    #
    # @!attribute [rw] rename_field
    #   Specifies a transform that renames a single data property key.
    #   @return [Types::RenameField]
    #
    # @!attribute [rw] spigot
    #   Specifies a transform that writes samples of the data to an Amazon
    #   S3 bucket.
    #   @return [Types::Spigot]
    #
    # @!attribute [rw] join
    #   Specifies a transform that joins two datasets into one dataset using
    #   a comparison phrase on the specified data property keys. You can use
    #   inner, outer, left, right, left semi, and left anti joins.
    #   @return [Types::Join]
    #
    # @!attribute [rw] split_fields
    #   Specifies a transform that splits data property keys into two
    #   `DynamicFrames`. The output is a collection of `DynamicFrames`: one
    #   with selected data property keys, and one with the remaining data
    #   property keys.
    #   @return [Types::SplitFields]
    #
    # @!attribute [rw] select_from_collection
    #   Specifies a transform that chooses one `DynamicFrame` from a
    #   collection of `DynamicFrames`. The output is the selected
    #   `DynamicFrame`
    #   @return [Types::SelectFromCollection]
    #
    # @!attribute [rw] fill_missing_values
    #   Specifies a transform that locates records in the dataset that have
    #   missing values and adds a new field with a value determined by
    #   imputation. The input data set is used to train the machine learning
    #   model that determines what the missing value should be.
    #   @return [Types::FillMissingValues]
    #
    # @!attribute [rw] filter
    #   Specifies a transform that splits a dataset into two, based on a
    #   filter condition.
    #   @return [Types::Filter]
    #
    # @!attribute [rw] custom_code
    #   Specifies a transform that uses custom code you provide to perform
    #   the data transformation. The output is a collection of
    #   DynamicFrames.
    #   @return [Types::CustomCode]
    #
    # @!attribute [rw] spark_sql
    #   Specifies a transform where you enter a SQL query using Spark SQL
    #   syntax to transform the data. The output is a single `DynamicFrame`.
    #   @return [Types::SparkSQL]
    #
    # @!attribute [rw] direct_kinesis_source
    #   Specifies a direct Amazon Kinesis data source.
    #   @return [Types::DirectKinesisSource]
    #
    # @!attribute [rw] direct_kafka_source
    #   Specifies an Apache Kafka data store.
    #   @return [Types::DirectKafkaSource]
    #
    # @!attribute [rw] catalog_kinesis_source
    #   Specifies a Kinesis data source in the Glue Data Catalog.
    #   @return [Types::CatalogKinesisSource]
    #
    # @!attribute [rw] catalog_kafka_source
    #   Specifies an Apache Kafka data store in the Data Catalog.
    #   @return [Types::CatalogKafkaSource]
    #
    # @!attribute [rw] drop_null_fields
    #   Specifies a transform that removes columns from the dataset if all
    #   values in the column are 'null'. By default, Glue Studio will
    #   recognize null objects, but some values such as empty strings,
    #   strings that are "null", -1 integers or other placeholders such as
    #   zeros, are not automatically recognized as nulls.
    #   @return [Types::DropNullFields]
    #
    # @!attribute [rw] merge
    #   Specifies a transform that merges a `DynamicFrame` with a staging
    #   `DynamicFrame` based on the specified primary keys to identify
    #   records. Duplicate records (records with the same primary keys) are
    #   not de-duplicated.
    #   @return [Types::Merge]
    #
    # @!attribute [rw] union
    #   Specifies a transform that combines the rows from two or more
    #   datasets into a single result.
    #   @return [Types::Union]
    #
    # @!attribute [rw] pii_detection
    #   Specifies a transform that identifies, removes or masks PII data.
    #   @return [Types::PIIDetection]
    #
    # @!attribute [rw] aggregate
    #   Specifies a transform that groups rows by chosen fields and computes
    #   the aggregated value by specified function.
    #   @return [Types::Aggregate]
    #
    # @!attribute [rw] drop_duplicates
    #   Specifies a transform that removes rows of repeating data from a
    #   data set.
    #   @return [Types::DropDuplicates]
    #
    # @!attribute [rw] governed_catalog_target
    #   Specifies a data target that writes to a goverened catalog.
    #   @return [Types::GovernedCatalogTarget]
    #
    # @!attribute [rw] governed_catalog_source
    #   Specifies a data source in a goverened Data Catalog.
    #   @return [Types::GovernedCatalogSource]
    #
    # @!attribute [rw] microsoft_sql_server_catalog_source
    #   Specifies a Microsoft SQL server data source in the Glue Data
    #   Catalog.
    #   @return [Types::MicrosoftSQLServerCatalogSource]
    #
    # @!attribute [rw] my_sql_catalog_source
    #   Specifies a MySQL data source in the Glue Data Catalog.
    #   @return [Types::MySQLCatalogSource]
    #
    # @!attribute [rw] oracle_sql_catalog_source
    #   Specifies an Oracle data source in the Glue Data Catalog.
    #   @return [Types::OracleSQLCatalogSource]
    #
    # @!attribute [rw] postgre_sql_catalog_source
    #   Specifies a PostgresSQL data source in the Glue Data Catalog.
    #   @return [Types::PostgreSQLCatalogSource]
    #
    # @!attribute [rw] microsoft_sql_server_catalog_target
    #   Specifies a target that uses Microsoft SQL.
    #   @return [Types::MicrosoftSQLServerCatalogTarget]
    #
    # @!attribute [rw] my_sql_catalog_target
    #   Specifies a target that uses MySQL.
    #   @return [Types::MySQLCatalogTarget]
    #
    # @!attribute [rw] oracle_sql_catalog_target
    #   Specifies a target that uses Oracle SQL.
    #   @return [Types::OracleSQLCatalogTarget]
    #
    # @!attribute [rw] postgre_sql_catalog_target
    #   Specifies a target that uses Postgres SQL.
    #   @return [Types::PostgreSQLCatalogTarget]
    #
    # @!attribute [rw] dynamic_transform
    #   Specifies a custom visual transform created by a user.
    #   @return [Types::DynamicTransform]
    #
    # @!attribute [rw] evaluate_data_quality
    #   Specifies your data quality evaluation criteria.
    #   @return [Types::EvaluateDataQuality]
    #
    # @!attribute [rw] s3_catalog_hudi_source
    #   Specifies a Hudi data source that is registered in the Glue Data
    #   Catalog. The data source must be stored in Amazon S3.
    #   @return [Types::S3CatalogHudiSource]
    #
    # @!attribute [rw] catalog_hudi_source
    #   Specifies a Hudi data source that is registered in the Glue Data
    #   Catalog.
    #   @return [Types::CatalogHudiSource]
    #
    # @!attribute [rw] s3_hudi_source
    #   Specifies a Hudi data source stored in Amazon S3.
    #   @return [Types::S3HudiSource]
    #
    # @!attribute [rw] s3_hudi_catalog_target
    #   Specifies a target that writes to a Hudi data source in the Glue
    #   Data Catalog.
    #   @return [Types::S3HudiCatalogTarget]
    #
    # @!attribute [rw] s3_hudi_direct_target
    #   Specifies a target that writes to a Hudi data source in Amazon S3.
    #   @return [Types::S3HudiDirectTarget]
    #
    # @!attribute [rw] direct_jdbc_source
    #   Specifies the direct JDBC source connection.
    #   @return [Types::DirectJDBCSource]
    #
    # @!attribute [rw] s3_catalog_delta_source
    #   Specifies a Delta Lake data source that is registered in the Glue
    #   Data Catalog. The data source must be stored in Amazon S3.
    #   @return [Types::S3CatalogDeltaSource]
    #
    # @!attribute [rw] catalog_delta_source
    #   Specifies a Delta Lake data source that is registered in the Glue
    #   Data Catalog.
    #   @return [Types::CatalogDeltaSource]
    #
    # @!attribute [rw] s3_delta_source
    #   Specifies a Delta Lake data source stored in Amazon S3.
    #   @return [Types::S3DeltaSource]
    #
    # @!attribute [rw] s3_delta_catalog_target
    #   Specifies a target that writes to a Delta Lake data source in the
    #   Glue Data Catalog.
    #   @return [Types::S3DeltaCatalogTarget]
    #
    # @!attribute [rw] s3_delta_direct_target
    #   Specifies a target that writes to a Delta Lake data source in Amazon
    #   S3.
    #   @return [Types::S3DeltaDirectTarget]
    #
    # @!attribute [rw] amazon_redshift_source
    #   Specifies a target that writes to a data source in Amazon Redshift.
    #   @return [Types::AmazonRedshiftSource]
    #
    # @!attribute [rw] amazon_redshift_target
    #   Specifies a target that writes to a data target in Amazon Redshift.
    #   @return [Types::AmazonRedshiftTarget]
    #
    # @!attribute [rw] evaluate_data_quality_multi_frame
    #   Specifies your data quality evaluation criteria. Allows multiple
    #   input data and returns a collection of Dynamic Frames.
    #   @return [Types::EvaluateDataQualityMultiFrame]
    #
    # @!attribute [rw] recipe
    #   Specifies a Glue DataBrew recipe node.
    #   @return [Types::Recipe]
    #
    # @!attribute [rw] snowflake_source
    #   Specifies a Snowflake data source.
    #   @return [Types::SnowflakeSource]
    #
    # @!attribute [rw] snowflake_target
    #   Specifies a target that writes to a Snowflake data source.
    #   @return [Types::SnowflakeTarget]
    #
    # @!attribute [rw] connector_data_source
    #   Specifies a source generated with standard connection options.
    #   @return [Types::ConnectorDataSource]
    #
    # @!attribute [rw] connector_data_target
    #   Specifies a target generated with standard connection options.
    #   @return [Types::ConnectorDataTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CodeGenConfigurationNode AWS API Documentation
    #
    class CodeGenConfigurationNode < Struct.new(
      :athena_connector_source,
      :jdbc_connector_source,
      :spark_connector_source,
      :catalog_source,
      :redshift_source,
      :s3_catalog_source,
      :s3_csv_source,
      :s3_excel_source,
      :s3_json_source,
      :s3_parquet_source,
      :relational_catalog_source,
      :dynamo_db_catalog_source,
      :jdbc_connector_target,
      :spark_connector_target,
      :catalog_target,
      :redshift_target,
      :s3_catalog_target,
      :s3_glue_parquet_target,
      :s3_hyper_direct_target,
      :s3_direct_target,
      :s3_iceberg_direct_target,
      :apply_mapping,
      :select_fields,
      :drop_fields,
      :rename_field,
      :spigot,
      :join,
      :split_fields,
      :select_from_collection,
      :fill_missing_values,
      :filter,
      :custom_code,
      :spark_sql,
      :direct_kinesis_source,
      :direct_kafka_source,
      :catalog_kinesis_source,
      :catalog_kafka_source,
      :drop_null_fields,
      :merge,
      :union,
      :pii_detection,
      :aggregate,
      :drop_duplicates,
      :governed_catalog_target,
      :governed_catalog_source,
      :microsoft_sql_server_catalog_source,
      :my_sql_catalog_source,
      :oracle_sql_catalog_source,
      :postgre_sql_catalog_source,
      :microsoft_sql_server_catalog_target,
      :my_sql_catalog_target,
      :oracle_sql_catalog_target,
      :postgre_sql_catalog_target,
      :dynamic_transform,
      :evaluate_data_quality,
      :s3_catalog_hudi_source,
      :catalog_hudi_source,
      :s3_hudi_source,
      :s3_hudi_catalog_target,
      :s3_hudi_direct_target,
      :direct_jdbc_source,
      :s3_catalog_delta_source,
      :catalog_delta_source,
      :s3_delta_source,
      :s3_delta_catalog_target,
      :s3_delta_direct_target,
      :amazon_redshift_source,
      :amazon_redshift_target,
      :evaluate_data_quality_multi_frame,
      :recipe,
      :snowflake_source,
      :snowflake_target,
      :connector_data_source,
      :connector_data_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a directional edge in a directed acyclic graph (DAG).
    #
    # @!attribute [rw] source
    #   The ID of the node at which the edge starts.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The ID of the node at which the edge ends.
    #   @return [String]
    #
    # @!attribute [rw] target_parameter
    #   The target of the edge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CodeGenEdge AWS API Documentation
    #
    class CodeGenEdge < Struct.new(
      :source,
      :target,
      :target_parameter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a node in a directed acyclic graph (DAG)
    #
    # @!attribute [rw] id
    #   A node identifier that is unique within the node's graph.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The type of node that this is.
    #   @return [String]
    #
    # @!attribute [rw] args
    #   Properties of the node, in the form of name-value pairs.
    #   @return [Array<Types::CodeGenNodeArg>]
    #
    # @!attribute [rw] line_number
    #   The line number of the node.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CodeGenNode AWS API Documentation
    #
    class CodeGenNode < Struct.new(
      :id,
      :node_type,
      :args,
      :line_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # An argument or property of a node.
    #
    # @!attribute [rw] name
    #   The name of the argument or property.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the argument or property.
    #   @return [String]
    #
    # @!attribute [rw] param
    #   True if the value is used as a parameter.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CodeGenNodeArg AWS API Documentation
    #
    class CodeGenNodeArg < Struct.new(
      :name,
      :value,
      :param)
      SENSITIVE = []
      include Aws::Structure
    end

    # A column in a `Table`.
    #
    # @!attribute [rw] name
    #   The name of the `Column`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the `Column`.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A free-form text comment.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define properties associated with the column.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Column AWS API Documentation
    #
    class Column < Struct.new(
      :name,
      :type,
      :comment,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encapsulates a column name that failed and the reason for failure.
    #
    # @!attribute [rw] column_name
    #   The name of the column that failed.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   An error message with the reason for the failure of an operation.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ColumnError AWS API Documentation
    #
    class ColumnError < Struct.new(
      :column_name,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the column name and column importance score for
    # a column.
    #
    # Column importance helps you understand how columns contribute to your
    # model, by identifying which columns in your records are more important
    # than others.
    #
    # @!attribute [rw] column_name
    #   The name of a column.
    #   @return [String]
    #
    # @!attribute [rw] importance
    #   The column importance score for the column, as a decimal.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ColumnImportance AWS API Documentation
    #
    class ColumnImportance < Struct.new(
      :column_name,
      :importance)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that uses both column-level and row-level filtering.
    #
    # @!attribute [rw] column_name
    #   A string containing the name of the column.
    #   @return [String]
    #
    # @!attribute [rw] row_filter_expression
    #   A string containing the row-level filter expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ColumnRowFilter AWS API Documentation
    #
    class ColumnRowFilter < Struct.new(
      :column_name,
      :row_filter_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the generated column-level statistics for a table or
    # partition.
    #
    # @!attribute [rw] column_name
    #   Name of column which statistics belong to.
    #   @return [String]
    #
    # @!attribute [rw] column_type
    #   The data type of the column.
    #   @return [String]
    #
    # @!attribute [rw] analyzed_time
    #   The timestamp of when column statistics were generated.
    #   @return [Time]
    #
    # @!attribute [rw] statistics_data
    #   A `ColumnStatisticData` object that contains the statistics data
    #   values.
    #   @return [Types::ColumnStatisticsData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ColumnStatistics AWS API Documentation
    #
    class ColumnStatistics < Struct.new(
      :column_name,
      :column_type,
      :analyzed_time,
      :statistics_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the individual types of column statistics data. Only one data
    # object should be set and indicated by the `Type` attribute.
    #
    # @!attribute [rw] type
    #   The type of column statistics data.
    #   @return [String]
    #
    # @!attribute [rw] boolean_column_statistics_data
    #   Boolean column statistics data.
    #   @return [Types::BooleanColumnStatisticsData]
    #
    # @!attribute [rw] date_column_statistics_data
    #   Date column statistics data.
    #   @return [Types::DateColumnStatisticsData]
    #
    # @!attribute [rw] decimal_column_statistics_data
    #   Decimal column statistics data. UnscaledValues within are
    #   Base64-encoded binary objects storing big-endian, two's complement
    #   representations of the decimal's unscaled value.
    #   @return [Types::DecimalColumnStatisticsData]
    #
    # @!attribute [rw] double_column_statistics_data
    #   Double column statistics data.
    #   @return [Types::DoubleColumnStatisticsData]
    #
    # @!attribute [rw] long_column_statistics_data
    #   Long column statistics data.
    #   @return [Types::LongColumnStatisticsData]
    #
    # @!attribute [rw] string_column_statistics_data
    #   String column statistics data.
    #   @return [Types::StringColumnStatisticsData]
    #
    # @!attribute [rw] binary_column_statistics_data
    #   Binary column statistics data.
    #   @return [Types::BinaryColumnStatisticsData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ColumnStatisticsData AWS API Documentation
    #
    class ColumnStatisticsData < Struct.new(
      :type,
      :boolean_column_statistics_data,
      :date_column_statistics_data,
      :decimal_column_statistics_data,
      :double_column_statistics_data,
      :long_column_statistics_data,
      :string_column_statistics_data,
      :binary_column_statistics_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encapsulates a `ColumnStatistics` object that failed and the reason
    # for failure.
    #
    # @!attribute [rw] column_statistics
    #   The `ColumnStatistics` of the column.
    #   @return [Types::ColumnStatistics]
    #
    # @!attribute [rw] error
    #   An error message with the reason for the failure of an operation.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ColumnStatisticsError AWS API Documentation
    #
    class ColumnStatisticsError < Struct.new(
      :column_statistics,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception thrown when you try to stop a task run when there is no
    # task running.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ColumnStatisticsTaskNotRunningException AWS API Documentation
    #
    class ColumnStatisticsTaskNotRunningException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object that shows the details of the column stats run.
    #
    # @!attribute [rw] customer_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] column_statistics_task_run_id
    #   The identifier for the particular column statistics task run.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table for which column statistics is generated.
    #   @return [String]
    #
    # @!attribute [rw] column_name_list
    #   A list of the column names. If none is supplied, all column names
    #   for the table will be used by default.
    #   @return [Array<String>]
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   supplied, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM role that the service assumes to generate statistics.
    #   @return [String]
    #
    # @!attribute [rw] sample_size
    #   The percentage of rows used to generate statistics. If none is
    #   supplied, the entire table will be used to generate stats.
    #   @return [Float]
    #
    # @!attribute [rw] security_configuration
    #   Name of the security configuration that is used to encrypt
    #   CloudWatch logs for the column stats task run.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers used to generate column statistics. The job is
    #   preconfigured to autoscale up to 25 instances.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_type
    #   The type of workers being used for generating stats. The default is
    #   `g.1x`.
    #   @return [String]
    #
    # @!attribute [rw] computation_type
    #   The type of column statistics computation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the task run.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that this task was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The last point in time when this task was modified.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The start time of the task.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the task.
    #   @return [Time]
    #
    # @!attribute [rw] error_message
    #   The error message for the job.
    #   @return [String]
    #
    # @!attribute [rw] dpu_seconds
    #   The calculated DPU usage in seconds for all autoscaled workers.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ColumnStatisticsTaskRun AWS API Documentation
    #
    class ColumnStatisticsTaskRun < Struct.new(
      :customer_id,
      :column_statistics_task_run_id,
      :database_name,
      :table_name,
      :column_name_list,
      :catalog_id,
      :role,
      :sample_size,
      :security_configuration,
      :number_of_workers,
      :worker_type,
      :computation_type,
      :status,
      :creation_time,
      :last_updated,
      :start_time,
      :end_time,
      :error_message,
      :dpu_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception thrown when you try to start another job while running a
    # column stats generation job.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ColumnStatisticsTaskRunningException AWS API Documentation
    #
    class ColumnStatisticsTaskRunningException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for a column statistics task.
    #
    # @!attribute [rw] database_name
    #   The name of the database where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table for which to generate column statistics.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A schedule for running the column statistics, specified in CRON
    #   syntax.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] column_name_list
    #   A list of column names for which to run statistics.
    #   @return [Array<String>]
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the database resides.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The role used for running the column statistics.
    #   @return [String]
    #
    # @!attribute [rw] sample_size
    #   The percentage of data to sample.
    #   @return [Float]
    #
    # @!attribute [rw] security_configuration
    #   Name of the security configuration that is used to encrypt
    #   CloudWatch logs.
    #   @return [String]
    #
    # @!attribute [rw] schedule_type
    #   The type of schedule for a column statistics task. Possible values
    #   may be `CRON` or `AUTO`.
    #   @return [String]
    #
    # @!attribute [rw] setting_source
    #   The source of setting the column statistics task. Possible values
    #   may be `CATALOG` or `TABLE`.
    #   @return [String]
    #
    # @!attribute [rw] last_execution_attempt
    #   The last `ExecutionAttempt` for the column statistics task run.
    #   @return [Types::ExecutionAttempt]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ColumnStatisticsTaskSettings AWS API Documentation
    #
    class ColumnStatisticsTaskSettings < Struct.new(
      :database_name,
      :table_name,
      :schedule,
      :column_name_list,
      :catalog_id,
      :role,
      :sample_size,
      :security_configuration,
      :schedule_type,
      :setting_source,
      :last_execution_attempt)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception thrown when you try to stop a task run.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ColumnStatisticsTaskStoppingException AWS API Documentation
    #
    class ColumnStatisticsTaskStoppingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a compaction optimizer. This configuration
    # defines how data files in your table will be compacted to improve
    # query performance and reduce storage costs.
    #
    # @!attribute [rw] iceberg_configuration
    #   The configuration for an Iceberg compaction optimizer.
    #   @return [Types::IcebergCompactionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CompactionConfiguration AWS API Documentation
    #
    class CompactionConfiguration < Struct.new(
      :iceberg_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains compaction metrics for the optimizer run.
    #
    # @!attribute [rw] iceberg_metrics
    #   A structure containing the Iceberg compaction metrics for the
    #   optimizer run.
    #   @return [Types::IcebergCompactionMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CompactionMetrics AWS API Documentation
    #
    class CompactionMetrics < Struct.new(
      :iceberg_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing configuration for a compute environment (such as
    # Spark, Python or Athena) returned by the `DescribeConnectionType` API.
    #
    # @!attribute [rw] name
    #   A name for the compute environment configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the compute environment.
    #   @return [String]
    #
    # @!attribute [rw] compute_environment
    #   The type of compute environment.
    #   @return [String]
    #
    # @!attribute [rw] supported_authentication_types
    #   The supported authentication types for the compute environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_options
    #   The parameters used as connection options for the compute
    #   environment.
    #   @return [Hash<String,Types::Property>]
    #
    # @!attribute [rw] connection_property_name_overrides
    #   The connection property name overrides for the compute environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connection_option_name_overrides
    #   The connection option name overrides for the compute environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connection_properties_required_overrides
    #   The connection properties that are required as overrides for the
    #   compute environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] physical_connection_properties_required
    #   Indicates whether `PhysicalConnectionProperties` are required for
    #   the compute environment.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ComputeEnvironmentConfiguration AWS API Documentation
    #
    class ComputeEnvironmentConfiguration < Struct.new(
      :name,
      :description,
      :compute_environment,
      :supported_authentication_types,
      :connection_options,
      :connection_property_name_overrides,
      :connection_option_name_overrides,
      :connection_properties_required_overrides,
      :physical_connection_properties_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Two processes are trying to modify a resource simultaneously.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Too many jobs are being run concurrently.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConcurrentRunsExceededException AWS API Documentation
    #
    class ConcurrentRunsExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a condition under which a trigger fires.
    #
    # @!attribute [rw] logical_operator
    #   A logical operator.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the job whose `JobRuns` this condition applies to, and
    #   on which this trigger waits.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The condition state. Currently, the only job states that a trigger
    #   can listen for are `SUCCEEDED`, `STOPPED`, `FAILED`, and `TIMEOUT`.
    #   The only crawler states that a trigger can listen for are
    #   `SUCCEEDED`, `FAILED`, and `CANCELLED`.
    #   @return [String]
    #
    # @!attribute [rw] crawler_name
    #   The name of the crawler to which this condition applies.
    #   @return [String]
    #
    # @!attribute [rw] crawl_state
    #   The state of the crawler to which this condition applies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :logical_operator,
      :job_name,
      :state,
      :crawler_name,
      :crawl_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specified condition was not satisfied.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConditionCheckFailureException AWS API Documentation
    #
    class ConditionCheckFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Condition expression defined in the Glue Studio data preparation
    # recipe node.
    #
    # @!attribute [rw] condition
    #   The condition of the condition expression.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the condition expression.
    #   @return [String]
    #
    # @!attribute [rw] target_column
    #   The target column of the condition expressions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConditionExpression AWS API Documentation
    #
    class ConditionExpression < Struct.new(
      :condition,
      :value,
      :target_column)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the values that an admin sets for each job or session
    # parameter configured in a Glue usage profile.
    #
    # @!attribute [rw] default_value
    #   A default value for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   A list of allowed values for the parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] min_value
    #   A minimum allowed value for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] max_value
    #   A maximum allowed value for the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConfigurationObject AWS API Documentation
    #
    class ConfigurationObject < Struct.new(
      :default_value,
      :allowed_values,
      :min_value,
      :max_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `CreatePartitions` API was called on a table that has indexes
    # enabled.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The confusion matrix shows you what your transform is predicting
    # accurately and what types of errors it is making.
    #
    # For more information, see [Confusion matrix][1] in Wikipedia.
    #
    #
    #
    # [1]: https://en.wikipedia.org/wiki/Confusion_matrix
    #
    # @!attribute [rw] num_true_positives
    #   The number of matches in the data that the transform correctly
    #   found, in the confusion matrix for your transform.
    #   @return [Integer]
    #
    # @!attribute [rw] num_false_positives
    #   The number of nonmatches in the data that the transform incorrectly
    #   classified as a match, in the confusion matrix for your transform.
    #   @return [Integer]
    #
    # @!attribute [rw] num_true_negatives
    #   The number of nonmatches in the data that the transform correctly
    #   rejected, in the confusion matrix for your transform.
    #   @return [Integer]
    #
    # @!attribute [rw] num_false_negatives
    #   The number of matches in the data that the transform didn't find,
    #   in the confusion matrix for your transform.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConfusionMatrix AWS API Documentation
    #
    class ConfusionMatrix < Struct.new(
      :num_true_positives,
      :num_false_positives,
      :num_true_negatives,
      :num_false_negatives)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a connection to a data source.
    #
    # @!attribute [rw] name
    #   The name of the connection definition.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of the connection. Currently, SFTP is not supported.
    #   @return [String]
    #
    # @!attribute [rw] match_criteria
    #   A list of criteria that can be used in selecting this connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_properties
    #   These key-value pairs define parameters for the connection when
    #   using the version 1 Connection schema:
    #
    #   * `HOST` - The host URI: either the fully qualified domain name
    #     (FQDN) or the IPv4 address of the database host.
    #
    #   * `PORT` - The port number, between 1024 and 65535, of the port on
    #     which the database host is listening for database connections.
    #
    #   * `USER_NAME` - The name under which to log in to the database. The
    #     value string for `USER_NAME` is "`USERNAME`".
    #
    #   * `PASSWORD` - A password, if one is used, for the user name.
    #
    #   * `ENCRYPTED_PASSWORD` - When you enable connection password
    #     protection by setting `ConnectionPasswordEncryption` in the Data
    #     Catalog encryption settings, this field stores the encrypted
    #     password.
    #
    #   * `JDBC_DRIVER_JAR_URI` - The Amazon Simple Storage Service (Amazon
    #     S3) path of the JAR file that contains the JDBC driver to use.
    #
    #   * `JDBC_DRIVER_CLASS_NAME` - The class name of the JDBC driver to
    #     use.
    #
    #   * `JDBC_ENGINE` - The name of the JDBC engine to use.
    #
    #   * `JDBC_ENGINE_VERSION` - The version of the JDBC engine to use.
    #
    #   * `CONFIG_FILES` - (Reserved for future use.)
    #
    #   * `INSTANCE_ID` - The instance ID to use.
    #
    #   * `JDBC_CONNECTION_URL` - The URL for connecting to a JDBC data
    #     source.
    #
    #   * `JDBC_ENFORCE_SSL` - A Boolean string (true, false) specifying
    #     whether Secure Sockets Layer (SSL) with hostname matching is
    #     enforced for the JDBC connection on the client. The default is
    #     false.
    #
    #   * `CUSTOM_JDBC_CERT` - An Amazon S3 location specifying the
    #     customer's root certificate. Glue uses this root certificate to
    #     validate the customer’s certificate when connecting to the
    #     customer database. Glue only handles X.509 certificates. The
    #     certificate provided must be DER-encoded and supplied in Base64
    #     encoding PEM format.
    #
    #   * `SKIP_CUSTOM_JDBC_CERT_VALIDATION` - By default, this is `false`.
    #     Glue validates the Signature algorithm and Subject Public Key
    #     Algorithm for the customer certificate. The only permitted
    #     algorithms for the Signature algorithm are SHA256withRSA,
    #     SHA384withRSA or SHA512withRSA. For the Subject Public Key
    #     Algorithm, the key length must be at least 2048. You can set the
    #     value of this property to `true` to skip Glue’s validation of the
    #     customer certificate.
    #
    #   * `CUSTOM_JDBC_CERT_STRING` - A custom JDBC certificate string which
    #     is used for domain match or distinguished name match to prevent a
    #     man-in-the-middle attack. In Oracle database, this is used as the
    #     `SSL_SERVER_CERT_DN`; in Microsoft SQL Server, this is used as the
    #     `hostNameInCertificate`.
    #
    #   * `CONNECTION_URL` - The URL for connecting to a general (non-JDBC)
    #     data source.
    #
    #   * `SECRET_ID` - The secret ID used for the secret manager of
    #     credentials.
    #
    #   * `CONNECTOR_URL` - The connector URL for a MARKETPLACE or CUSTOM
    #     connection.
    #
    #   * `CONNECTOR_TYPE` - The connector type for a MARKETPLACE or CUSTOM
    #     connection.
    #
    #   * `CONNECTOR_CLASS_NAME` - The connector class name for a
    #     MARKETPLACE or CUSTOM connection.
    #
    #   * `KAFKA_BOOTSTRAP_SERVERS` - A comma-separated list of host and
    #     port pairs that are the addresses of the Apache Kafka brokers in a
    #     Kafka cluster to which a Kafka client will connect to and
    #     bootstrap itself.
    #
    #   * `KAFKA_SSL_ENABLED` - Whether to enable or disable SSL on an
    #     Apache Kafka connection. Default value is "true".
    #
    #   * `KAFKA_CUSTOM_CERT` - The Amazon S3 URL for the private CA cert
    #     file (.pem format). The default is an empty string.
    #
    #   * `KAFKA_SKIP_CUSTOM_CERT_VALIDATION` - Whether to skip the
    #     validation of the CA cert file or not. Glue validates for three
    #     algorithms: SHA256withRSA, SHA384withRSA and SHA512withRSA.
    #     Default value is "false".
    #
    #   * `KAFKA_CLIENT_KEYSTORE` - The Amazon S3 location of the client
    #     keystore file for Kafka client side authentication (Optional).
    #
    #   * `KAFKA_CLIENT_KEYSTORE_PASSWORD` - The password to access the
    #     provided keystore (Optional).
    #
    #   * `KAFKA_CLIENT_KEY_PASSWORD` - A keystore can consist of multiple
    #     keys, so this is the password to access the client key to be used
    #     with the Kafka server side key (Optional).
    #
    #   * `ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD` - The encrypted version
    #     of the Kafka client keystore password (if the user has the Glue
    #     encrypt passwords setting selected).
    #
    #   * `ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD` - The encrypted version of
    #     the Kafka client key password (if the user has the Glue encrypt
    #     passwords setting selected).
    #
    #   * `KAFKA_SASL_MECHANISM` - `"SCRAM-SHA-512"`, `"GSSAPI"`,
    #     `"AWS_MSK_IAM"`, or `"PLAIN"`. These are the supported [SASL
    #     Mechanisms][1].
    #
    #   * `KAFKA_SASL_PLAIN_USERNAME` - A plaintext username used to
    #     authenticate with the "PLAIN" mechanism.
    #
    #   * `KAFKA_SASL_PLAIN_PASSWORD` - A plaintext password used to
    #     authenticate with the "PLAIN" mechanism.
    #
    #   * `ENCRYPTED_KAFKA_SASL_PLAIN_PASSWORD` - The encrypted version of
    #     the Kafka SASL PLAIN password (if the user has the Glue encrypt
    #     passwords setting selected).
    #
    #   * `KAFKA_SASL_SCRAM_USERNAME` - A plaintext username used to
    #     authenticate with the "SCRAM-SHA-512" mechanism.
    #
    #   * `KAFKA_SASL_SCRAM_PASSWORD` - A plaintext password used to
    #     authenticate with the "SCRAM-SHA-512" mechanism.
    #
    #   * `ENCRYPTED_KAFKA_SASL_SCRAM_PASSWORD` - The encrypted version of
    #     the Kafka SASL SCRAM password (if the user has the Glue encrypt
    #     passwords setting selected).
    #
    #   * `KAFKA_SASL_SCRAM_SECRETS_ARN` - The Amazon Resource Name of a
    #     secret in Amazon Web Services Secrets Manager.
    #
    #   * `KAFKA_SASL_GSSAPI_KEYTAB` - The S3 location of a Kerberos
    #     `keytab` file. A keytab stores long-term keys for one or more
    #     principals. For more information, see [MIT Kerberos Documentation:
    #     Keytab][2].
    #
    #   * `KAFKA_SASL_GSSAPI_KRB5_CONF` - The S3 location of a Kerberos
    #     `krb5.conf` file. A krb5.conf stores Kerberos configuration
    #     information, such as the location of the KDC server. For more
    #     information, see [MIT Kerberos Documentation: krb5.conf][3].
    #
    #   * `KAFKA_SASL_GSSAPI_SERVICE` - The Kerberos service name, as set
    #     with `sasl.kerberos.service.name` in your [Kafka
    #     Configuration][4].
    #
    #   * `KAFKA_SASL_GSSAPI_PRINCIPAL` - The name of the Kerberos princial
    #     used by Glue. For more information, see [Kafka Documentation:
    #     Configuring Kafka Brokers][5].
    #
    #   * `ROLE_ARN` - The role to be used for running queries.
    #
    #   * `REGION` - The Amazon Web Services Region where queries will be
    #     run.
    #
    #   * `WORKGROUP_NAME` - The name of an Amazon Redshift serverless
    #     workgroup or Amazon Athena workgroup in which queries will run.
    #
    #   * `CLUSTER_IDENTIFIER` - The cluster identifier of an Amazon
    #     Redshift cluster in which queries will run.
    #
    #   * `DATABASE` - The Amazon Redshift database that you are connecting
    #     to.
    #
    #
    #
    #   [1]: https://www.iana.org/assignments/sasl-mechanisms/sasl-mechanisms.xhtml
    #   [2]: https://web.mit.edu/kerberos/krb5-latest/doc/basic/keytab_def.html
    #   [3]: https://web.mit.edu/kerberos/krb5-1.12/doc/admin/conf_files/krb5_conf.html
    #   [4]: https://kafka.apache.org/documentation/#brokerconfigs_sasl.kerberos.service.name
    #   [5]: https://kafka.apache.org/documentation/#security_sasl_kerberos_clientconfig
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] spark_properties
    #   Connection properties specific to the Spark compute environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] athena_properties
    #   Connection properties specific to the Athena compute environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] python_properties
    #   Connection properties specific to the Python compute environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] physical_connection_requirements
    #   The physical connection requirements, such as virtual private cloud
    #   (VPC) and `SecurityGroup`, that are needed to make this connection
    #   successfully.
    #   @return [Types::PhysicalConnectionRequirements]
    #
    # @!attribute [rw] creation_time
    #   The timestamp of the time that this connection definition was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp of the last time the connection definition was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_by
    #   The user, group, or role that last updated this connection
    #   definition.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the connection. Can be one of: `READY`, `IN_PROGRESS`,
    #   or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the connection status.
    #   @return [String]
    #
    # @!attribute [rw] last_connection_validation_time
    #   A timestamp of the time this connection was last validated.
    #   @return [Time]
    #
    # @!attribute [rw] authentication_configuration
    #   The authentication properties of the connection.
    #   @return [Types::AuthenticationConfiguration]
    #
    # @!attribute [rw] connection_schema_version
    #   The version of the connection schema for this connection. Version 2
    #   supports properties for specific compute environments.
    #   @return [Integer]
    #
    # @!attribute [rw] compatible_compute_environments
    #   A list of compute environments compatible with the connection.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Connection AWS API Documentation
    #
    class Connection < Struct.new(
      :name,
      :description,
      :connection_type,
      :match_criteria,
      :connection_properties,
      :spark_properties,
      :athena_properties,
      :python_properties,
      :physical_connection_requirements,
      :creation_time,
      :last_updated_time,
      :last_updated_by,
      :status,
      :status_reason,
      :last_connection_validation_time,
      :authentication_configuration,
      :connection_schema_version,
      :compatible_compute_environments)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that is used to specify a connection to create or update.
    #
    # @!attribute [rw] name
    #   The name of the connection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of the connection. Currently, these types are supported:
    #
    #   * `JDBC` - Designates a connection to a database through Java
    #     Database Connectivity (JDBC).
    #
    #     `JDBC` Connections use the following ConnectionParameters.
    #
    #     * Required: All of (`HOST`, `PORT`, `JDBC_ENGINE`) or
    #       `JDBC_CONNECTION_URL`.
    #
    #     * Required: All of (`USERNAME`, `PASSWORD`) or `SECRET_ID`.
    #
    #     * Optional: `JDBC_ENFORCE_SSL`, `CUSTOM_JDBC_CERT`,
    #       `CUSTOM_JDBC_CERT_STRING`, `SKIP_CUSTOM_JDBC_CERT_VALIDATION`.
    #       These parameters are used to configure SSL with JDBC.
    #   * `KAFKA` - Designates a connection to an Apache Kafka streaming
    #     platform.
    #
    #     `KAFKA` Connections use the following ConnectionParameters.
    #
    #     * Required: `KAFKA_BOOTSTRAP_SERVERS`.
    #
    #     * Optional: `KAFKA_SSL_ENABLED`, `KAFKA_CUSTOM_CERT`,
    #       `KAFKA_SKIP_CUSTOM_CERT_VALIDATION`. These parameters are used
    #       to configure SSL with `KAFKA`.
    #
    #     * Optional: `KAFKA_CLIENT_KEYSTORE`,
    #       `KAFKA_CLIENT_KEYSTORE_PASSWORD`, `KAFKA_CLIENT_KEY_PASSWORD`,
    #       `ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD`,
    #       `ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD`. These parameters are used
    #       to configure TLS client configuration with SSL in `KAFKA`.
    #
    #     * Optional: `KAFKA_SASL_MECHANISM`. Can be specified as
    #       `SCRAM-SHA-512`, `GSSAPI`, or `AWS_MSK_IAM`.
    #
    #     * Optional: `KAFKA_SASL_SCRAM_USERNAME`,
    #       `KAFKA_SASL_SCRAM_PASSWORD`,
    #       `ENCRYPTED_KAFKA_SASL_SCRAM_PASSWORD`. These parameters are used
    #       to configure SASL/SCRAM-SHA-512 authentication with `KAFKA`.
    #
    #     * Optional: `KAFKA_SASL_GSSAPI_KEYTAB`,
    #       `KAFKA_SASL_GSSAPI_KRB5_CONF`, `KAFKA_SASL_GSSAPI_SERVICE`,
    #       `KAFKA_SASL_GSSAPI_PRINCIPAL`. These parameters are used to
    #       configure SASL/GSSAPI authentication with `KAFKA`.
    #   * `MONGODB` - Designates a connection to a MongoDB document
    #     database.
    #
    #     `MONGODB` Connections use the following ConnectionParameters.
    #
    #     * Required: `CONNECTION_URL`.
    #
    #     * Required: All of (`USERNAME`, `PASSWORD`) or `SECRET_ID`.
    #   * `VIEW_VALIDATION_REDSHIFT` - Designates a connection used for view
    #     validation by Amazon Redshift.
    #
    #   * `VIEW_VALIDATION_ATHENA` - Designates a connection used for view
    #     validation by Amazon Athena.
    #
    #   * `NETWORK` - Designates a network connection to a data source
    #     within an Amazon Virtual Private Cloud environment (Amazon VPC).
    #
    #     `NETWORK` Connections do not require ConnectionParameters.
    #     Instead, provide a PhysicalConnectionRequirements.
    #
    #   * `MARKETPLACE` - Uses configuration settings contained in a
    #     connector purchased from Amazon Web Services Marketplace to read
    #     from and write to data stores that are not natively supported by
    #     Glue.
    #
    #     `MARKETPLACE` Connections use the following ConnectionParameters.
    #
    #     * Required: `CONNECTOR_TYPE`, `CONNECTOR_URL`,
    #       `CONNECTOR_CLASS_NAME`, `CONNECTION_URL`.
    #
    #     * Required for `JDBC` `CONNECTOR_TYPE` connections: All of
    #       (`USERNAME`, `PASSWORD`) or `SECRET_ID`.
    #   * `CUSTOM` - Uses configuration settings contained in a custom
    #     connector to read from and write to data stores that are not
    #     natively supported by Glue.
    #
    #   Additionally, a `ConnectionType` for the following SaaS connectors
    #   is supported:
    #
    #   * `FACEBOOKADS` - Designates a connection to Facebook Ads.
    #
    #   * `GOOGLEADS` - Designates a connection to Google Ads.
    #
    #   * `GOOGLESHEETS` - Designates a connection to Google Sheets.
    #
    #   * `GOOGLEANALYTICS4` - Designates a connection to Google Analytics
    #     4.
    #
    #   * `HUBSPOT` - Designates a connection to HubSpot.
    #
    #   * `INSTAGRAMADS` - Designates a connection to Instagram Ads.
    #
    #   * `INTERCOM` - Designates a connection to Intercom.
    #
    #   * `JIRACLOUD` - Designates a connection to Jira Cloud.
    #
    #   * `MARKETO` - Designates a connection to Adobe Marketo Engage.
    #
    #   * `NETSUITEERP` - Designates a connection to Oracle NetSuite.
    #
    #   * `SALESFORCE` - Designates a connection to Salesforce using OAuth
    #     authentication.
    #
    #   * `SALESFORCEMARKETINGCLOUD` - Designates a connection to Salesforce
    #     Marketing Cloud.
    #
    #   * `SALESFORCEPARDOT` - Designates a connection to Salesforce
    #     Marketing Cloud Account Engagement (MCAE).
    #
    #   * `SAPODATA` - Designates a connection to SAP OData.
    #
    #   * `SERVICENOW` - Designates a connection to ServiceNow.
    #
    #   * `SLACK` - Designates a connection to Slack.
    #
    #   * `SNAPCHATADS` - Designates a connection to Snapchat Ads.
    #
    #   * `STRIPE` - Designates a connection to Stripe.
    #
    #   * `ZENDESK` - Designates a connection to Zendesk.
    #
    #   * `ZOHOCRM` - Designates a connection to Zoho CRM.
    #
    #   For more information on the connection parameters needed for a
    #   particular connector, see the documentation for the connector in
    #   [Adding an Glue connection][1]in the Glue User Guide.
    #
    #   `SFTP` is not supported.
    #
    #   For more information about how optional ConnectionProperties are
    #   used to configure features in Glue, consult [Glue connection
    #   properties][2].
    #
    #   For more information about how optional ConnectionProperties are
    #   used to configure features in Glue Studio, consult [Using connectors
    #   and connections][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/console-connections.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/connection-defining.html
    #   [3]: https://docs.aws.amazon.com/glue/latest/ug/connectors-chapter.html
    #   @return [String]
    #
    # @!attribute [rw] match_criteria
    #   A list of criteria that can be used in selecting this connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_properties
    #   These key-value pairs define parameters for the connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] spark_properties
    #   Connection properties specific to the Spark compute environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] athena_properties
    #   Connection properties specific to the Athena compute environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] python_properties
    #   Connection properties specific to the Python compute environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] physical_connection_requirements
    #   The physical connection requirements, such as virtual private cloud
    #   (VPC) and `SecurityGroup`, that are needed to successfully make this
    #   connection.
    #   @return [Types::PhysicalConnectionRequirements]
    #
    # @!attribute [rw] authentication_configuration
    #   The authentication properties of the connection.
    #   @return [Types::AuthenticationConfigurationInput]
    #
    # @!attribute [rw] validate_credentials
    #   A flag to validate the credentials during create connection. Default
    #   is true.
    #   @return [Boolean]
    #
    # @!attribute [rw] validate_for_compute_environments
    #   The compute environments that the specified connection properties
    #   are validated against.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConnectionInput AWS API Documentation
    #
    class ConnectionInput < Struct.new(
      :name,
      :description,
      :connection_type,
      :match_criteria,
      :connection_properties,
      :spark_properties,
      :athena_properties,
      :python_properties,
      :physical_connection_requirements,
      :authentication_configuration,
      :validate_credentials,
      :validate_for_compute_environments)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data structure used by the Data Catalog to encrypt the password as
    # part of `CreateConnection` or `UpdateConnection` and store it in the
    # `ENCRYPTED_PASSWORD` field in the connection properties. You can
    # enable catalog encryption or only password encryption.
    #
    # When a `CreationConnection` request arrives containing a password, the
    # Data Catalog first encrypts the password using your KMS key. It then
    # encrypts the whole connection object again if catalog encryption is
    # also enabled.
    #
    # This encryption requires that you set KMS key permissions to enable or
    # restrict access on the password key according to your security
    # requirements. For example, you might want only administrators to have
    # decrypt permission on the password key.
    #
    # @!attribute [rw] return_connection_password_encrypted
    #   When the `ReturnConnectionPasswordEncrypted` flag is set to
    #   "true", passwords remain encrypted in the responses of
    #   `GetConnection` and `GetConnections`. This encryption takes effect
    #   independently from catalog encryption.
    #   @return [Boolean]
    #
    # @!attribute [rw] aws_kms_key_id
    #   An KMS key that is used to encrypt the connection password.
    #
    #   If connection password protection is enabled, the caller of
    #   `CreateConnection` and `UpdateConnection` needs at least
    #   `kms:Encrypt` permission on the specified KMS key, to encrypt
    #   passwords before storing them in the Data Catalog.
    #
    #   You can set the decrypt permission to enable or restrict access on
    #   the password key according to your security requirements.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConnectionPasswordEncryption AWS API Documentation
    #
    class ConnectionPasswordEncryption < Struct.new(
      :return_connection_password_encrypted,
      :aws_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Brief information about a supported connection type returned by the
    # `ListConnectionTypes` API.
    #
    # @!attribute [rw] connection_type
    #   The name of the connection type.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable name for the connection type that is displayed in
    #   the Glue console.
    #   @return [String]
    #
    # @!attribute [rw] vendor
    #   The name of the vendor or provider that created or maintains this
    #   connection type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the connection type.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   A list of categories that this connection type belongs to.
    #   Categories help users filter and find appropriate connection types
    #   based on their use cases.
    #   @return [Array<String>]
    #
    # @!attribute [rw] capabilities
    #   The supported authentication types, data interface types (compute
    #   environments), and data operations of the connector.
    #   @return [Types::Capabilities]
    #
    # @!attribute [rw] logo_url
    #   The URL of the logo associated with a connection type.
    #   @return [String]
    #
    # @!attribute [rw] connection_type_variants
    #   A list of variants available for this connection type. Different
    #   variants may provide specialized configurations for specific use
    #   cases or implementations of the same general connection type.
    #   @return [Array<Types::ConnectionTypeVariant>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConnectionTypeBrief AWS API Documentation
    #
    class ConnectionTypeBrief < Struct.new(
      :connection_type,
      :display_name,
      :vendor,
      :description,
      :categories,
      :capabilities,
      :logo_url,
      :connection_type_variants)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a variant of a connection type in Glue Data Catalog.
    # Connection type variants provide specific configurations and behaviors
    # for different implementations of the same general connection type.
    #
    # @!attribute [rw] connection_type_variant_name
    #   The unique identifier for the connection type variant. This name is
    #   used internally to identify the specific variant of a connection
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable name for the connection type variant that is
    #   displayed in the Glue console.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A detailed description of the connection type variant, including its
    #   purpose, use cases, and any specific configuration requirements.
    #   @return [String]
    #
    # @!attribute [rw] logo_url
    #   The URL of the logo associated with a connection type variant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConnectionTypeVariant AWS API Documentation
    #
    class ConnectionTypeVariant < Struct.new(
      :connection_type_variant_name,
      :display_name,
      :description,
      :logo_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the connections used by a job.
    #
    # @!attribute [rw] connections
    #   A list of connections used by the job.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConnectionsList AWS API Documentation
    #
    class ConnectionsList < Struct.new(
      :connections)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a source generated with standard connection options.
    #
    # @!attribute [rw] name
    #   The name of this source node.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The `connectionType`, as provided to the underlying Glue library.
    #   This node type supports the following connection types:
    #
    #   * `opensearch`
    #
    #   * `azuresql`
    #
    #   * `azurecosmos`
    #
    #   * `bigquery`
    #
    #   * `saphana`
    #
    #   * `teradata`
    #
    #   * `vertica`
    #   @return [String]
    #
    # @!attribute [rw] data
    #   A map specifying connection options for the node. You can find
    #   standard connection options for the corresponding connection type in
    #   the [ Connection parameters][1] section of the Glue documentation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-connect.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for this source.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConnectorDataSource AWS API Documentation
    #
    class ConnectorDataSource < Struct.new(
      :name,
      :connection_type,
      :data,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target generated with standard connection options.
    #
    # @!attribute [rw] name
    #   The name of this target node.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The `connectionType`, as provided to the underlying Glue library.
    #   This node type supports the following connection types:
    #
    #   * `opensearch`
    #
    #   * `azuresql`
    #
    #   * `azurecosmos`
    #
    #   * `bigquery`
    #
    #   * `saphana`
    #
    #   * `teradata`
    #
    #   * `vertica`
    #   @return [String]
    #
    # @!attribute [rw] data
    #   A map specifying connection options for the node. You can find
    #   standard connection options for the corresponding connection type in
    #   the [ Connection parameters][1] section of the Glue documentation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-connect.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConnectorDataTarget AWS API Documentation
    #
    class ConnectorDataTarget < Struct.new(
      :name,
      :connection_type,
      :data,
      :inputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a crawl in the workflow.
    #
    # @!attribute [rw] state
    #   The state of the crawler.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time on which the crawl started.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The date and time on which the crawl completed.
    #   @return [Time]
    #
    # @!attribute [rw] error_message
    #   The error message associated with the crawl.
    #   @return [String]
    #
    # @!attribute [rw] log_group
    #   The log group associated with the crawl.
    #   @return [String]
    #
    # @!attribute [rw] log_stream
    #   The log stream associated with the crawl.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Crawl AWS API Documentation
    #
    class Crawl < Struct.new(
      :state,
      :started_on,
      :completed_on,
      :error_message,
      :log_group,
      :log_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a crawler program that examines a data source and uses
    # classifiers to try to determine its schema. If successful, the crawler
    # records metadata concerning the data source in the Glue Data Catalog.
    #
    # @!attribute [rw] name
    #   The name of the crawler.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of an IAM role that's used to access
    #   customer resources, such as Amazon Simple Storage Service (Amazon
    #   S3) data.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A collection of targets to crawl.
    #   @return [Types::CrawlerTargets]
    #
    # @!attribute [rw] database_name
    #   The name of the database in which the crawler's output is stored.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the crawler.
    #   @return [String]
    #
    # @!attribute [rw] classifiers
    #   A list of UTF-8 strings that specify the custom classifiers that are
    #   associated with the crawler.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recrawl_policy
    #   A policy that specifies whether to crawl the entire dataset again,
    #   or to crawl only folders that were added since the last crawler run.
    #   @return [Types::RecrawlPolicy]
    #
    # @!attribute [rw] schema_change_policy
    #   The policy that specifies update and delete behaviors for the
    #   crawler.
    #   @return [Types::SchemaChangePolicy]
    #
    # @!attribute [rw] lineage_configuration
    #   A configuration that specifies whether data lineage is enabled for
    #   the crawler.
    #   @return [Types::LineageConfiguration]
    #
    # @!attribute [rw] state
    #   Indicates whether the crawler is running, or whether a run is
    #   pending.
    #   @return [String]
    #
    # @!attribute [rw] table_prefix
    #   The prefix added to the names of tables that are created.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   For scheduled crawlers, the schedule when the crawler runs.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] crawl_elapsed_time
    #   If the crawler is running, contains the total time elapsed since the
    #   last crawl began.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The time that the crawler was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The time that the crawler was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_crawl
    #   The status of the last crawl, and potentially error information if
    #   an error occurred.
    #   @return [Types::LastCrawlInfo]
    #
    # @!attribute [rw] version
    #   The version of the crawler.
    #   @return [Integer]
    #
    # @!attribute [rw] configuration
    #   Crawler configuration information. This versioned JSON string allows
    #   users to specify aspects of a crawler's behavior. For more
    #   information, see [Setting crawler configuration options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html
    #   @return [String]
    #
    # @!attribute [rw] crawler_security_configuration
    #   The name of the `SecurityConfiguration` structure to be used by this
    #   crawler.
    #   @return [String]
    #
    # @!attribute [rw] lake_formation_configuration
    #   Specifies whether the crawler should use Lake Formation credentials
    #   for the crawler instead of the IAM role credentials.
    #   @return [Types::LakeFormationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Crawler AWS API Documentation
    #
    class Crawler < Struct.new(
      :name,
      :role,
      :targets,
      :database_name,
      :description,
      :classifiers,
      :recrawl_policy,
      :schema_change_policy,
      :lineage_configuration,
      :state,
      :table_prefix,
      :schedule,
      :crawl_elapsed_time,
      :creation_time,
      :last_updated,
      :last_crawl,
      :version,
      :configuration,
      :crawler_security_configuration,
      :lake_formation_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the information for a run of a crawler.
    #
    # @!attribute [rw] crawl_id
    #   A UUID identifier for each crawl.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the crawl.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time on which the crawl started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time on which the crawl ended.
    #   @return [Time]
    #
    # @!attribute [rw] summary
    #   A run summary for the specific crawl in JSON. Contains the catalog
    #   tables and partitions that were added, updated, or deleted.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   If an error occurred, the error message associated with the crawl.
    #   @return [String]
    #
    # @!attribute [rw] log_group
    #   The log group associated with the crawl.
    #   @return [String]
    #
    # @!attribute [rw] log_stream
    #   The log stream associated with the crawl.
    #   @return [String]
    #
    # @!attribute [rw] message_prefix
    #   The prefix for a CloudWatch message about this crawl.
    #   @return [String]
    #
    # @!attribute [rw] dpu_hour
    #   The number of data processing units (DPU) used in hours for the
    #   crawl.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerHistory AWS API Documentation
    #
    class CrawlerHistory < Struct.new(
      :crawl_id,
      :state,
      :start_time,
      :end_time,
      :summary,
      :error_message,
      :log_group,
      :log_stream,
      :message_prefix,
      :dpu_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metrics for a specified crawler.
    #
    # @!attribute [rw] crawler_name
    #   The name of the crawler.
    #   @return [String]
    #
    # @!attribute [rw] time_left_seconds
    #   The estimated time left to complete a running crawl.
    #   @return [Float]
    #
    # @!attribute [rw] still_estimating
    #   True if the crawler is still estimating how long it will take to
    #   complete this run.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_runtime_seconds
    #   The duration of the crawler's most recent run, in seconds.
    #   @return [Float]
    #
    # @!attribute [rw] median_runtime_seconds
    #   The median duration of this crawler's runs, in seconds.
    #   @return [Float]
    #
    # @!attribute [rw] tables_created
    #   The number of tables created by this crawler.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_updated
    #   The number of tables updated by this crawler.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_deleted
    #   The number of tables deleted by this crawler.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerMetrics AWS API Documentation
    #
    class CrawlerMetrics < Struct.new(
      :crawler_name,
      :time_left_seconds,
      :still_estimating,
      :last_runtime_seconds,
      :median_runtime_seconds,
      :tables_created,
      :tables_updated,
      :tables_deleted)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a Crawler node present in the workflow.
    #
    # @!attribute [rw] crawls
    #   A list of crawls represented by the crawl node.
    #   @return [Array<Types::Crawl>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerNodeDetails AWS API Documentation
    #
    class CrawlerNodeDetails < Struct.new(
      :crawls)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified crawler is not running.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerNotRunningException AWS API Documentation
    #
    class CrawlerNotRunningException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation cannot be performed because the crawler is already
    # running.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerRunningException AWS API Documentation
    #
    class CrawlerRunningException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified crawler is stopping.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerStoppingException AWS API Documentation
    #
    class CrawlerStoppingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies data stores to crawl.
    #
    # @!attribute [rw] s3_targets
    #   Specifies Amazon Simple Storage Service (Amazon S3) targets.
    #   @return [Array<Types::S3Target>]
    #
    # @!attribute [rw] jdbc_targets
    #   Specifies JDBC targets.
    #   @return [Array<Types::JdbcTarget>]
    #
    # @!attribute [rw] mongo_db_targets
    #   Specifies Amazon DocumentDB or MongoDB targets.
    #   @return [Array<Types::MongoDBTarget>]
    #
    # @!attribute [rw] dynamo_db_targets
    #   Specifies Amazon DynamoDB targets.
    #   @return [Array<Types::DynamoDBTarget>]
    #
    # @!attribute [rw] catalog_targets
    #   Specifies Glue Data Catalog targets.
    #   @return [Array<Types::CatalogTarget>]
    #
    # @!attribute [rw] delta_targets
    #   Specifies Delta data store targets.
    #   @return [Array<Types::DeltaTarget>]
    #
    # @!attribute [rw] iceberg_targets
    #   Specifies Apache Iceberg data store targets.
    #   @return [Array<Types::IcebergTarget>]
    #
    # @!attribute [rw] hudi_targets
    #   Specifies Apache Hudi data store targets.
    #   @return [Array<Types::HudiTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerTargets AWS API Documentation
    #
    class CrawlerTargets < Struct.new(
      :s3_targets,
      :jdbc_targets,
      :mongo_db_targets,
      :dynamo_db_targets,
      :catalog_targets,
      :delta_targets,
      :iceberg_targets,
      :hudi_targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of fields, comparators and value that you can use to filter the
    # crawler runs for a specified crawler.
    #
    # @!attribute [rw] field_name
    #   A key used to filter the crawler runs for a specified crawler. Valid
    #   values for each of the field names are:
    #
    #   * `CRAWL_ID`: A string representing the UUID identifier for a crawl.
    #
    #   * `STATE`: A string representing the state of the crawl.
    #
    #   * `START_TIME` and `END_TIME`: The epoch timestamp in milliseconds.
    #
    #   * `DPU_HOUR`: The number of data processing unit (DPU) hours used
    #     for the crawl.
    #   @return [String]
    #
    # @!attribute [rw] filter_operator
    #   A defined comparator that operates on the value. The available
    #   operators are:
    #
    #   * `GT`: Greater than.
    #
    #   * `GE`: Greater than or equal to.
    #
    #   * `LT`: Less than.
    #
    #   * `LE`: Less than or equal to.
    #
    #   * `EQ`: Equal to.
    #
    #   * `NE`: Not equal to.
    #   @return [String]
    #
    # @!attribute [rw] field_value
    #   The value provided for comparison on the crawl field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlsFilter AWS API Documentation
    #
    class CrawlsFilter < Struct.new(
      :field_name,
      :filter_operator,
      :field_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_location
    #   Specifies a path in Amazon S3 where the blueprint is published.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be applied to this blueprint.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateBlueprintRequest AWS API Documentation
    #
    class CreateBlueprintRequest < Struct.new(
      :name,
      :description,
      :blueprint_location,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Returns the name of the blueprint that was registered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateBlueprintResponse AWS API Documentation
    #
    class CreateBlueprintResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the catalog to create.
    #   @return [String]
    #
    # @!attribute [rw] catalog_input
    #   A `CatalogInput` object that defines the metadata for the catalog.
    #   @return [Types::CatalogInput]
    #
    # @!attribute [rw] tags
    #   A map array of key-value pairs, not more than 50 pairs. Each key is
    #   a UTF-8 string, not less than 1 or more than 128 bytes long. Each
    #   value is a UTF-8 string, not more than 256 bytes long. The tags you
    #   assign to the catalog.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCatalogRequest AWS API Documentation
    #
    class CreateCatalogRequest < Struct.new(
      :name,
      :catalog_input,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCatalogResponse AWS API Documentation
    #
    class CreateCatalogResponse < Aws::EmptyStructure; end

    # @!attribute [rw] grok_classifier
    #   A `GrokClassifier` object specifying the classifier to create.
    #   @return [Types::CreateGrokClassifierRequest]
    #
    # @!attribute [rw] xml_classifier
    #   An `XMLClassifier` object specifying the classifier to create.
    #   @return [Types::CreateXMLClassifierRequest]
    #
    # @!attribute [rw] json_classifier
    #   A `JsonClassifier` object specifying the classifier to create.
    #   @return [Types::CreateJsonClassifierRequest]
    #
    # @!attribute [rw] csv_classifier
    #   A `CsvClassifier` object specifying the classifier to create.
    #   @return [Types::CreateCsvClassifierRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateClassifierRequest AWS API Documentation
    #
    class CreateClassifierRequest < Struct.new(
      :grok_classifier,
      :xml_classifier,
      :json_classifier,
      :csv_classifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateClassifierResponse AWS API Documentation
    #
    class CreateClassifierResponse < Aws::EmptyStructure; end

    # @!attribute [rw] database_name
    #   The name of the database where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table for which to generate column statistics.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The role used for running the column statistics.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A schedule for running the column statistics, specified in CRON
    #   syntax.
    #   @return [String]
    #
    # @!attribute [rw] column_name_list
    #   A list of column names for which to run statistics.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sample_size
    #   The percentage of data to sample.
    #   @return [Float]
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the database resides.
    #   @return [String]
    #
    # @!attribute [rw] security_configuration
    #   Name of the security configuration that is used to encrypt
    #   CloudWatch logs.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateColumnStatisticsTaskSettingsRequest AWS API Documentation
    #
    class CreateColumnStatisticsTaskSettingsRequest < Struct.new(
      :database_name,
      :table_name,
      :role,
      :schedule,
      :column_name_list,
      :sample_size,
      :catalog_id,
      :security_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateColumnStatisticsTaskSettingsResponse AWS API Documentation
    #
    class CreateColumnStatisticsTaskSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which to create the connection. If
    #   none is provided, the Amazon Web Services account ID is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] connection_input
    #   A `ConnectionInput` object defining the connection to create.
    #   @return [Types::ConnectionInput]
    #
    # @!attribute [rw] tags
    #   The tags you assign to the connection.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateConnectionRequest AWS API Documentation
    #
    class CreateConnectionRequest < Struct.new(
      :catalog_id,
      :connection_input,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_connection_status
    #   The status of the connection creation request. The request can take
    #   some time for certain authentication types, for example when
    #   creating an OAuth connection with token exchange over VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateConnectionResponse AWS API Documentation
    #
    class CreateConnectionResponse < Struct.new(
      :create_connection_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of the new crawler.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM role or Amazon Resource Name (ARN) of an IAM role used by
    #   the new crawler to access customer resources.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The Glue database where results are written, such as:
    #   `arn:aws:daylight:us-east-1::database/sometable/*`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the new crawler.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A list of collection of targets to crawl.
    #   @return [Types::CrawlerTargets]
    #
    # @!attribute [rw] schedule
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #   @return [String]
    #
    # @!attribute [rw] classifiers
    #   A list of custom classifiers that the user has registered. By
    #   default, all built-in classifiers are included in a crawl, but these
    #   custom classifiers always override the default classifiers for a
    #   given classification.
    #   @return [Array<String>]
    #
    # @!attribute [rw] table_prefix
    #   The table prefix used for catalog tables that are created.
    #   @return [String]
    #
    # @!attribute [rw] schema_change_policy
    #   The policy for the crawler's update and deletion behavior.
    #   @return [Types::SchemaChangePolicy]
    #
    # @!attribute [rw] recrawl_policy
    #   A policy that specifies whether to crawl the entire dataset again,
    #   or to crawl only folders that were added since the last crawler run.
    #   @return [Types::RecrawlPolicy]
    #
    # @!attribute [rw] lineage_configuration
    #   Specifies data lineage configuration settings for the crawler.
    #   @return [Types::LineageConfiguration]
    #
    # @!attribute [rw] lake_formation_configuration
    #   Specifies Lake Formation configuration settings for the crawler.
    #   @return [Types::LakeFormationConfiguration]
    #
    # @!attribute [rw] configuration
    #   Crawler configuration information. This versioned JSON string allows
    #   users to specify aspects of a crawler's behavior. For more
    #   information, see [Setting crawler configuration options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html
    #   @return [String]
    #
    # @!attribute [rw] crawler_security_configuration
    #   The name of the `SecurityConfiguration` structure to be used by this
    #   crawler.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to use with this crawler request. You may use tags to limit
    #   access to the crawler. For more information about tags in Glue, see
    #   [Amazon Web Services Tags in Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCrawlerRequest AWS API Documentation
    #
    class CreateCrawlerRequest < Struct.new(
      :name,
      :role,
      :database_name,
      :description,
      :targets,
      :schedule,
      :classifiers,
      :table_prefix,
      :schema_change_policy,
      :recrawl_policy,
      :lineage_configuration,
      :lake_formation_configuration,
      :configuration,
      :crawler_security_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCrawlerResponse AWS API Documentation
    #
    class CreateCrawlerResponse < Aws::EmptyStructure; end

    # Specifies a custom CSV classifier for `CreateClassifier` to create.
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] delimiter
    #   A custom symbol to denote what separates each column entry in the
    #   row.
    #   @return [String]
    #
    # @!attribute [rw] quote_symbol
    #   A custom symbol to denote what combines content into a single column
    #   value. Must be different from the column delimiter.
    #   @return [String]
    #
    # @!attribute [rw] contains_header
    #   Indicates whether the CSV file contains a header.
    #   @return [String]
    #
    # @!attribute [rw] header
    #   A list of strings representing column names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disable_value_trimming
    #   Specifies not to trim values before identifying the type of column
    #   values. The default value is true.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_single_column
    #   Enables the processing of files that contain only one column.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_datatype_configured
    #   Enables the configuration of custom datatypes.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_datatypes
    #   Creates a list of supported custom datatypes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] serde
    #   Sets the SerDe for processing CSV in the classifier, which will be
    #   applied in the Data Catalog. Valid values are `OpenCSVSerDe`,
    #   `LazySimpleSerDe`, and `None`. You can specify the `None` value when
    #   you want the crawler to do the detection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCsvClassifierRequest AWS API Documentation
    #
    class CreateCsvClassifierRequest < Struct.new(
      :name,
      :delimiter,
      :quote_symbol,
      :contains_header,
      :header,
      :disable_value_trimming,
      :allow_single_column,
      :custom_datatype_configured,
      :custom_datatypes,
      :serde)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the custom pattern that allows it to be retrieved or
    #   deleted later. This name must be unique per Amazon Web Services
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] regex_string
    #   A regular expression string that is used for detecting sensitive
    #   data in a custom pattern.
    #   @return [String]
    #
    # @!attribute [rw] context_words
    #   A list of context words. If none of these context words are found
    #   within the vicinity of the regular expression the data will not be
    #   detected as sensitive data.
    #
    #   If no context words are passed only a regular expression is checked.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of tags applied to the custom entity type.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCustomEntityTypeRequest AWS API Documentation
    #
    class CreateCustomEntityTypeRequest < Struct.new(
      :name,
      :regex_string,
      :context_words,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the custom pattern you created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCustomEntityTypeResponse AWS API Documentation
    #
    class CreateCustomEntityTypeResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to create a data quality ruleset.
    #
    # @!attribute [rw] name
    #   A unique name for the data quality ruleset.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the data quality ruleset.
    #   @return [String]
    #
    # @!attribute [rw] ruleset
    #   A Data Quality Definition Language (DQDL) ruleset. For more
    #   information, see the Glue developer guide.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags applied to the data quality ruleset.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] target_table
    #   A target table associated with the data quality ruleset.
    #   @return [Types::DataQualityTargetTable]
    #
    # @!attribute [rw] data_quality_security_configuration
    #   The name of the security configuration created with the data quality
    #   encryption option.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Used for idempotency and is recommended to be set to a random ID
    #   (such as a UUID) to avoid creating or starting multiple instances of
    #   the same resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDataQualityRulesetRequest AWS API Documentation
    #
    class CreateDataQualityRulesetRequest < Struct.new(
      :name,
      :description,
      :ruleset,
      :tags,
      :target_table,
      :data_quality_security_configuration,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A unique name for the data quality ruleset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDataQualityRulesetResponse AWS API Documentation
    #
    class CreateDataQualityRulesetResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which to create the database. If none
    #   is provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_input
    #   The metadata for the database.
    #   @return [Types::DatabaseInput]
    #
    # @!attribute [rw] tags
    #   The tags you assign to the database.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDatabaseRequest AWS API Documentation
    #
    class CreateDatabaseRequest < Struct.new(
      :catalog_id,
      :database_input,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDatabaseResponse AWS API Documentation
    #
    class CreateDatabaseResponse < Aws::EmptyStructure; end

    # @!attribute [rw] endpoint_name
    #   The name to be assigned to the new `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role for the `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   Security group IDs for the security groups to be used by the new
    #   `DevEndpoint`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID for the new `DevEndpoint` to use.
    #   @return [String]
    #
    # @!attribute [rw] public_key
    #   The public key to be used by this `DevEndpoint` for authentication.
    #   This attribute is provided for backward compatibility because the
    #   recommended attribute to use is public keys.
    #   @return [String]
    #
    # @!attribute [rw] public_keys
    #   A list of public keys to be used by the development endpoints for
    #   authentication. The use of this attribute is preferred over a single
    #   public key because the public keys allow you to have a different
    #   private key per client.
    #
    #   <note markdown="1"> If you previously created an endpoint with a public key, you must
    #   remove that key to be able to set a list of public keys. Call the
    #   `UpdateDevEndpoint` API with the public key content in the
    #   `deletePublicKeys` attribute, and the list of new keys in the
    #   `addPublicKeys` attribute.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of Glue Data Processing Units (DPUs) to allocate to this
    #   `DevEndpoint`.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated to the development
    #   endpoint. Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPU, 16
    #     GB of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPU, 32
    #     GB of memory, 128 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   Known issue: when a development endpoint is created with the `G.2X`
    #   `WorkerType` configuration, the Spark drivers for the development
    #   endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk.
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   Glue version determines the versions of Apache Spark and Python that
    #   Glue supports. The Python version indicates the version supported
    #   for running your ETL scripts on development endpoints.
    #
    #   For more information about the available Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in
    #   the developer guide.
    #
    #   Development endpoints that are created without specifying a Glue
    #   version default to Glue 0.9.
    #
    #   You can specify a version of Python support for development
    #   endpoints by using the `Arguments` parameter in the
    #   `CreateDevEndpoint` or `UpdateDevEndpoint` APIs. If no arguments are
    #   provided, the version defaults to Python 2.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   to the development endpoint.
    #
    #   The maximum number of workers you can define are 299 for `G.1X`, and
    #   149 for `G.2X`.
    #   @return [Integer]
    #
    # @!attribute [rw] extra_python_libs_s3_path
    #   The paths to one or more Python libraries in an Amazon S3 bucket
    #   that should be loaded in your `DevEndpoint`. Multiple values must be
    #   complete paths separated by a comma.
    #
    #   <note markdown="1"> You can only use pure Python libraries with a `DevEndpoint`.
    #   Libraries that rely on C extensions, such as the [pandas][1] Python
    #   data analysis library, are not yet supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://pandas.pydata.org/
    #   @return [String]
    #
    # @!attribute [rw] extra_jars_s3_path
    #   The path to one or more Java `.jar` files in an S3 bucket that
    #   should be loaded in your `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to use with this DevEndpoint. You may use tags to limit
    #   access to the DevEndpoint. For more information about tags in Glue,
    #   see [Amazon Web Services Tags in Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] arguments
    #   A map of arguments used to configure the `DevEndpoint`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDevEndpointRequest AWS API Documentation
    #
    class CreateDevEndpointRequest < Struct.new(
      :endpoint_name,
      :role_arn,
      :security_group_ids,
      :subnet_id,
      :public_key,
      :public_keys,
      :number_of_nodes,
      :worker_type,
      :glue_version,
      :number_of_workers,
      :extra_python_libs_s3_path,
      :extra_jars_s3_path,
      :security_configuration,
      :tags,
      :arguments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_name
    #   The name assigned to the new `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the new `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security groups assigned to the new `DevEndpoint`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID assigned to the new `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role assigned to the new
    #   `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] yarn_endpoint_address
    #   The address of the YARN endpoint used by this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] zeppelin_remote_spark_interpreter_port
    #   The Apache Zeppelin port for the remote Apache Spark interpreter.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of Glue Data Processing Units (DPUs) allocated to this
    #   DevEndpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated to the development
    #   endpoint. May be a value of Standard, G.1X, or G.2X.
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   Glue version determines the versions of Apache Spark and Python that
    #   Glue supports. The Python version indicates the version supported
    #   for running your ETL scripts on development endpoints.
    #
    #   For more information about the available Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in
    #   the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   to the development endpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   The Amazon Web Services Availability Zone where this `DevEndpoint`
    #   is located.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the virtual private cloud (VPC) used by this
    #   `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] extra_python_libs_s3_path
    #   The paths to one or more Python libraries in an S3 bucket that will
    #   be loaded in your `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] extra_jars_s3_path
    #   Path to one or more Java `.jar` files in an S3 bucket that will be
    #   loaded in your `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for a current failure in this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure being used with
    #   this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The point in time at which this `DevEndpoint` was created.
    #   @return [Time]
    #
    # @!attribute [rw] arguments
    #   The map of arguments used to configure this `DevEndpoint`.
    #
    #   Valid arguments are:
    #
    #   * `"--enable-glue-datacatalog": ""`
    #
    #   ^
    #
    #   You can specify a version of Python support for development
    #   endpoints by using the `Arguments` parameter in the
    #   `CreateDevEndpoint` or `UpdateDevEndpoint` APIs. If no arguments are
    #   provided, the version defaults to Python 2.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDevEndpointResponse AWS API Documentation
    #
    class CreateDevEndpointResponse < Struct.new(
      :endpoint_name,
      :status,
      :security_group_ids,
      :subnet_id,
      :role_arn,
      :yarn_endpoint_address,
      :zeppelin_remote_spark_interpreter_port,
      :number_of_nodes,
      :worker_type,
      :glue_version,
      :number_of_workers,
      :availability_zone,
      :vpc_id,
      :extra_python_libs_s3_path,
      :extra_jars_s3_path,
      :failure_reason,
      :security_configuration,
      :created_timestamp,
      :arguments)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a `grok` classifier for `CreateClassifier` to create.
    #
    # @!attribute [rw] classification
    #   An identifier of the data format that the classifier matches, such
    #   as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the new classifier.
    #   @return [String]
    #
    # @!attribute [rw] grok_pattern
    #   The grok pattern used by this classifier.
    #   @return [String]
    #
    # @!attribute [rw] custom_patterns
    #   Optional custom grok patterns used by this classifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateGrokClassifierRequest AWS API Documentation
    #
    class CreateGrokClassifierRequest < Struct.new(
      :classification,
      :name,
      :grok_pattern,
      :custom_patterns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration parameters required to create a new Iceberg table in
    # the Glue Data Catalog, including table properties and metadata
    # specifications.
    #
    # @!attribute [rw] location
    #   The S3 location where the Iceberg table data will be stored.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema definition that specifies the structure, field types, and
    #   metadata for the Iceberg table.
    #   @return [Types::IcebergSchema]
    #
    # @!attribute [rw] partition_spec
    #   The partitioning specification that defines how the Iceberg table
    #   data will be organized and partitioned for optimal query
    #   performance.
    #   @return [Types::IcebergPartitionSpec]
    #
    # @!attribute [rw] write_order
    #   The sort order specification that defines how data should be ordered
    #   within each partition to optimize query performance.
    #   @return [Types::IcebergSortOrder]
    #
    # @!attribute [rw] properties
    #   Key-value pairs of additional table properties and configuration
    #   settings for the Iceberg table.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateIcebergTableInput AWS API Documentation
    #
    class CreateIcebergTableInput < Struct.new(
      :location,
      :schema,
      :partition_spec,
      :write_order,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_name
    #   A unique name for an integration in Glue.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the source resource for the integration.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN of the target resource for the integration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the integration.
    #   @return [String]
    #
    # @!attribute [rw] data_filter
    #   Selects source tables for the integration using Maxwell filter
    #   syntax.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN of a KMS key used for encrypting the channel.
    #   @return [String]
    #
    # @!attribute [rw] additional_encryption_context
    #   An optional set of non-secret key–value pairs that contains
    #   additional contextual information for encryption. This can only be
    #   provided if `KMSKeyId` is provided.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Metadata assigned to the resource consisting of a list of key-value
    #   pairs.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] integration_config
    #   The configuration settings.
    #   @return [Types::IntegrationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateIntegrationRequest AWS API Documentation
    #
    class CreateIntegrationRequest < Struct.new(
      :integration_name,
      :source_arn,
      :target_arn,
      :description,
      :data_filter,
      :kms_key_id,
      :additional_encryption_context,
      :tags,
      :integration_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The connection ARN of the source, or the database ARN of the target.
    #   @return [String]
    #
    # @!attribute [rw] source_processing_properties
    #   The resource properties associated with the integration source.
    #   @return [Types::SourceProcessingProperties]
    #
    # @!attribute [rw] target_processing_properties
    #   The resource properties associated with the integration target.
    #   @return [Types::TargetProcessingProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateIntegrationResourcePropertyRequest AWS API Documentation
    #
    class CreateIntegrationResourcePropertyRequest < Struct.new(
      :resource_arn,
      :source_processing_properties,
      :target_processing_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The connection ARN of the source, or the database ARN of the target.
    #   @return [String]
    #
    # @!attribute [rw] source_processing_properties
    #   The resource properties associated with the integration source.
    #   @return [Types::SourceProcessingProperties]
    #
    # @!attribute [rw] target_processing_properties
    #   The resource properties associated with the integration target.
    #   @return [Types::TargetProcessingProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateIntegrationResourcePropertyResponse AWS API Documentation
    #
    class CreateIntegrationResourcePropertyResponse < Struct.new(
      :resource_arn,
      :source_processing_properties,
      :target_processing_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_arn
    #   The ARN of the source resource for the integration.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN of the target resource for the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_name
    #   A unique name for an integration in Glue.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) for the created integration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN of a KMS key used for encrypting the channel.
    #   @return [String]
    #
    # @!attribute [rw] additional_encryption_context
    #   An optional set of non-secret key–value pairs that contains
    #   additional contextual information for encryption.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Metadata assigned to the resource consisting of a list of key-value
    #   pairs.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] status
    #   The status of the integration being created.
    #
    #   The possible statuses are:
    #
    #   * CREATING: The integration is being created.
    #
    #   * ACTIVE: The integration creation succeeds.
    #
    #   * MODIFYING: The integration is being modified.
    #
    #   * FAILED: The integration creation fails.
    #
    #   * DELETING: The integration is deleted.
    #
    #   * SYNCING: The integration is synchronizing.
    #
    #   * NEEDS\_ATTENTION: The integration needs attention, such as
    #     synchronization.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the integration was created, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] errors
    #   A list of errors associated with the integration creation.
    #   @return [Array<Types::IntegrationError>]
    #
    # @!attribute [rw] data_filter
    #   Selects source tables for the integration using Maxwell filter
    #   syntax.
    #   @return [String]
    #
    # @!attribute [rw] integration_config
    #   The configuration settings.
    #   @return [Types::IntegrationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateIntegrationResponse AWS API Documentation
    #
    class CreateIntegrationResponse < Struct.new(
      :source_arn,
      :target_arn,
      :integration_name,
      :description,
      :integration_arn,
      :kms_key_id,
      :additional_encryption_context,
      :tags,
      :status,
      :create_time,
      :errors,
      :data_filter,
      :integration_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the target table for which to
    #   create integration table properties. Currently, this API only
    #   supports creating integration table properties for target tables,
    #   and the provided ARN should be the ARN of the target table in the
    #   Glue Data Catalog. Support for creating integration table properties
    #   for source connections (using the connection ARN) is not yet
    #   implemented and will be added in a future release.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table to be replicated.
    #   @return [String]
    #
    # @!attribute [rw] source_table_config
    #   A structure for the source table configuration. See the
    #   `SourceTableConfig` structure to see list of supported source
    #   properties.
    #   @return [Types::SourceTableConfig]
    #
    # @!attribute [rw] target_table_config
    #   A structure for the target table configuration.
    #   @return [Types::TargetTableConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateIntegrationTablePropertiesRequest AWS API Documentation
    #
    class CreateIntegrationTablePropertiesRequest < Struct.new(
      :resource_arn,
      :table_name,
      :source_table_config,
      :target_table_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateIntegrationTablePropertiesResponse AWS API Documentation
    #
    class CreateIntegrationTablePropertiesResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name you assign to this job definition. It must be unique in
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] job_mode
    #   A mode that describes how a job was created. Valid values are:
    #
    #   * `SCRIPT` - The job was created using the Glue Studio script
    #     editor.
    #
    #   * `VISUAL` - The job was created using the Glue Studio visual
    #     editor.
    #
    #   * `NOTEBOOK` - The job was created using an interactive sessions
    #     notebook.
    #
    #   When the `JobMode` field is missing or null, `SCRIPT` is assigned as
    #   the default value.
    #   @return [String]
    #
    # @!attribute [rw] job_run_queuing_enabled
    #   Specifies whether job run queuing is enabled for the job runs for
    #   this job.
    #
    #   A value of true means job run queuing is enabled for the job runs.
    #   If false or not populated, the job runs will not be considered for
    #   queueing.
    #
    #   If this field does not match the value set in the job run, then the
    #   value from the job run field will be used.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   Description of the job being defined.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   This field is reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role associated
    #   with this job.
    #   @return [String]
    #
    # @!attribute [rw] execution_property
    #   An `ExecutionProperty` specifying the maximum number of concurrent
    #   runs allowed for this job.
    #   @return [Types::ExecutionProperty]
    #
    # @!attribute [rw] command
    #   The `JobCommand` that runs this job.
    #   @return [Types::JobCommand]
    #
    # @!attribute [rw] default_arguments
    #   The default arguments for every run of this job, specified as
    #   name-value pairs.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that Glue itself consumes.
    #
    #   Job arguments may be logged. Do not pass plaintext secrets as
    #   arguments. Retrieve secrets from a Glue Connection, Secrets Manager
    #   or other secret management mechanism if you intend to keep them
    #   within the Job.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the arguments you can provide to this field
    #   when configuring Spark jobs, see the [Special Parameters Used by
    #   Glue][2] topic in the developer guide.
    #
    #   For information about the arguments you can provide to this field
    #   when configuring Ray jobs, see [Using job parameters in Ray jobs][3]
    #   in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #   [3]: https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] non_overridable_arguments
    #   Arguments for this job that are not overridden when providing job
    #   arguments in a job run, specified as name-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connections
    #   The connections used for this job.
    #   @return [Types::ConnectionsList]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry this job if it fails.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_capacity
    #   This parameter is deprecated. Use `MaxCapacity` instead.
    #
    #   The number of Glue data processing units (DPUs) to allocate to this
    #   Job. You can allocate a minimum of 2 DPUs; the default is 10. A DPU
    #   is a relative measure of processing power that consists of 4 vCPUs
    #   of compute capacity and 16 GB of memory. For more information, see
    #   the [Glue pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The job timeout in minutes. This is the maximum time that a job run
    #   can consume resources before it is terminated and enters `TIMEOUT`
    #   status.
    #
    #   Jobs must have timeout values less than 7 days or 10080 minutes.
    #   Otherwise, the jobs will throw an exception.
    #
    #   When the value is left blank, the timeout is defaulted to 2880
    #   minutes.
    #
    #   Any existing Glue jobs that had a timeout value greater than 7 days
    #   will be defaulted to 7 days. For instance if you have specified a
    #   timeout of 20 days for a batch job, it will be stopped on the 7th
    #   day.
    #
    #   For streaming jobs, if you have set up a maintenance window, it will
    #   be restarted during the maintenance window after 7 days.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   For Glue version 1.0 or earlier jobs, using the standard worker
    #   type, the number of Glue data processing units (DPUs) that can be
    #   allocated when this job runs. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [ Glue pricing page][1].
    #
    #   For Glue version 2.0+ jobs, you cannot specify a `Maximum capacity`.
    #   Instead, you should specify a `Worker type` and the `Number of
    #   workers`.
    #
    #   Do not set `MaxCapacity` if using `WorkerType` and
    #   `NumberOfWorkers`.
    #
    #   The value that can be allocated for `MaxCapacity` depends on whether
    #   you are running a Python shell job, an Apache Spark ETL job, or an
    #   Apache Spark streaming ETL job:
    #
    #   * When you specify a Python shell job
    #     (`JobCommand.Name`="pythonshell"), you can allocate either
    #     0.0625 or 1 DPU. The default is 0.0625 DPU.
    #
    #   * When you specify an Apache Spark ETL job
    #     (`JobCommand.Name`="glueetl") or Apache Spark streaming ETL job
    #     (`JobCommand.Name`="gluestreaming"), you can allocate from 2 to
    #     100 DPUs. The default is 10 DPUs. This job type cannot have a
    #     fractional DPU allocation.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to use with this job. You may use tags to limit access to
    #   the job. For more information about tags in Glue, see [Amazon Web
    #   Services Tags in Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] notification_property
    #   Specifies configuration properties of a job notification.
    #   @return [Types::NotificationProperty]
    #
    # @!attribute [rw] glue_version
    #   In Spark jobs, `GlueVersion` determines the versions of Apache Spark
    #   and Python that Glue available in a job. The Python version
    #   indicates the version supported for jobs of type Spark.
    #
    #   Ray jobs should set `GlueVersion` to `4.0` or greater. However, the
    #   versions of Ray, Python and additional libraries available in your
    #   Ray job are determined by the `Runtime` parameter of the Job
    #   command.
    #
    #   For more information about the available Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in
    #   the developer guide.
    #
    #   Jobs that are created without specifying a Glue version default to
    #   Glue 0.9.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a job runs.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of G.1X, G.2X, G.4X, G.8X or G.025X for Spark jobs.
    #   Accepts the value Z.2X for Ray jobs.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPUs, 16
    #     GB of memory) with 94GB disk, and provides 1 executor per worker.
    #     We recommend this worker type for workloads such as data
    #     transforms, joins, and queries, to offers a scalable and cost
    #     effective way to run most jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPUs, 32
    #     GB of memory) with 138GB disk, and provides 1 executor per worker.
    #     We recommend this worker type for workloads such as data
    #     transforms, joins, and queries, to offers a scalable and cost
    #     effective way to run most jobs.
    #
    #   * For the `G.4X` worker type, each worker maps to 4 DPU (16 vCPUs,
    #     64 GB of memory) with 256GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for jobs whose workloads
    #     contain your most demanding transforms, aggregations, joins, and
    #     queries. This worker type is available only for Glue version 3.0
    #     or later Spark ETL jobs in the following Amazon Web Services
    #     Regions: US East (Ohio), US East (N. Virginia), US West (Oregon),
    #     Asia Pacific (Singapore), Asia Pacific (Sydney), Asia Pacific
    #     (Tokyo), Canada (Central), Europe (Frankfurt), Europe (Ireland),
    #     and Europe (Stockholm).
    #
    #   * For the `G.8X` worker type, each worker maps to 8 DPU (32 vCPUs,
    #     128 GB of memory) with 512GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for jobs whose workloads
    #     contain your most demanding transforms, aggregations, joins, and
    #     queries. This worker type is available only for Glue version 3.0
    #     or later Spark ETL jobs, in the same Amazon Web Services Regions
    #     as supported for the `G.4X` worker type.
    #
    #   * For the `G.025X` worker type, each worker maps to 0.25 DPU (2
    #     vCPUs, 4 GB of memory) with 84GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for low volume streaming
    #     jobs. This worker type is only available for Glue version 3.0 or
    #     later streaming jobs.
    #
    #   * For the `Z.2X` worker type, each worker maps to 2 M-DPU (8vCPUs,
    #     64 GB of memory) with 128 GB disk, and provides up to 8 Ray
    #     workers based on the autoscaler.
    #   @return [String]
    #
    # @!attribute [rw] code_gen_configuration_nodes
    #   The representation of a directed acyclic graph on which both the
    #   Glue Studio visual component and Glue Studio code generation is
    #   based.
    #   @return [Hash<String,Types::CodeGenConfigurationNode>]
    #
    # @!attribute [rw] execution_class
    #   Indicates whether the job is run with a standard or flexible
    #   execution class. The standard execution-class is ideal for
    #   time-sensitive workloads that require fast job startup and dedicated
    #   resources.
    #
    #   The flexible execution class is appropriate for time-insensitive
    #   jobs whose start and completion times may vary.
    #
    #   Only jobs with Glue version 3.0 and above and command type `glueetl`
    #   will be allowed to set `ExecutionClass` to `FLEX`. The flexible
    #   execution class is available for Spark jobs.
    #   @return [String]
    #
    # @!attribute [rw] source_control_details
    #   The details for a source control configuration for a job, allowing
    #   synchronization of job artifacts to or from a remote repository.
    #   @return [Types::SourceControlDetails]
    #
    # @!attribute [rw] maintenance_window
    #   This field specifies a day of the week and hour for a maintenance
    #   window for streaming jobs. Glue periodically performs maintenance
    #   activities. During these maintenance windows, Glue will need to
    #   restart your streaming jobs.
    #
    #   Glue will restart the job within 3 hours of the specified
    #   maintenance window. For instance, if you set up the maintenance
    #   window for Monday at 10:00AM GMT, your jobs will be restarted
    #   between 10:00AM GMT to 1:00PM GMT.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateJobRequest AWS API Documentation
    #
    class CreateJobRequest < Struct.new(
      :name,
      :job_mode,
      :job_run_queuing_enabled,
      :description,
      :log_uri,
      :role,
      :execution_property,
      :command,
      :default_arguments,
      :non_overridable_arguments,
      :connections,
      :max_retries,
      :allocated_capacity,
      :timeout,
      :max_capacity,
      :security_configuration,
      :tags,
      :notification_property,
      :glue_version,
      :number_of_workers,
      :worker_type,
      :code_gen_configuration_nodes,
      :execution_class,
      :source_control_details,
      :maintenance_window)
      SENSITIVE = [:code_gen_configuration_nodes]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The unique name that was provided for this job definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateJobResponse AWS API Documentation
    #
    class CreateJobResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a JSON classifier for `CreateClassifier` to create.
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] json_path
    #   A `JsonPath` string defining the JSON data for the classifier to
    #   classify. Glue supports a subset of JsonPath, as described in
    #   [Writing JsonPath Custom Classifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateJsonClassifierRequest AWS API Documentation
    #
    class CreateJsonClassifierRequest < Struct.new(
      :name,
      :json_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The unique name that you give the transform when you create it.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the machine learning transform that is being
    #   defined. The default is an empty string.
    #   @return [String]
    #
    # @!attribute [rw] input_record_tables
    #   A list of Glue table definitions used by the transform.
    #   @return [Array<Types::GlueTable>]
    #
    # @!attribute [rw] parameters
    #   The algorithmic parameters that are specific to the transform type
    #   used. Conditionally dependent on the transform type.
    #   @return [Types::TransformParameters]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role with the
    #   required permissions. The required permissions include both Glue
    #   service role permissions to Glue resources, and Amazon S3
    #   permissions required by the transform.
    #
    #   * This role needs Glue service role permissions to allow access to
    #     resources in Glue. See [Attach a Policy to IAM Users That Access
    #     Glue][1].
    #
    #   * This role needs permission to your Amazon Simple Storage Service
    #     (Amazon S3) sources, targets, temporary directory, scripts, and
    #     any libraries used by the task run for this transform.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   This value determines which version of Glue this machine learning
    #   transform is compatible with. Glue 1.0 is recommended for most
    #   customers. If the value is not set, the Glue compatibility defaults
    #   to Glue 0.9. For more information, see [Glue Versions][1] in the
    #   developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The number of Glue data processing units (DPUs) that are allocated
    #   to task runs for this transform. You can allocate from 2 to 100
    #   DPUs; the default is 10. A DPU is a relative measure of processing
    #   power that consists of 4 vCPUs of compute capacity and 16 GB of
    #   memory. For more information, see the [Glue pricing page][1].
    #
    #   `MaxCapacity` is a mutually exclusive option with `NumberOfWorkers`
    #   and `WorkerType`.
    #
    #   * If either `NumberOfWorkers` or `WorkerType` is set, then
    #     `MaxCapacity` cannot be set.
    #
    #   * If `MaxCapacity` is set then neither `NumberOfWorkers` or
    #     `WorkerType` can be set.
    #
    #   * If `WorkerType` is set, then `NumberOfWorkers` is required (and
    #     vice versa).
    #
    #   * `MaxCapacity` and `NumberOfWorkers` must both be at least 1.
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when this task runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #
    #   `MaxCapacity` is a mutually exclusive option with `NumberOfWorkers`
    #   and `WorkerType`.
    #
    #   * If either `NumberOfWorkers` or `WorkerType` is set, then
    #     `MaxCapacity` cannot be set.
    #
    #   * If `MaxCapacity` is set then neither `NumberOfWorkers` or
    #     `WorkerType` can be set.
    #
    #   * If `WorkerType` is set, then `NumberOfWorkers` is required (and
    #     vice versa).
    #
    #   * `MaxCapacity` and `NumberOfWorkers` must both be at least 1.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when this task runs.
    #
    #   If `WorkerType` is set, then `NumberOfWorkers` is required (and vice
    #   versa).
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The timeout of the task run for this transform in minutes. This is
    #   the maximum time that a task run for this transform can consume
    #   resources before it is terminated and enters `TIMEOUT` status. The
    #   default is 2,880 minutes (48 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry a task for this transform after
    #   a task run fails.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tags to use with this machine learning transform. You may use
    #   tags to limit access to the machine learning transform. For more
    #   information about tags in Glue, see [Amazon Web Services Tags in
    #   Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transform_encryption
    #   The encryption-at-rest settings of the transform that apply to
    #   accessing user data. Machine learning transforms can access user
    #   data encrypted in Amazon S3 using KMS.
    #   @return [Types::TransformEncryption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateMLTransformRequest AWS API Documentation
    #
    class CreateMLTransformRequest < Struct.new(
      :name,
      :description,
      :input_record_tables,
      :parameters,
      :role,
      :glue_version,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :timeout,
      :max_retries,
      :tags,
      :transform_encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   A unique identifier that is generated for the transform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateMLTransformResponse AWS API Documentation
    #
    class CreateMLTransformResponse < Struct.new(
      :transform_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The catalog ID where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Specifies the name of a database in which you want to create a
    #   partition index.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   Specifies the name of a table in which you want to create a
    #   partition index.
    #   @return [String]
    #
    # @!attribute [rw] partition_index
    #   Specifies a `PartitionIndex` structure to create a partition index
    #   in an existing table.
    #   @return [Types::PartitionIndex]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreatePartitionIndexRequest AWS API Documentation
    #
    class CreatePartitionIndexRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreatePartitionIndexResponse AWS API Documentation
    #
    class CreatePartitionIndexResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The Amazon Web Services account ID of the catalog in which the
    #   partition is to be created.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the metadata database in which the partition is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the metadata table in which the partition is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] partition_input
    #   A `PartitionInput` structure defining the partition to be created.
    #   @return [Types::PartitionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreatePartitionRequest AWS API Documentation
    #
    class CreatePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreatePartitionResponse AWS API Documentation
    #
    class CreatePartitionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] registry_name
    #   Name of the registry to be created of max length of 255, and may
    #   only contain letters, numbers, hyphen, underscore, dollar sign, or
    #   hash mark. No whitespace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the registry. If description is not provided, there
    #   will not be any default value for this.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Amazon Web Services tags that contain a key value pair and may be
    #   searched by console, command line, or API.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateRegistryInput AWS API Documentation
    #
    class CreateRegistryInput < Struct.new(
      :registry_name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the newly created registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   The name of the registry.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the registry.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the registry.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateRegistryResponse AWS API Documentation
    #
    class CreateRegistryResponse < Struct.new(
      :registry_arn,
      :registry_name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   This is a wrapper shape to contain the registry identity fields. If
    #   this is not provided, the default registry will be used. The ARN
    #   format for the same will be: `arn:aws:glue:us-east-2:<customer
    #   id>:registry/default-registry:random-5-letter-id`.
    #   @return [Types::RegistryId]
    #
    # @!attribute [rw] schema_name
    #   Name of the schema to be created of max length of 255, and may only
    #   contain letters, numbers, hyphen, underscore, dollar sign, or hash
    #   mark. No whitespace.
    #   @return [String]
    #
    # @!attribute [rw] data_format
    #   The data format of the schema definition. Currently `AVRO`, `JSON`
    #   and `PROTOBUF` are supported.
    #   @return [String]
    #
    # @!attribute [rw] compatibility
    #   The compatibility mode of the schema. The possible values are:
    #
    #   * *NONE*: No compatibility mode applies. You can use this choice in
    #     development scenarios or if you do not know the compatibility mode
    #     that you want to apply to schemas. Any new version added will be
    #     accepted without undergoing a compatibility check.
    #
    #   * *DISABLED*: This compatibility choice prevents versioning for a
    #     particular schema. You can use this choice to prevent future
    #     versioning of a schema.
    #
    #   * *BACKWARD*: This compatibility choice is recommended as it allows
    #     data receivers to read both the current and one previous schema
    #     version. This means that for instance, a new schema version cannot
    #     drop data fields or change the type of these fields, so they
    #     can't be read by readers using the previous version.
    #
    #   * *BACKWARD\_ALL*: This compatibility choice allows data receivers
    #     to read both the current and all previous schema versions. You can
    #     use this choice when you need to delete fields or add optional
    #     fields, and check compatibility against all previous schema
    #     versions.
    #
    #   * *FORWARD*: This compatibility choice allows data receivers to read
    #     both the current and one next schema version, but not necessarily
    #     later versions. You can use this choice when you need to add
    #     fields or delete optional fields, but only check compatibility
    #     against the last schema version.
    #
    #   * *FORWARD\_ALL*: This compatibility choice allows data receivers to
    #     read written by producers of any new registered schema. You can
    #     use this choice when you need to add fields or delete optional
    #     fields, and check compatibility against all previous schema
    #     versions.
    #
    #   * *FULL*: This compatibility choice allows data receivers to read
    #     data written by producers using the previous or next version of
    #     the schema, but not necessarily earlier or later versions. You can
    #     use this choice when you need to add or remove optional fields,
    #     but only check compatibility against the last schema version.
    #
    #   * *FULL\_ALL*: This compatibility choice allows data receivers to
    #     read data written by producers using all previous schema versions.
    #     You can use this choice when you need to add or remove optional
    #     fields, and check compatibility against all previous schema
    #     versions.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the schema. If description is not
    #   provided, there will not be any automatic default value for this.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Amazon Web Services tags that contain a key value pair and may be
    #   searched by console, command line, or API. If specified, follows the
    #   Amazon Web Services tags-on-create pattern.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] schema_definition
    #   The schema definition using the `DataFormat` setting for
    #   `SchemaName`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateSchemaInput AWS API Documentation
    #
    class CreateSchemaInput < Struct.new(
      :registry_id,
      :schema_name,
      :data_format,
      :compatibility,
      :description,
      :tags,
      :schema_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_name
    #   The name of the registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the registry.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the schema if specified when created.
    #   @return [String]
    #
    # @!attribute [rw] data_format
    #   The data format of the schema definition. Currently `AVRO`, `JSON`
    #   and `PROTOBUF` are supported.
    #   @return [String]
    #
    # @!attribute [rw] compatibility
    #   The schema compatibility mode.
    #   @return [String]
    #
    # @!attribute [rw] schema_checkpoint
    #   The version number of the checkpoint (the last time the
    #   compatibility mode was changed).
    #   @return [Integer]
    #
    # @!attribute [rw] latest_schema_version
    #   The latest version of the schema associated with the returned schema
    #   definition.
    #   @return [Integer]
    #
    # @!attribute [rw] next_schema_version
    #   The next version of the schema associated with the returned schema
    #   definition.
    #   @return [Integer]
    #
    # @!attribute [rw] schema_status
    #   The status of the schema.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the schema.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] schema_version_id
    #   The unique identifier of the first schema version.
    #   @return [String]
    #
    # @!attribute [rw] schema_version_status
    #   The status of the first schema version created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateSchemaResponse AWS API Documentation
    #
    class CreateSchemaResponse < Struct.new(
      :registry_name,
      :registry_arn,
      :schema_name,
      :schema_arn,
      :description,
      :data_format,
      :compatibility,
      :schema_checkpoint,
      :latest_schema_version,
      :next_schema_version,
      :schema_status,
      :tags,
      :schema_version_id,
      :schema_version_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dag_nodes
    #   A list of the nodes in the DAG.
    #   @return [Array<Types::CodeGenNode>]
    #
    # @!attribute [rw] dag_edges
    #   A list of the edges in the DAG.
    #   @return [Array<Types::CodeGenEdge>]
    #
    # @!attribute [rw] language
    #   The programming language of the resulting code from the DAG.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateScriptRequest AWS API Documentation
    #
    class CreateScriptRequest < Struct.new(
      :dag_nodes,
      :dag_edges,
      :language)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] python_script
    #   The Python script generated from the DAG.
    #   @return [String]
    #
    # @!attribute [rw] scala_code
    #   The Scala code generated from the DAG.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateScriptResponse AWS API Documentation
    #
    class CreateScriptResponse < Struct.new(
      :python_script,
      :scala_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name for the new security configuration.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration for the new security configuration.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateSecurityConfigurationRequest AWS API Documentation
    #
    class CreateSecurityConfigurationRequest < Struct.new(
      :name,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name assigned to the new security configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the new security configuration was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateSecurityConfigurationResponse AWS API Documentation
    #
    class CreateSecurityConfigurationResponse < Struct.new(
      :name,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to create a new session.
    #
    # @!attribute [rw] id
    #   The ID of the session request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the session.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM Role ARN
    #   @return [String]
    #
    # @!attribute [rw] command
    #   The `SessionCommand` that runs the job.
    #   @return [Types::SessionCommand]
    #
    # @!attribute [rw] timeout
    #   The number of minutes before session times out. Default for Spark
    #   ETL jobs is 48 hours (2880 minutes). Consult the documentation for
    #   other job types.
    #   @return [Integer]
    #
    # @!attribute [rw] idle_timeout
    #   The number of minutes when idle before session times out. Default
    #   for Spark ETL jobs is value of Timeout. Consult the documentation
    #   for other job types.
    #   @return [Integer]
    #
    # @!attribute [rw] default_arguments
    #   A map array of key-value pairs. Max is 75 pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connections
    #   The number of connections to use for the session.
    #   @return [Types::ConnectionsList]
    #
    # @!attribute [rw] max_capacity
    #   The number of Glue data processing units (DPUs) that can be
    #   allocated when the job runs. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB memory.
    #   @return [Float]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `WorkerType` to use for the
    #   session.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of G.1X, G.2X, G.4X, or G.8X for Spark jobs. Accepts
    #   the value Z.2X for Ray notebooks.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPUs, 16
    #     GB of memory) with 94GB disk, and provides 1 executor per worker.
    #     We recommend this worker type for workloads such as data
    #     transforms, joins, and queries, to offers a scalable and cost
    #     effective way to run most jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPUs, 32
    #     GB of memory) with 138GB disk, and provides 1 executor per worker.
    #     We recommend this worker type for workloads such as data
    #     transforms, joins, and queries, to offers a scalable and cost
    #     effective way to run most jobs.
    #
    #   * For the `G.4X` worker type, each worker maps to 4 DPU (16 vCPUs,
    #     64 GB of memory) with 256GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for jobs whose workloads
    #     contain your most demanding transforms, aggregations, joins, and
    #     queries. This worker type is available only for Glue version 3.0
    #     or later Spark ETL jobs in the following Amazon Web Services
    #     Regions: US East (Ohio), US East (N. Virginia), US West (Oregon),
    #     Asia Pacific (Singapore), Asia Pacific (Sydney), Asia Pacific
    #     (Tokyo), Canada (Central), Europe (Frankfurt), Europe (Ireland),
    #     and Europe (Stockholm).
    #
    #   * For the `G.8X` worker type, each worker maps to 8 DPU (32 vCPUs,
    #     128 GB of memory) with 512GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for jobs whose workloads
    #     contain your most demanding transforms, aggregations, joins, and
    #     queries. This worker type is available only for Glue version 3.0
    #     or later Spark ETL jobs, in the same Amazon Web Services Regions
    #     as supported for the `G.4X` worker type.
    #
    #   * For the `Z.2X` worker type, each worker maps to 2 M-DPU (8vCPUs,
    #     64 GB of memory) with 128 GB disk, and provides up to 8 Ray
    #     workers based on the autoscaler.
    #   @return [String]
    #
    # @!attribute [rw] security_configuration
    #   The name of the SecurityConfiguration structure to be used with the
    #   session
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   The Glue version determines the versions of Apache Spark and Python
    #   that Glue supports. The GlueVersion must be greater than 2.0.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The map of key value pairs (tags) belonging to the session.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_origin
    #   The origin of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateSessionRequest AWS API Documentation
    #
    class CreateSessionRequest < Struct.new(
      :id,
      :description,
      :role,
      :command,
      :timeout,
      :idle_timeout,
      :default_arguments,
      :connections,
      :max_capacity,
      :number_of_workers,
      :worker_type,
      :security_configuration,
      :glue_version,
      :tags,
      :request_origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   Returns the session object in the response.
    #   @return [Types::Session]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateSessionResponse AWS API Documentation
    #
    class CreateSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The Catalog ID of the table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database in the catalog in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of table optimizer.
    #   @return [String]
    #
    # @!attribute [rw] table_optimizer_configuration
    #   A `TableOptimizerConfiguration` object representing the
    #   configuration of a table optimizer.
    #   @return [Types::TableOptimizerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTableOptimizerRequest AWS API Documentation
    #
    class CreateTableOptimizerRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :type,
      :table_optimizer_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTableOptimizerResponse AWS API Documentation
    #
    class CreateTableOptimizerResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which to create the `Table`. If none
    #   is supplied, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The catalog database in which to create the new table. For Hive
    #   compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique identifier for the table within the specified database
    #   that will be created in the Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] table_input
    #   The `TableInput` object that defines the metadata table to create in
    #   the catalog.
    #   @return [Types::TableInput]
    #
    # @!attribute [rw] partition_indexes
    #   A list of partition indexes, `PartitionIndex` structures, to create
    #   in the table.
    #   @return [Array<Types::PartitionIndex>]
    #
    # @!attribute [rw] transaction_id
    #   The ID of the transaction.
    #   @return [String]
    #
    # @!attribute [rw] open_table_format_input
    #   Specifies an `OpenTableFormatInput` structure when creating an open
    #   format table.
    #   @return [Types::OpenTableFormatInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTableRequest AWS API Documentation
    #
    class CreateTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :table_input,
      :partition_indexes,
      :transaction_id,
      :open_table_format_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTableResponse AWS API Documentation
    #
    class CreateTableResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the trigger.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow associated with the trigger.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the new trigger.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
    #
    #   This field is required when the trigger type is SCHEDULED.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #   @return [String]
    #
    # @!attribute [rw] predicate
    #   A predicate to specify when the new trigger should fire.
    #
    #   This field is required when the trigger type is `CONDITIONAL`.
    #   @return [Types::Predicate]
    #
    # @!attribute [rw] actions
    #   The actions initiated by this trigger when it fires.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] description
    #   A description of the new trigger.
    #   @return [String]
    #
    # @!attribute [rw] start_on_creation
    #   Set to `true` to start `SCHEDULED` and `CONDITIONAL` triggers when
    #   created. True is not supported for `ON_DEMAND` triggers.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to use with this trigger. You may use tags to limit access
    #   to the trigger. For more information about tags in Glue, see [Amazon
    #   Web Services Tags in Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] event_batching_condition
    #   Batch condition that must be met (specified number of events
    #   received or batch time window expired) before EventBridge event
    #   trigger fires.
    #   @return [Types::EventBatchingCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTriggerRequest AWS API Documentation
    #
    class CreateTriggerRequest < Struct.new(
      :name,
      :workflow_name,
      :type,
      :schedule,
      :predicate,
      :actions,
      :description,
      :start_on_creation,
      :tags,
      :event_batching_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trigger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTriggerResponse AWS API Documentation
    #
    class CreateTriggerResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the usage profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the usage profile.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   A `ProfileConfiguration` object specifying the job and session
    #   values for the profile.
    #   @return [Types::ProfileConfiguration]
    #
    # @!attribute [rw] tags
    #   A list of tags applied to the usage profile.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateUsageProfileRequest AWS API Documentation
    #
    class CreateUsageProfileRequest < Struct.new(
      :name,
      :description,
      :configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the usage profile that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateUsageProfileResponse AWS API Documentation
    #
    class CreateUsageProfileResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which to create the function. If none
    #   is provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which to create the function.
    #   @return [String]
    #
    # @!attribute [rw] function_input
    #   A `FunctionInput` object that defines the function to create in the
    #   Data Catalog.
    #   @return [Types::UserDefinedFunctionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateUserDefinedFunctionRequest AWS API Documentation
    #
    class CreateUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateUserDefinedFunctionResponse AWS API Documentation
    #
    class CreateUserDefinedFunctionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name to be assigned to the workflow. It should be unique within
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] default_run_properties
    #   A collection of properties to be used as part of each execution of
    #   the workflow.
    #
    #   Run properties may be logged. Do not pass plaintext secrets as
    #   properties. Retrieve secrets from a Glue Connection, Amazon Web
    #   Services Secrets Manager or other secret management mechanism if you
    #   intend to use them within the workflow run.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags to be used with this workflow.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_concurrent_runs
    #   You can use this parameter to prevent unwanted multiple updates to
    #   data, to control costs, or in some cases, to prevent exceeding the
    #   maximum number of concurrent runs of any of the component jobs. If
    #   you leave this parameter blank, there is no limit to the number of
    #   concurrent workflow runs.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateWorkflowRequest AWS API Documentation
    #
    class CreateWorkflowRequest < Struct.new(
      :name,
      :description,
      :default_run_properties,
      :tags,
      :max_concurrent_runs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workflow which was provided as part of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateWorkflowResponse AWS API Documentation
    #
    class CreateWorkflowResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an XML classifier for `CreateClassifier` to create.
    #
    # @!attribute [rw] classification
    #   An identifier of the data format that the classifier matches.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] row_tag
    #   The XML tag designating the element that contains each record in an
    #   XML document being parsed. This can't identify a self-closing
    #   element (closed by `/>`). An empty row element that contains only
    #   attributes can be parsed as long as it ends with a closing tag (for
    #   example, `<row item_a="A" item_b="B"></row>` is okay, but `<row
    #   item_a="A" item_b="B" />` is not).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateXMLClassifierRequest AWS API Documentation
    #
    class CreateXMLClassifierRequest < Struct.new(
      :classification,
      :name,
      :row_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # A classifier for custom `CSV` content.
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that this classifier was registered.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The time that this classifier was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of this classifier.
    #   @return [Integer]
    #
    # @!attribute [rw] delimiter
    #   A custom symbol to denote what separates each column entry in the
    #   row.
    #   @return [String]
    #
    # @!attribute [rw] quote_symbol
    #   A custom symbol to denote what combines content into a single column
    #   value. It must be different from the column delimiter.
    #   @return [String]
    #
    # @!attribute [rw] contains_header
    #   Indicates whether the CSV file contains a header.
    #   @return [String]
    #
    # @!attribute [rw] header
    #   A list of strings representing column names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disable_value_trimming
    #   Specifies not to trim values before identifying the type of column
    #   values. The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_single_column
    #   Enables the processing of files that contain only one column.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_datatype_configured
    #   Enables the custom datatype to be configured.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_datatypes
    #   A list of custom datatypes including "BINARY", "BOOLEAN",
    #   "DATE", "DECIMAL", "DOUBLE", "FLOAT", "INT", "LONG",
    #   "SHORT", "STRING", "TIMESTAMP".
    #   @return [Array<String>]
    #
    # @!attribute [rw] serde
    #   Sets the SerDe for processing CSV in the classifier, which will be
    #   applied in the Data Catalog. Valid values are `OpenCSVSerDe`,
    #   `LazySimpleSerDe`, and `None`. You can specify the `None` value when
    #   you want the crawler to do the detection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CsvClassifier AWS API Documentation
    #
    class CsvClassifier < Struct.new(
      :name,
      :creation_time,
      :last_updated,
      :version,
      :delimiter,
      :quote_symbol,
      :contains_header,
      :header,
      :disable_value_trimming,
      :allow_single_column,
      :custom_datatype_configured,
      :custom_datatypes,
      :serde)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that uses custom code you provide to perform the
    # data transformation. The output is a collection of DynamicFrames.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] code
    #   The custom code that is used to perform the data transformation.
    #   @return [String]
    #
    # @!attribute [rw] class_name
    #   The name defined for the custom code node class.
    #   @return [String]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the custom code transform.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CustomCode AWS API Documentation
    #
    class CustomCode < Struct.new(
      :name,
      :inputs,
      :code,
      :class_name,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a custom pattern for detecting sensitive data
    # across the columns and rows of your structured data.
    #
    # @!attribute [rw] name
    #   A name for the custom pattern that allows it to be retrieved or
    #   deleted later. This name must be unique per Amazon Web Services
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] regex_string
    #   A regular expression string that is used for detecting sensitive
    #   data in a custom pattern.
    #   @return [String]
    #
    # @!attribute [rw] context_words
    #   A list of context words. If none of these context words are found
    #   within the vicinity of the regular expression the data will not be
    #   detected as sensitive data.
    #
    #   If no context words are passed only a regular expression is checked.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CustomEntityType AWS API Documentation
    #
    class CustomEntityType < Struct.new(
      :name,
      :regex_string,
      :context_words)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to configure how your data quality evaluation results are
    # published.
    #
    # @!attribute [rw] evaluation_context
    #   The context of the evaluation.
    #   @return [String]
    #
    # @!attribute [rw] results_s3_prefix
    #   The Amazon S3 prefix prepended to the results.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_metrics_enabled
    #   Enable metrics for your data quality results.
    #   @return [Boolean]
    #
    # @!attribute [rw] results_publishing_enabled
    #   Enable publishing for your data quality results.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DQResultsPublishingOptions AWS API Documentation
    #
    class DQResultsPublishingOptions < Struct.new(
      :evaluation_context,
      :results_s3_prefix,
      :cloud_watch_metrics_enabled,
      :results_publishing_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to configure how your job will stop if your data quality
    # evaluation fails.
    #
    # @!attribute [rw] stop_job_on_failure_timing
    #   When to stop job if your data quality evaluation fails. Options are
    #   Immediate or AfterDataLoad.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DQStopJobOnFailureOptions AWS API Documentation
    #
    class DQStopJobOnFailureOptions < Struct.new(
      :stop_job_on_failure_timing)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information for maintaining Data Catalog
    # security.
    #
    # @!attribute [rw] encryption_at_rest
    #   Specifies the encryption-at-rest configuration for the Data Catalog.
    #   @return [Types::EncryptionAtRest]
    #
    # @!attribute [rw] connection_password_encryption
    #   When connection password protection is enabled, the Data Catalog
    #   uses a customer-provided key to encrypt the password as part of
    #   `CreateConnection` or `UpdateConnection` and store it in the
    #   `ENCRYPTED_PASSWORD` field in the connection properties. You can
    #   enable catalog encryption or only password encryption.
    #   @return [Types::ConnectionPasswordEncryption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataCatalogEncryptionSettings AWS API Documentation
    #
    class DataCatalogEncryptionSettings < Struct.new(
      :encryption_at_rest,
      :connection_password_encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input properties to configure data lake access for your catalog
    # resource in the Glue Data Catalog.
    #
    # @!attribute [rw] data_lake_access
    #   Turns on or off data lake access for Apache Spark applications that
    #   access Amazon Redshift databases in the Data Catalog from any
    #   non-Redshift engine, such as Amazon Athena, Amazon EMR, or Glue ETL.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_transfer_role
    #   A role that will be assumed by Glue for transferring data into/out
    #   of the staging bucket during a query.
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   An encryption key that will be used for the staging bucket that will
    #   be created along with the catalog.
    #   @return [String]
    #
    # @!attribute [rw] catalog_type
    #   Specifies a federated catalog type for the native catalog resource.
    #   The currently supported type is `aws:redshift`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataLakeAccessProperties AWS API Documentation
    #
    class DataLakeAccessProperties < Struct.new(
      :data_lake_access,
      :data_transfer_role,
      :kms_key,
      :catalog_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output properties of the data lake access configuration for your
    # catalog resource in the Glue Data Catalog.
    #
    # @!attribute [rw] data_lake_access
    #   Turns on or off data lake access for Apache Spark applications that
    #   access Amazon Redshift databases in the Data Catalog.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_transfer_role
    #   A role that will be assumed by Glue for transferring data into/out
    #   of the staging bucket during a query.
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   An encryption key that will be used for the staging bucket that will
    #   be created along with the catalog.
    #   @return [String]
    #
    # @!attribute [rw] managed_workgroup_name
    #   The managed Redshift Serverless compute name that is created for
    #   your catalog resource.
    #   @return [String]
    #
    # @!attribute [rw] managed_workgroup_status
    #   The managed Redshift Serverless compute status.
    #   @return [String]
    #
    # @!attribute [rw] redshift_database_name
    #   The default Redshift database resource name in the managed compute.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message that gives more detailed information about the managed
    #   workgroup status.
    #   @return [String]
    #
    # @!attribute [rw] catalog_type
    #   Specifies a federated catalog type for the native catalog resource.
    #   The currently supported type is `aws:redshift`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataLakeAccessPropertiesOutput AWS API Documentation
    #
    class DataLakeAccessPropertiesOutput < Struct.new(
      :data_lake_access,
      :data_transfer_role,
      :kms_key,
      :managed_workgroup_name,
      :managed_workgroup_status,
      :redshift_database_name,
      :status_message,
      :catalog_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Lake Formation principal.
    #
    # @!attribute [rw] data_lake_principal_identifier
    #   An identifier for the Lake Formation principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataLakePrincipal AWS API Documentation
    #
    class DataLakePrincipal < Struct.new(
      :data_lake_principal_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of metrics showing the total counts of processed rows and
    # rules, including their pass/fail statistics based on row-level
    # results.
    #
    # @!attribute [rw] total_rows_processed
    #   The total number of rows that were processed during the data quality
    #   evaluation.
    #   @return [Float]
    #
    # @!attribute [rw] total_rows_passed
    #   The total number of rows that passed all applicable data quality
    #   rules.
    #   @return [Float]
    #
    # @!attribute [rw] total_rows_failed
    #   The total number of rows that failed one or more data quality rules.
    #   @return [Float]
    #
    # @!attribute [rw] total_rules_processed
    #   The total number of data quality rules that were evaluated.
    #   @return [Float]
    #
    # @!attribute [rw] total_rules_passed
    #   The total number of data quality rules that passed their evaluation
    #   criteria.
    #   @return [Float]
    #
    # @!attribute [rw] total_rules_failed
    #   The total number of data quality rules that failed their evaluation
    #   criteria.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityAggregatedMetrics AWS API Documentation
    #
    class DataQualityAggregatedMetrics < Struct.new(
      :total_rows_processed,
      :total_rows_passed,
      :total_rows_failed,
      :total_rules_processed,
      :total_rules_passed,
      :total_rules_failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the result of the evaluation of a data quality analyzer.
    #
    # @!attribute [rw] name
    #   The name of the data quality analyzer.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the data quality analyzer.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_message
    #   An evaluation message.
    #   @return [String]
    #
    # @!attribute [rw] evaluated_metrics
    #   A map of metrics associated with the evaluation of the analyzer.
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityAnalyzerResult AWS API Documentation
    #
    class DataQualityAnalyzerResult < Struct.new(
      :name,
      :description,
      :evaluation_message,
      :evaluated_metrics)
      SENSITIVE = [:description, :evaluation_message, :evaluated_metrics]
      include Aws::Structure
    end

    # Specifies how Data Quality assets in your account should be encrypted.
    #
    # @!attribute [rw] data_quality_encryption_mode
    #   The encryption mode to use for encrypting Data Quality assets. These
    #   assets include data quality rulesets, results, statistics, anomaly
    #   detection models and observations.
    #
    #   Valid values are `SSEKMS` for encryption using a customer-managed
    #   KMS key, or `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to be used to encrypt
    #   the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityEncryption AWS API Documentation
    #
    class DataQualityEncryption < Struct.new(
      :data_quality_encryption_mode,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional run options you can specify for an evaluation run.
    #
    # @!attribute [rw] cloud_watch_metrics_enabled
    #   Whether or not to enable CloudWatch metrics.
    #   @return [Boolean]
    #
    # @!attribute [rw] results_s3_prefix
    #   Prefix for Amazon S3 to store results.
    #   @return [String]
    #
    # @!attribute [rw] composite_rule_evaluation_method
    #   Set the evaluation method for composite rules in the ruleset to
    #   ROW/COLUMN
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityEvaluationRunAdditionalRunOptions AWS API Documentation
    #
    class DataQualityEvaluationRunAdditionalRunOptions < Struct.new(
      :cloud_watch_metrics_enabled,
      :results_s3_prefix,
      :composite_rule_evaluation_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the data quality metric value according to the analysis of
    # historical data.
    #
    # @!attribute [rw] actual_value
    #   The actual value of the data quality metric.
    #   @return [Float]
    #
    # @!attribute [rw] expected_value
    #   The expected value of the data quality metric according to the
    #   analysis of historical data.
    #   @return [Float]
    #
    # @!attribute [rw] lower_limit
    #   The lower limit of the data quality metric value according to the
    #   analysis of historical data.
    #   @return [Float]
    #
    # @!attribute [rw] upper_limit
    #   The upper limit of the data quality metric value according to the
    #   analysis of historical data.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityMetricValues AWS API Documentation
    #
    class DataQualityMetricValues < Struct.new(
      :actual_value,
      :expected_value,
      :lower_limit,
      :upper_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the observation generated after evaluating the rules and
    # analyzers.
    #
    # @!attribute [rw] description
    #   A description of the data quality observation.
    #   @return [String]
    #
    # @!attribute [rw] metric_based_observation
    #   An object of type `MetricBasedObservation` representing the
    #   observation that is based on evaluated data quality metrics.
    #   @return [Types::MetricBasedObservation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityObservation AWS API Documentation
    #
    class DataQualityObservation < Struct.new(
      :description,
      :metric_based_observation)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Describes a data quality result.
    #
    # @!attribute [rw] result_id
    #   A unique result ID for the data quality result.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The Profile ID for the data quality result.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   An aggregate data quality score. Represents the ratio of rules that
    #   passed to the total number of rules.
    #   @return [Float]
    #
    # @!attribute [rw] data_source
    #   The table associated with the data quality result, if any.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] ruleset_name
    #   The name of the ruleset associated with the data quality result.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_context
    #   In the context of a job in Glue Studio, each node in the canvas is
    #   typically assigned some sort of name and data quality nodes will
    #   have names. In the case of multiple nodes, the `evaluationContext`
    #   can differentiate the nodes.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time when this data quality run started.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The date and time when this data quality run completed.
    #   @return [Time]
    #
    # @!attribute [rw] job_name
    #   The job name associated with the data quality result, if any.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The job run ID associated with the data quality result, if any.
    #   @return [String]
    #
    # @!attribute [rw] ruleset_evaluation_run_id
    #   The unique run ID for the ruleset evaluation for this data quality
    #   result.
    #   @return [String]
    #
    # @!attribute [rw] rule_results
    #   A list of `DataQualityRuleResult` objects representing the results
    #   for each rule.
    #   @return [Array<Types::DataQualityRuleResult>]
    #
    # @!attribute [rw] analyzer_results
    #   A list of `DataQualityAnalyzerResult` objects representing the
    #   results for each analyzer.
    #   @return [Array<Types::DataQualityAnalyzerResult>]
    #
    # @!attribute [rw] observations
    #   A list of `DataQualityObservation` objects representing the
    #   observations generated after evaluating the rules and analyzers.
    #   @return [Array<Types::DataQualityObservation>]
    #
    # @!attribute [rw] aggregated_metrics
    #   A summary of `DataQualityAggregatedMetrics` objects showing the
    #   total counts of processed rows and rules, including their pass/fail
    #   statistics based on row-level results.
    #   @return [Types::DataQualityAggregatedMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityResult AWS API Documentation
    #
    class DataQualityResult < Struct.new(
      :result_id,
      :profile_id,
      :score,
      :data_source,
      :ruleset_name,
      :evaluation_context,
      :started_on,
      :completed_on,
      :job_name,
      :job_run_id,
      :ruleset_evaluation_run_id,
      :rule_results,
      :analyzer_results,
      :observations,
      :aggregated_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a data quality result.
    #
    # @!attribute [rw] result_id
    #   The unique result ID for this data quality result.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The table name associated with the data quality result.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] job_name
    #   The job name associated with the data quality result.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The job run ID associated with the data quality result.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The time that the run started for this data quality result.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityResultDescription AWS API Documentation
    #
    class DataQualityResultDescription < Struct.new(
      :result_id,
      :data_source,
      :job_name,
      :job_run_id,
      :started_on)
      SENSITIVE = []
      include Aws::Structure
    end

    # Criteria used to return data quality results.
    #
    # @!attribute [rw] data_source
    #   Filter results by the specified data source. For example, retrieving
    #   all results for an Glue table.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] job_name
    #   Filter results by the specified job name.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   Filter results by the specified job run ID.
    #   @return [String]
    #
    # @!attribute [rw] started_after
    #   Filter results by runs that started after this time.
    #   @return [Time]
    #
    # @!attribute [rw] started_before
    #   Filter results by runs that started before this time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityResultFilterCriteria AWS API Documentation
    #
    class DataQualityResultFilterCriteria < Struct.new(
      :data_source,
      :job_name,
      :job_run_id,
      :started_after,
      :started_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the result of a data quality rule recommendation run.
    #
    # @!attribute [rw] run_id
    #   The unique run identifier associated with this run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for this run.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time when this run started.
    #   @return [Time]
    #
    # @!attribute [rw] data_source
    #   The data source (Glue table) associated with the recommendation run.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityRuleRecommendationRunDescription AWS API Documentation
    #
    class DataQualityRuleRecommendationRunDescription < Struct.new(
      :run_id,
      :status,
      :started_on,
      :data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for listing data quality recommendation runs.
    #
    # @!attribute [rw] data_source
    #   Filter based on a specified data source (Glue table).
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] started_before
    #   Filter based on time for results started before provided time.
    #   @return [Time]
    #
    # @!attribute [rw] started_after
    #   Filter based on time for results started after provided time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityRuleRecommendationRunFilter AWS API Documentation
    #
    class DataQualityRuleRecommendationRunFilter < Struct.new(
      :data_source,
      :started_before,
      :started_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the result of the evaluation of a data quality rule.
    #
    # @!attribute [rw] name
    #   The name of the data quality rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the data quality rule.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_message
    #   An evaluation message.
    #   @return [String]
    #
    # @!attribute [rw] result
    #   A pass or fail status for the rule.
    #   @return [String]
    #
    # @!attribute [rw] evaluated_metrics
    #   A map of metrics associated with the evaluation of the rule.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] evaluated_rule
    #   The evaluated rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_metrics
    #   A map containing metrics associated with the evaluation of the rule
    #   based on row-level results.
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityRuleResult AWS API Documentation
    #
    class DataQualityRuleResult < Struct.new(
      :name,
      :description,
      :evaluation_message,
      :result,
      :evaluated_metrics,
      :evaluated_rule,
      :rule_metrics)
      SENSITIVE = [:description, :evaluation_message, :evaluated_metrics, :evaluated_rule, :rule_metrics]
      include Aws::Structure
    end

    # Describes the result of a data quality ruleset evaluation run.
    #
    # @!attribute [rw] run_id
    #   The unique run identifier associated with this run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for this run.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time when the run started.
    #   @return [Time]
    #
    # @!attribute [rw] data_source
    #   The data source (an Glue table) associated with the run.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityRulesetEvaluationRunDescription AWS API Documentation
    #
    class DataQualityRulesetEvaluationRunDescription < Struct.new(
      :run_id,
      :status,
      :started_on,
      :data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter criteria.
    #
    # @!attribute [rw] data_source
    #   Filter based on a data source (an Glue table) associated with the
    #   run.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] started_before
    #   Filter results by runs that started before this time.
    #   @return [Time]
    #
    # @!attribute [rw] started_after
    #   Filter results by runs that started after this time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityRulesetEvaluationRunFilter AWS API Documentation
    #
    class DataQualityRulesetEvaluationRunFilter < Struct.new(
      :data_source,
      :started_before,
      :started_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # The criteria used to filter data quality rulesets.
    #
    # @!attribute [rw] name
    #   The name of the ruleset filter criteria.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ruleset filter criteria.
    #   @return [String]
    #
    # @!attribute [rw] created_before
    #   Filter on rulesets created before this date.
    #   @return [Time]
    #
    # @!attribute [rw] created_after
    #   Filter on rulesets created after this date.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_before
    #   Filter on rulesets last modified before this date.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_after
    #   Filter on rulesets last modified after this date.
    #   @return [Time]
    #
    # @!attribute [rw] target_table
    #   The name and database name of the target table.
    #   @return [Types::DataQualityTargetTable]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityRulesetFilterCriteria AWS API Documentation
    #
    class DataQualityRulesetFilterCriteria < Struct.new(
      :name,
      :description,
      :created_before,
      :created_after,
      :last_modified_before,
      :last_modified_after,
      :target_table)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a data quality ruleset returned by `GetDataQualityRuleset`.
    #
    # @!attribute [rw] name
    #   The name of the data quality ruleset.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the data quality ruleset.
    #   @return [String]
    #
    # @!attribute [rw] created_on
    #   The date and time the data quality ruleset was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The date and time the data quality ruleset was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] target_table
    #   An object representing an Glue table.
    #   @return [Types::DataQualityTargetTable]
    #
    # @!attribute [rw] recommendation_run_id
    #   When a ruleset was created from a recommendation run, this run ID is
    #   generated to link the two together.
    #   @return [String]
    #
    # @!attribute [rw] rule_count
    #   The number of rules in the ruleset.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityRulesetListDetails AWS API Documentation
    #
    class DataQualityRulesetListDetails < Struct.new(
      :name,
      :description,
      :created_on,
      :last_modified_on,
      :target_table,
      :recommendation_run_id,
      :rule_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Glue table.
    #
    # @!attribute [rw] table_name
    #   The name of the Glue table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database where the Glue table exists.
    #   @return [String]
    #
    # @!attribute [rw] catalog_id
    #   The catalog id where the Glue table exists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataQualityTargetTable AWS API Documentation
    #
    class DataQualityTargetTable < Struct.new(
      :table_name,
      :database_name,
      :catalog_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data source (an Glue table) for which you want data quality results.
    #
    # @!attribute [rw] glue_table
    #   An Glue table.
    #   @return [Types::GlueTable]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :glue_table)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `Database` object represents a logical grouping of tables that
    # might reside in a Hive metastore or an RDBMS.
    #
    # @!attribute [rw] name
    #   The name of the database. For Hive compatibility, this is folded to
    #   lowercase when it is stored.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the database.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The location of the database (for example, an HDFS path).
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define parameters and properties of the
    #   database.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] create_time
    #   The time at which the metadata database was created in the catalog.
    #   @return [Time]
    #
    # @!attribute [rw] create_table_default_permissions
    #   Creates a set of default permissions on the table for principals.
    #   Used by Lake Formation. Not used in the normal course of Glue
    #   operations.
    #   @return [Array<Types::PrincipalPermissions>]
    #
    # @!attribute [rw] target_database
    #   A `DatabaseIdentifier` structure that describes a target database
    #   for resource linking.
    #   @return [Types::DatabaseIdentifier]
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the database resides.
    #   @return [String]
    #
    # @!attribute [rw] federated_database
    #   A `FederatedDatabase` structure that references an entity outside
    #   the Glue Data Catalog.
    #   @return [Types::FederatedDatabase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Database AWS API Documentation
    #
    class Database < Struct.new(
      :name,
      :description,
      :location_uri,
      :parameters,
      :create_time,
      :create_table_default_permissions,
      :target_database,
      :catalog_id,
      :federated_database)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes a target database for resource linking.
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the database resides.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Region of the target database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DatabaseIdentifier AWS API Documentation
    #
    class DatabaseIdentifier < Struct.new(
      :catalog_id,
      :database_name,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure used to create or update a database.
    #
    # @!attribute [rw] name
    #   The name of the database. For Hive compatibility, this is folded to
    #   lowercase when it is stored.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the database.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The location of the database (for example, an HDFS path).
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define parameters and properties of the
    #   database.
    #
    #   These key-value pairs define parameters and properties of the
    #   database.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] create_table_default_permissions
    #   Creates a set of default permissions on the table for principals.
    #   Used by Lake Formation. Not used in the normal course of Glue
    #   operations.
    #   @return [Array<Types::PrincipalPermissions>]
    #
    # @!attribute [rw] target_database
    #   A `DatabaseIdentifier` structure that describes a target database
    #   for resource linking.
    #   @return [Types::DatabaseIdentifier]
    #
    # @!attribute [rw] federated_database
    #   A `FederatedDatabase` structure that references an entity outside
    #   the Glue Data Catalog.
    #   @return [Types::FederatedDatabase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DatabaseInput AWS API Documentation
    #
    class DatabaseInput < Struct.new(
      :name,
      :description,
      :location_uri,
      :parameters,
      :create_table_default_permissions,
      :target_database,
      :federated_database)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Inclusion Annotation.
    #
    # @!attribute [rw] profile_id
    #   The ID of the data quality profile the statistic belongs to.
    #   @return [String]
    #
    # @!attribute [rw] statistic_id
    #   The Statistic ID.
    #   @return [String]
    #
    # @!attribute [rw] inclusion_annotation
    #   The inclusion annotation value to apply to the statistic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DatapointInclusionAnnotation AWS API Documentation
    #
    class DatapointInclusionAnnotation < Struct.new(
      :profile_id,
      :statistic_id,
      :inclusion_annotation)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure representing the datatype of the value.
    #
    # @!attribute [rw] id
    #   The datatype of the value.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   A label assigned to the datatype.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Datatype AWS API Documentation
    #
    class Datatype < Struct.new(
      :id,
      :label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines column statistics supported for timestamp data columns.
    #
    # @!attribute [rw] minimum_value
    #   The lowest value in the column.
    #   @return [Time]
    #
    # @!attribute [rw] maximum_value
    #   The highest value in the column.
    #   @return [Time]
    #
    # @!attribute [rw] number_of_nulls
    #   The number of null values in the column.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_distinct_values
    #   The number of distinct values in a column.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DateColumnStatisticsData AWS API Documentation
    #
    class DateColumnStatisticsData < Struct.new(
      :minimum_value,
      :maximum_value,
      :number_of_nulls,
      :number_of_distinct_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines column statistics supported for fixed-point number data
    # columns.
    #
    # @!attribute [rw] minimum_value
    #   The lowest value in the column.
    #   @return [Types::DecimalNumber]
    #
    # @!attribute [rw] maximum_value
    #   The highest value in the column.
    #   @return [Types::DecimalNumber]
    #
    # @!attribute [rw] number_of_nulls
    #   The number of null values in the column.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_distinct_values
    #   The number of distinct values in a column.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DecimalColumnStatisticsData AWS API Documentation
    #
    class DecimalColumnStatisticsData < Struct.new(
      :minimum_value,
      :maximum_value,
      :number_of_nulls,
      :number_of_distinct_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a numeric value in decimal format.
    #
    # @!attribute [rw] unscaled_value
    #   The unscaled numeric value.
    #   @return [String]
    #
    # @!attribute [rw] scale
    #   The scale that determines where the decimal point falls in the
    #   unscaled value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DecimalNumber AWS API Documentation
    #
    class DecimalNumber < Struct.new(
      :unscaled_value,
      :scale)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the blueprint to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteBlueprintRequest AWS API Documentation
    #
    class DeleteBlueprintRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Returns the name of the blueprint that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteBlueprintResponse AWS API Documentation
    #
    class DeleteBlueprintResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the catalog.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteCatalogRequest AWS API Documentation
    #
    class DeleteCatalogRequest < Struct.new(
      :catalog_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteCatalogResponse AWS API Documentation
    #
    class DeleteCatalogResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   Name of the classifier to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteClassifierRequest AWS API Documentation
    #
    class DeleteClassifierRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteClassifierResponse AWS API Documentation
    #
    class DeleteClassifierResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partitions in question reside.
    #   If none is supplied, the Amazon Web Services account ID is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partitions reside.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partitions' table.
    #   @return [String]
    #
    # @!attribute [rw] partition_values
    #   A list of partition values identifying the partition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] column_name
    #   Name of the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteColumnStatisticsForPartitionRequest AWS API Documentation
    #
    class DeleteColumnStatisticsForPartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      :column_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteColumnStatisticsForPartitionResponse AWS API Documentation
    #
    class DeleteColumnStatisticsForPartitionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partitions in question reside.
    #   If none is supplied, the Amazon Web Services account ID is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partitions reside.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partitions' table.
    #   @return [String]
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteColumnStatisticsForTableRequest AWS API Documentation
    #
    class DeleteColumnStatisticsForTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :column_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteColumnStatisticsForTableResponse AWS API Documentation
    #
    class DeleteColumnStatisticsForTableResponse < Aws::EmptyStructure; end

    # @!attribute [rw] database_name
    #   The name of the database where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table for which to delete column statistics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteColumnStatisticsTaskSettingsRequest AWS API Documentation
    #
    class DeleteColumnStatisticsTaskSettingsRequest < Struct.new(
      :database_name,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteColumnStatisticsTaskSettingsResponse AWS API Documentation
    #
    class DeleteColumnStatisticsTaskSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none
    #   is provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteConnectionRequest AWS API Documentation
    #
    class DeleteConnectionRequest < Struct.new(
      :catalog_id,
      :connection_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteConnectionResponse AWS API Documentation
    #
    class DeleteConnectionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the crawler to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteCrawlerRequest AWS API Documentation
    #
    class DeleteCrawlerRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteCrawlerResponse AWS API Documentation
    #
    class DeleteCrawlerResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the custom pattern that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteCustomEntityTypeRequest AWS API Documentation
    #
    class DeleteCustomEntityTypeRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the custom pattern you deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteCustomEntityTypeResponse AWS API Documentation
    #
    class DeleteCustomEntityTypeResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the data quality ruleset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDataQualityRulesetRequest AWS API Documentation
    #
    class DeleteDataQualityRulesetRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDataQualityRulesetResponse AWS API Documentation
    #
    class DeleteDataQualityRulesetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the database resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the database to delete. For Hive compatibility, this
    #   must be all lowercase.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDatabaseRequest AWS API Documentation
    #
    class DeleteDatabaseRequest < Struct.new(
      :catalog_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDatabaseResponse AWS API Documentation
    #
    class DeleteDatabaseResponse < Aws::EmptyStructure; end

    # @!attribute [rw] endpoint_name
    #   The name of the `DevEndpoint`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDevEndpointRequest AWS API Documentation
    #
    class DeleteDevEndpointRequest < Struct.new(
      :endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDevEndpointResponse AWS API Documentation
    #
    class DeleteDevEndpointResponse < Aws::EmptyStructure; end

    # @!attribute [rw] integration_identifier
    #   The Amazon Resource Name (ARN) for the integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteIntegrationRequest AWS API Documentation
    #
    class DeleteIntegrationRequest < Struct.new(
      :integration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_arn
    #   The ARN of the source for the integration.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN of the target for the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_name
    #   A unique name for an integration in Glue.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) for the integration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN of a KMS key used for encrypting the channel.
    #   @return [String]
    #
    # @!attribute [rw] additional_encryption_context
    #   An optional set of non-secret key–value pairs that contains
    #   additional contextual information for encryption.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Metadata assigned to the resource consisting of a list of key-value
    #   pairs.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] status
    #   The status of the integration being deleted.
    #
    #   The possible statuses are:
    #
    #   * CREATING: The integration is being created.
    #
    #   * ACTIVE: The integration creation succeeds.
    #
    #   * MODIFYING: The integration is being modified.
    #
    #   * FAILED: The integration creation fails.
    #
    #   * DELETING: The integration is deleted.
    #
    #   * SYNCING: The integration is synchronizing.
    #
    #   * NEEDS\_ATTENTION: The integration needs attention, such as
    #     synchronization.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the integration was created, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] errors
    #   A list of errors associated with the integration.
    #   @return [Array<Types::IntegrationError>]
    #
    # @!attribute [rw] data_filter
    #   Selects source tables for the integration using Maxwell filter
    #   syntax.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteIntegrationResponse AWS API Documentation
    #
    class DeleteIntegrationResponse < Struct.new(
      :source_arn,
      :target_arn,
      :integration_name,
      :description,
      :integration_arn,
      :kms_key_id,
      :additional_encryption_context,
      :tags,
      :status,
      :create_time,
      :errors,
      :data_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The connection ARN of the source, or the database ARN of the target.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table to be replicated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteIntegrationTablePropertiesRequest AWS API Documentation
    #
    class DeleteIntegrationTablePropertiesRequest < Struct.new(
      :resource_arn,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteIntegrationTablePropertiesResponse AWS API Documentation
    #
    class DeleteIntegrationTablePropertiesResponse < Aws::EmptyStructure; end

    # @!attribute [rw] job_name
    #   The name of the job definition to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteJobRequest AWS API Documentation
    #
    class DeleteJobRequest < Struct.new(
      :job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the job definition that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteJobResponse AWS API Documentation
    #
    class DeleteJobResponse < Struct.new(
      :job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the transform to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteMLTransformRequest AWS API Documentation
    #
    class DeleteMLTransformRequest < Struct.new(
      :transform_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the transform that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteMLTransformResponse AWS API Documentation
    #
    class DeleteMLTransformResponse < Struct.new(
      :transform_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The catalog ID where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Specifies the name of a database from which you want to delete a
    #   partition index.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   Specifies the name of a table from which you want to delete a
    #   partition index.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the partition index to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeletePartitionIndexRequest AWS API Documentation
    #
    class DeletePartitionIndexRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :index_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeletePartitionIndexResponse AWS API Documentation
    #
    class DeletePartitionIndexResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partition to be deleted
    #   resides. If none is provided, the Amazon Web Services account ID is
    #   used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table that contains the partition to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] partition_values
    #   The values that define the partition.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeletePartitionRequest AWS API Documentation
    #
    class DeletePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeletePartitionResponse AWS API Documentation
    #
    class DeletePartitionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] registry_id
    #   This is a wrapper structure that may contain the registry name and
    #   Amazon Resource Name (ARN).
    #   @return [Types::RegistryId]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteRegistryInput AWS API Documentation
    #
    class DeleteRegistryInput < Struct.new(
      :registry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_name
    #   The name of the registry being deleted.
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the registry being deleted.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the registry. A successful operation will return the
    #   `Deleting` status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteRegistryResponse AWS API Documentation
    #
    class DeleteRegistryResponse < Struct.new(
      :registry_name,
      :registry_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_hash_condition
    #   The hash value returned when this policy was set.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the Glue resource for the resource policy to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :policy_hash_condition,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] schema_id
    #   This is a wrapper structure that may contain the schema name and
    #   Amazon Resource Name (ARN).
    #   @return [Types::SchemaId]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSchemaInput AWS API Documentation
    #
    class DeleteSchemaInput < Struct.new(
      :schema_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema being deleted.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema being deleted.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSchemaResponse AWS API Documentation
    #
    class DeleteSchemaResponse < Struct.new(
      :schema_arn,
      :schema_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_id
    #   This is a wrapper structure that may contain the schema name and
    #   Amazon Resource Name (ARN).
    #   @return [Types::SchemaId]
    #
    # @!attribute [rw] versions
    #   A version range may be supplied which may be of the format:
    #
    #   * a single version number, 5
    #
    #   * a range, 5-8 : deletes versions 5, 6, 7, 8
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSchemaVersionsInput AWS API Documentation
    #
    class DeleteSchemaVersionsInput < Struct.new(
      :schema_id,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_version_errors
    #   A list of `SchemaVersionErrorItem` objects, each containing an error
    #   and schema version.
    #   @return [Array<Types::SchemaVersionErrorItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSchemaVersionsResponse AWS API Documentation
    #
    class DeleteSchemaVersionsResponse < Struct.new(
      :schema_version_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the security configuration to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSecurityConfigurationRequest AWS API Documentation
    #
    class DeleteSecurityConfigurationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSecurityConfigurationResponse AWS API Documentation
    #
    class DeleteSecurityConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the session to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] request_origin
    #   The name of the origin of the delete session request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSessionRequest AWS API Documentation
    #
    class DeleteSessionRequest < Struct.new(
      :id,
      :request_origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Returns the ID of the deleted session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSessionResponse AWS API Documentation
    #
    class DeleteSessionResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The Catalog ID of the table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database in the catalog in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of table optimizer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableOptimizerRequest AWS API Documentation
    #
    class DeleteTableOptimizerRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableOptimizerResponse AWS API Documentation
    #
    class DeleteTableOptimizerResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table resides. For
    #   Hive compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table to be deleted. For Hive compatibility, this
    #   name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID at which to delete the table contents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableRequest AWS API Documentation
    #
    class DeleteTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableResponse AWS API Documentation
    #
    class DeleteTableResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of the table version to be deleted. A `VersionID` is a string
    #   representation of an integer. Each version is incremented by 1.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableVersionRequest AWS API Documentation
    #
    class DeleteTableVersionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableVersionResponse AWS API Documentation
    #
    class DeleteTableVersionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the trigger to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTriggerRequest AWS API Documentation
    #
    class DeleteTriggerRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trigger that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTriggerResponse AWS API Documentation
    #
    class DeleteTriggerResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the usage profile to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteUsageProfileRequest AWS API Documentation
    #
    class DeleteUsageProfileRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteUsageProfileResponse AWS API Documentation
    #
    class DeleteUsageProfileResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the function to be deleted is
    #   located. If none is supplied, the Amazon Web Services account ID is
    #   used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the function is located.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the function definition to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteUserDefinedFunctionRequest AWS API Documentation
    #
    class DeleteUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteUserDefinedFunctionResponse AWS API Documentation
    #
    class DeleteUserDefinedFunctionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   Name of the workflow to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteWorkflowRequest AWS API Documentation
    #
    class DeleteWorkflowRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of the workflow specified in input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteWorkflowResponse AWS API Documentation
    #
    class DeleteWorkflowResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a Delta data store to crawl one or more Delta tables.
    #
    # @!attribute [rw] delta_tables
    #   A list of the Amazon S3 paths to the Delta tables.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to use to connect to the Delta table
    #   target.
    #   @return [String]
    #
    # @!attribute [rw] write_manifest
    #   Specifies whether to write the manifest files to the Delta table
    #   path.
    #   @return [Boolean]
    #
    # @!attribute [rw] create_native_delta_table
    #   Specifies whether the crawler will create native tables, to allow
    #   integration with query engines that support querying of the Delta
    #   transaction log directly.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeltaTarget AWS API Documentation
    #
    class DeltaTarget < Struct.new(
      :delta_tables,
      :connection_name,
      :write_manifest,
      :create_native_delta_table)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_type
    #   The name of the connection type to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DescribeConnectionTypeRequest AWS API Documentation
    #
    class DescribeConnectionTypeRequest < Struct.new(
      :connection_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_type
    #   The name of the connection type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the connection type.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   The supported authentication types, data interface types (compute
    #   environments), and data operations of the connector.
    #   @return [Types::Capabilities]
    #
    # @!attribute [rw] connection_properties
    #   Connection properties which are common across compute environments.
    #   @return [Hash<String,Types::Property>]
    #
    # @!attribute [rw] connection_options
    #   Returns properties that can be set when creating a connection in the
    #   `ConnectionInput.ConnectionProperties`. `ConnectionOptions` defines
    #   parameters that can be set in a Spark ETL script in the connection
    #   options map passed to a dataframe.
    #   @return [Hash<String,Types::Property>]
    #
    # @!attribute [rw] authentication_configuration
    #   The type of authentication used for the connection.
    #   @return [Types::AuthConfiguration]
    #
    # @!attribute [rw] compute_environment_configurations
    #   The compute environments that are supported by the connection.
    #   @return [Hash<String,Types::ComputeEnvironmentConfiguration>]
    #
    # @!attribute [rw] physical_connection_requirements
    #   Physical requirements for a connection, such as VPC, Subnet and
    #   Security Group specifications.
    #   @return [Hash<String,Types::Property>]
    #
    # @!attribute [rw] athena_connection_properties
    #   Connection properties specific to the Athena compute environment.
    #   @return [Hash<String,Types::Property>]
    #
    # @!attribute [rw] python_connection_properties
    #   Connection properties specific to the Python compute environment.
    #   @return [Hash<String,Types::Property>]
    #
    # @!attribute [rw] spark_connection_properties
    #   Connection properties specific to the Spark compute environment.
    #   @return [Hash<String,Types::Property>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DescribeConnectionTypeResponse AWS API Documentation
    #
    class DescribeConnectionTypeResponse < Struct.new(
      :connection_type,
      :description,
      :capabilities,
      :connection_properties,
      :connection_options,
      :authentication_configuration,
      :compute_environment_configurations,
      :physical_connection_requirements,
      :athena_connection_properties,
      :python_connection_properties,
      :spark_connection_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_name
    #   The name of the connection that contains the connection type
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] catalog_id
    #   The catalog ID of the catalog that contains the connection. This can
    #   be null, By default, the Amazon Web Services Account ID is the
    #   catalog ID.
    #   @return [String]
    #
    # @!attribute [rw] entity_name
    #   The name of the entity that you want to describe from the connection
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, included if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] data_store_api_version
    #   The version of the API used for the data store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DescribeEntityRequest AWS API Documentation
    #
    class DescribeEntityRequest < Struct.new(
      :connection_name,
      :catalog_id,
      :entity_name,
      :next_token,
      :data_store_api_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fields
    #   Describes the fields for that connector entity. This is the list of
    #   `Field` objects. `Field` is very similar to column in a database.
    #   The `Field` object has information about different properties
    #   associated with fields in the connector.
    #   @return [Array<Types::Field>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, present if the current segment is not the
    #   last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DescribeEntityResponse AWS API Documentation
    #
    class DescribeEntityResponse < Struct.new(
      :fields,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the integration.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A token to specify where to start paginating. This is the marker
    #   from a previously truncated response.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The total number of items to return in the output.
    #   @return [Integer]
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the target resource in the
    #   integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DescribeInboundIntegrationsRequest AWS API Documentation
    #
    class DescribeInboundIntegrationsRequest < Struct.new(
      :integration_arn,
      :marker,
      :max_records,
      :target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] inbound_integrations
    #   A list of inbound integrations.
    #   @return [Array<Types::InboundIntegration>]
    #
    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DescribeInboundIntegrationsResponse AWS API Documentation
    #
    class DescribeInboundIntegrationsResponse < Struct.new(
      :inbound_integrations,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_identifier
    #   The Amazon Resource Name (ARN) for the integration.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The total number of items to return in the output.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   A list of key and values, to filter down the results. Supported keys
    #   are "Status", "IntegrationName", and "SourceArn".
    #   IntegrationName is limited to only one value.
    #   @return [Array<Types::IntegrationFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DescribeIntegrationsRequest AWS API Documentation
    #
    class DescribeIntegrationsRequest < Struct.new(
      :integration_identifier,
      :marker,
      :max_records,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integrations
    #   A list of zero-ETL integrations.
    #   @return [Array<Types::Integration>]
    #
    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DescribeIntegrationsResponse AWS API Documentation
    #
    class DescribeIntegrationsResponse < Struct.new(
      :integrations,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # A development endpoint where a developer can remotely debug extract,
    # transform, and load (ETL) scripts.
    #
    # @!attribute [rw] endpoint_name
    #   The name of the `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used in this
    #   `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group identifiers used in this `DevEndpoint`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID for this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] yarn_endpoint_address
    #   The YARN endpoint address used by this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] private_address
    #   A private IP address to access the `DevEndpoint` within a VPC if the
    #   `DevEndpoint` is created within one. The `PrivateAddress` field is
    #   present only when you create the `DevEndpoint` within your VPC.
    #   @return [String]
    #
    # @!attribute [rw] zeppelin_remote_spark_interpreter_port
    #   The Apache Zeppelin port for the remote Apache Spark interpreter.
    #   @return [Integer]
    #
    # @!attribute [rw] public_address
    #   The public IP address used by this `DevEndpoint`. The
    #   `PublicAddress` field is present only when you create a non-virtual
    #   private cloud (VPC) `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated to the development
    #   endpoint. Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPU, 16
    #     GB of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPU, 32
    #     GB of memory, 128 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   Known issue: when a development endpoint is created with the `G.2X`
    #   `WorkerType` configuration, the Spark drivers for the development
    #   endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk.
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   Glue version determines the versions of Apache Spark and Python that
    #   Glue supports. The Python version indicates the version supported
    #   for running your ETL scripts on development endpoints.
    #
    #   For more information about the available Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in
    #   the developer guide.
    #
    #   Development endpoints that are created without specifying a Glue
    #   version default to Glue 0.9.
    #
    #   You can specify a version of Python support for development
    #   endpoints by using the `Arguments` parameter in the
    #   `CreateDevEndpoint` or `UpdateDevEndpoint` APIs. If no arguments are
    #   provided, the version defaults to Python 2.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   to the development endpoint.
    #
    #   The maximum number of workers you can define are 299 for `G.1X`, and
    #   149 for `G.2X`.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of Glue Data Processing Units (DPUs) allocated to this
    #   `DevEndpoint`.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   The Amazon Web Services Availability Zone where this `DevEndpoint`
    #   is located.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the virtual private cloud (VPC) used by this
    #   `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] extra_python_libs_s3_path
    #   The paths to one or more Python libraries in an Amazon S3 bucket
    #   that should be loaded in your `DevEndpoint`. Multiple values must be
    #   complete paths separated by a comma.
    #
    #   <note markdown="1"> You can only use pure Python libraries with a `DevEndpoint`.
    #   Libraries that rely on C extensions, such as the [pandas][1] Python
    #   data analysis library, are not currently supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://pandas.pydata.org/
    #   @return [String]
    #
    # @!attribute [rw] extra_jars_s3_path
    #   The path to one or more Java `.jar` files in an S3 bucket that
    #   should be loaded in your `DevEndpoint`.
    #
    #   <note markdown="1"> You can only use pure Java/Scala libraries with a `DevEndpoint`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for a current failure in this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] last_update_status
    #   The status of the last update.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The point in time at which this DevEndpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The point in time at which this `DevEndpoint` was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] public_key
    #   The public key to be used by this `DevEndpoint` for authentication.
    #   This attribute is provided for backward compatibility because the
    #   recommended attribute to use is public keys.
    #   @return [String]
    #
    # @!attribute [rw] public_keys
    #   A list of public keys to be used by the `DevEndpoints` for
    #   authentication. Using this attribute is preferred over a single
    #   public key because the public keys allow you to have a different
    #   private key per client.
    #
    #   <note markdown="1"> If you previously created an endpoint with a public key, you must
    #   remove that key to be able to set a list of public keys. Call the
    #   `UpdateDevEndpoint` API operation with the public key content in the
    #   `deletePublicKeys` attribute, and the list of new keys in the
    #   `addPublicKeys` attribute.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   A map of arguments used to configure the `DevEndpoint`.
    #
    #   Valid arguments are:
    #
    #   * `"--enable-glue-datacatalog": ""`
    #
    #   ^
    #
    #   You can specify a version of Python support for development
    #   endpoints by using the `Arguments` parameter in the
    #   `CreateDevEndpoint` or `UpdateDevEndpoint` APIs. If no arguments are
    #   provided, the version defaults to Python 2.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DevEndpoint AWS API Documentation
    #
    class DevEndpoint < Struct.new(
      :endpoint_name,
      :role_arn,
      :security_group_ids,
      :subnet_id,
      :yarn_endpoint_address,
      :private_address,
      :zeppelin_remote_spark_interpreter_port,
      :public_address,
      :status,
      :worker_type,
      :glue_version,
      :number_of_workers,
      :number_of_nodes,
      :availability_zone,
      :vpc_id,
      :extra_python_libs_s3_path,
      :extra_jars_s3_path,
      :failure_reason,
      :last_update_status,
      :created_timestamp,
      :last_modified_timestamp,
      :public_key,
      :public_keys,
      :security_configuration,
      :arguments)
      SENSITIVE = []
      include Aws::Structure
    end

    # Custom libraries to be loaded into a development endpoint.
    #
    # @!attribute [rw] extra_python_libs_s3_path
    #   The paths to one or more Python libraries in an Amazon Simple
    #   Storage Service (Amazon S3) bucket that should be loaded in your
    #   `DevEndpoint`. Multiple values must be complete paths separated by a
    #   comma.
    #
    #   <note markdown="1"> You can only use pure Python libraries with a `DevEndpoint`.
    #   Libraries that rely on C extensions, such as the [pandas][1] Python
    #   data analysis library, are not currently supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://pandas.pydata.org/
    #   @return [String]
    #
    # @!attribute [rw] extra_jars_s3_path
    #   The path to one or more Java `.jar` files in an S3 bucket that
    #   should be loaded in your `DevEndpoint`.
    #
    #   <note markdown="1"> You can only use pure Java/Scala libraries with a `DevEndpoint`.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DevEndpointCustomLibraries AWS API Documentation
    #
    class DevEndpointCustomLibraries < Struct.new(
      :extra_python_libs_s3_path,
      :extra_jars_s3_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the direct JDBC source connection.
    #
    # @!attribute [rw] name
    #   The name of the JDBC source connection.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The database of the JDBC source connection.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The table of the JDBC source connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The connection name of the JDBC source.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The connection type of the JDBC source.
    #   @return [String]
    #
    # @!attribute [rw] redshift_tmp_dir
    #   The temp directory of the JDBC Redshift source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DirectJDBCSource AWS API Documentation
    #
    class DirectJDBCSource < Struct.new(
      :name,
      :database,
      :table,
      :connection_name,
      :connection_type,
      :redshift_tmp_dir)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Apache Kafka data store.
    #
    # @!attribute [rw] name
    #   The name of the data store.
    #   @return [String]
    #
    # @!attribute [rw] streaming_options
    #   Specifies the streaming options.
    #   @return [Types::KafkaStreamingSourceOptions]
    #
    # @!attribute [rw] window_size
    #   The amount of time to spend processing each micro batch.
    #   @return [Integer]
    #
    # @!attribute [rw] detect_schema
    #   Whether to automatically determine the schema from the incoming
    #   data.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_preview_options
    #   Specifies options related to data preview for viewing a sample of
    #   your data.
    #   @return [Types::StreamingDataPreviewOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DirectKafkaSource AWS API Documentation
    #
    class DirectKafkaSource < Struct.new(
      :name,
      :streaming_options,
      :window_size,
      :detect_schema,
      :data_preview_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a direct Amazon Kinesis data source.
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] window_size
    #   The amount of time to spend processing each micro batch.
    #   @return [Integer]
    #
    # @!attribute [rw] detect_schema
    #   Whether to automatically determine the schema from the incoming
    #   data.
    #   @return [Boolean]
    #
    # @!attribute [rw] streaming_options
    #   Additional options for the Kinesis streaming data source.
    #   @return [Types::KinesisStreamingSourceOptions]
    #
    # @!attribute [rw] data_preview_options
    #   Additional options for data preview.
    #   @return [Types::StreamingDataPreviewOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DirectKinesisSource AWS API Documentation
    #
    class DirectKinesisSource < Struct.new(
      :name,
      :window_size,
      :detect_schema,
      :streaming_options,
      :data_preview_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # A policy that specifies update behavior for the crawler.
    #
    # @!attribute [rw] enable_update_catalog
    #   Whether to use the specified update behavior when the crawler finds
    #   a changed schema.
    #   @return [Boolean]
    #
    # @!attribute [rw] update_behavior
    #   The update behavior when the crawler finds a changed schema.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   Specifies the table in the database that the schema change policy
    #   applies to.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   Specifies the database that the schema change policy applies to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DirectSchemaChangePolicy AWS API Documentation
    #
    class DirectSchemaChangePolicy < Struct.new(
      :enable_update_catalog,
      :update_behavior,
      :table,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines column statistics supported for floating-point number data
    # columns.
    #
    # @!attribute [rw] minimum_value
    #   The lowest value in the column.
    #   @return [Float]
    #
    # @!attribute [rw] maximum_value
    #   The highest value in the column.
    #   @return [Float]
    #
    # @!attribute [rw] number_of_nulls
    #   The number of null values in the column.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_distinct_values
    #   The number of distinct values in a column.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DoubleColumnStatisticsData AWS API Documentation
    #
    class DoubleColumnStatisticsData < Struct.new(
      :minimum_value,
      :maximum_value,
      :number_of_nulls,
      :number_of_distinct_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that removes rows of repeating data from a data
    # set.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] columns
    #   The name of the columns to be merged or removed if repeating.
    #   @return [Array<Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DropDuplicates AWS API Documentation
    #
    class DropDuplicates < Struct.new(
      :name,
      :inputs,
      :columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that chooses the data property keys that you
    # want to drop.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] paths
    #   A JSON path to a variable in the data structure.
    #   @return [Array<Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DropFields AWS API Documentation
    #
    class DropFields < Struct.new(
      :name,
      :inputs,
      :paths)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that removes columns from the dataset if all
    # values in the column are 'null'. By default, Glue Studio will
    # recognize null objects, but some values such as empty strings, strings
    # that are "null", -1 integers or other placeholders such as zeros,
    # are not automatically recognized as nulls.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] null_check_box_list
    #   A structure that represents whether certain values are recognized as
    #   null values for removal.
    #   @return [Types::NullCheckBoxList]
    #
    # @!attribute [rw] null_text_list
    #   A structure that specifies a list of NullValueField structures that
    #   represent a custom null value such as zero or other value being used
    #   as a null placeholder unique to the dataset.
    #
    #   The `DropNullFields` transform removes custom null values only if
    #   both the value of the null placeholder and the datatype match the
    #   data.
    #   @return [Array<Types::NullValueField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DropNullFields AWS API Documentation
    #
    class DropNullFields < Struct.new(
      :name,
      :inputs,
      :null_check_box_list,
      :null_text_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the set of parameters needed to perform the dynamic
    # transform.
    #
    # @!attribute [rw] name
    #   Specifies the name of the dynamic transform.
    #   @return [String]
    #
    # @!attribute [rw] transform_name
    #   Specifies the name of the dynamic transform as it appears in the
    #   Glue Studio visual editor.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   Specifies the inputs for the dynamic transform that are required.
    #   @return [Array<String>]
    #
    # @!attribute [rw] parameters
    #   Specifies the parameters of the dynamic transform.
    #   @return [Array<Types::TransformConfigParameter>]
    #
    # @!attribute [rw] function_name
    #   Specifies the name of the function of the dynamic transform.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   Specifies the path of the dynamic transform source and config files.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   This field is not used and will be deprecated in future release.
    #   @return [String]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the dynamic transform.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DynamicTransform AWS API Documentation
    #
    class DynamicTransform < Struct.new(
      :name,
      :transform_name,
      :inputs,
      :parameters,
      :function_name,
      :path,
      :version,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a DynamoDB data source in the Glue Data Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to read from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DynamoDBCatalogSource AWS API Documentation
    #
    class DynamoDBCatalogSource < Struct.new(
      :name,
      :database,
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Amazon DynamoDB table to crawl.
    #
    # @!attribute [rw] path
    #   The name of the DynamoDB table to crawl.
    #   @return [String]
    #
    # @!attribute [rw] scan_all
    #   Indicates whether to scan all the records, or to sample rows from
    #   the table. Scanning all the records can take a long time when the
    #   table is not a high throughput table.
    #
    #   A value of `true` means to scan all records, while a value of
    #   `false` means to sample the records. If no value is specified, the
    #   value defaults to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] scan_rate
    #   The percentage of the configured read capacity units to use by the
    #   Glue crawler. Read capacity units is a term defined by DynamoDB, and
    #   is a numeric value that acts as rate limiter for the number of reads
    #   that can be performed on that table per second.
    #
    #   The valid values are null or a value between 0.1 to 1.5. A null
    #   value is used when user does not provide a value, and defaults to
    #   0.5 of the configured Read Capacity Unit (for provisioned tables),
    #   or 0.25 of the max configured Read Capacity Unit (for tables using
    #   on-demand mode).
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DynamoDBTarget AWS API Documentation
    #
    class DynamoDBTarget < Struct.new(
      :path,
      :scan_all,
      :scan_rate)
      SENSITIVE = []
      include Aws::Structure
    end

    # An edge represents a directed connection between two Glue components
    # that are part of the workflow the edge belongs to.
    #
    # @!attribute [rw] source_id
    #   The unique of the node within the workflow where the edge starts.
    #   @return [String]
    #
    # @!attribute [rw] destination_id
    #   The unique of the node within the workflow where the edge ends.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Edge AWS API Documentation
    #
    class Edge < Struct.new(
      :source_id,
      :destination_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the encryption-at-rest configuration for the Data Catalog.
    #
    # @!attribute [rw] catalog_encryption_mode
    #   The encryption-at-rest mode for encrypting Data Catalog data.
    #   @return [String]
    #
    # @!attribute [rw] sse_aws_kms_key_id
    #   The ID of the KMS key to use for encryption at rest.
    #   @return [String]
    #
    # @!attribute [rw] catalog_encryption_service_role
    #   The role that Glue assumes to encrypt and decrypt the Data Catalog
    #   objects on the caller's behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/EncryptionAtRest AWS API Documentation
    #
    class EncryptionAtRest < Struct.new(
      :catalog_encryption_mode,
      :sse_aws_kms_key_id,
      :catalog_encryption_service_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an encryption configuration.
    #
    # @!attribute [rw] s3_encryption
    #   The encryption configuration for Amazon Simple Storage Service
    #   (Amazon S3) data.
    #   @return [Array<Types::S3Encryption>]
    #
    # @!attribute [rw] cloud_watch_encryption
    #   The encryption configuration for Amazon CloudWatch.
    #   @return [Types::CloudWatchEncryption]
    #
    # @!attribute [rw] job_bookmarks_encryption
    #   The encryption configuration for job bookmarks.
    #   @return [Types::JobBookmarksEncryption]
    #
    # @!attribute [rw] data_quality_encryption
    #   The encryption configuration for Glue Data Quality assets.
    #   @return [Types::DataQualityEncryption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :s3_encryption,
      :cloud_watch_encryption,
      :job_bookmarks_encryption,
      :data_quality_encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entity supported by a given `ConnectionType`.
    #
    # @!attribute [rw] entity_name
    #   The name of the entity.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   Label used for the entity.
    #   @return [String]
    #
    # @!attribute [rw] is_parent_entity
    #   A Boolean value which helps to determine whether there are sub
    #   objects that can be listed.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A description of the entity.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The type of entities that are present in the response. This value
    #   depends on the source connection. For example this is `SObjects` for
    #   Salesforce and `databases` or `schemas` or `tables` for sources like
    #   Amazon Redshift.
    #   @return [String]
    #
    # @!attribute [rw] custom_properties
    #   An optional map of keys which may be returned for an entity by a
    #   connector.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Entity AWS API Documentation
    #
    class Entity < Struct.new(
      :entity_name,
      :label,
      :is_parent_entity,
      :description,
      :category,
      :custom_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specified entity does not exist
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] from_federation_source
    #   Indicates whether or not the exception relates to a federated
    #   source.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/EntityNotFoundException AWS API Documentation
    #
    class EntityNotFoundException < Struct.new(
      :message,
      :from_federation_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an error.
    #
    # @!attribute [rw] error_code
    #   The code associated with this error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing error details.
    #
    # @!attribute [rw] error_code
    #   The error code for an error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message for an error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ErrorDetails AWS API Documentation
    #
    class ErrorDetails < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies your data quality evaluation criteria.
    #
    # @!attribute [rw] name
    #   The name of the data quality evaluation.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The inputs of your data quality evaluation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ruleset
    #   The ruleset for your data quality evaluation.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The output of your data quality evaluation.
    #   @return [String]
    #
    # @!attribute [rw] publishing_options
    #   Options to configure how your results are published.
    #   @return [Types::DQResultsPublishingOptions]
    #
    # @!attribute [rw] stop_job_on_failure_options
    #   Options to configure how your job will stop if your data quality
    #   evaluation fails.
    #   @return [Types::DQStopJobOnFailureOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/EvaluateDataQuality AWS API Documentation
    #
    class EvaluateDataQuality < Struct.new(
      :name,
      :inputs,
      :ruleset,
      :output,
      :publishing_options,
      :stop_job_on_failure_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies your data quality evaluation criteria.
    #
    # @!attribute [rw] name
    #   The name of the data quality evaluation.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The inputs of your data quality evaluation. The first input in this
    #   list is the primary data source.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_data_sources
    #   The aliases of all data sources except primary.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ruleset
    #   The ruleset for your data quality evaluation.
    #   @return [String]
    #
    # @!attribute [rw] publishing_options
    #   Options to configure how your results are published.
    #   @return [Types::DQResultsPublishingOptions]
    #
    # @!attribute [rw] additional_options
    #   Options to configure runtime behavior of the transform.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] stop_job_on_failure_options
    #   Options to configure how your job will stop if your data quality
    #   evaluation fails.
    #   @return [Types::DQStopJobOnFailureOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/EvaluateDataQualityMultiFrame AWS API Documentation
    #
    class EvaluateDataQualityMultiFrame < Struct.new(
      :name,
      :inputs,
      :additional_data_sources,
      :ruleset,
      :publishing_options,
      :additional_options,
      :stop_job_on_failure_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Evaluation metrics provide an estimate of the quality of your machine
    # learning transform.
    #
    # @!attribute [rw] transform_type
    #   The type of machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] find_matches_metrics
    #   The evaluation metrics for the find matches algorithm.
    #   @return [Types::FindMatchesMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/EvaluationMetrics AWS API Documentation
    #
    class EvaluationMetrics < Struct.new(
      :transform_type,
      :find_matches_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Batch condition that must be met (specified number of events received
    # or batch time window expired) before EventBridge event trigger fires.
    #
    # @!attribute [rw] batch_size
    #   Number of events that must be received from Amazon EventBridge
    #   before EventBridge event trigger fires.
    #   @return [Integer]
    #
    # @!attribute [rw] batch_window
    #   Window of time in seconds after which EventBridge event trigger
    #   fires. Window starts when first event is received.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/EventBatchingCondition AWS API Documentation
    #
    class EventBatchingCondition < Struct.new(
      :batch_size,
      :batch_window)
      SENSITIVE = []
      include Aws::Structure
    end

    # A run attempt for a column statistics task run.
    #
    # @!attribute [rw] status
    #   The status of the last column statistics task run.
    #   @return [String]
    #
    # @!attribute [rw] column_statistics_task_run_id
    #   A task run ID for the last column statistics task run.
    #   @return [String]
    #
    # @!attribute [rw] execution_timestamp
    #   A timestamp when the last column statistics task run occurred.
    #   @return [Time]
    #
    # @!attribute [rw] error_message
    #   An error message associated with the last column statistics task
    #   run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ExecutionAttempt AWS API Documentation
    #
    class ExecutionAttempt < Struct.new(
      :status,
      :column_statistics_task_run_id,
      :execution_timestamp,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An execution property of a job.
    #
    # @!attribute [rw] max_concurrent_runs
    #   The maximum number of concurrent runs allowed for the job. The
    #   default is 1. An error is returned when this threshold is reached.
    #   The maximum value you can specify is controlled by a service limit.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ExecutionProperty AWS API Documentation
    #
    class ExecutionProperty < Struct.new(
      :max_concurrent_runs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration properties for an exporting labels task run.
    #
    # @!attribute [rw] output_s3_path
    #   The Amazon Simple Storage Service (Amazon S3) path where you will
    #   export the labels.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ExportLabelsTaskRunProperties AWS API Documentation
    #
    class ExportLabelsTaskRunProperties < Struct.new(
      :output_s3_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # A catalog that points to an entity outside the Glue Data Catalog.
    #
    # @!attribute [rw] identifier
    #   A unique identifier for the federated catalog.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to an external data source, for example a
    #   Redshift-federated catalog.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection used to access the federated catalog,
    #   specifying the protocol or method for connection to the external
    #   data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FederatedCatalog AWS API Documentation
    #
    class FederatedCatalog < Struct.new(
      :identifier,
      :connection_name,
      :connection_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A database that points to an entity outside the Glue Data Catalog.
    #
    # @!attribute [rw] identifier
    #   A unique identifier for the federated database.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to the external metastore.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection used to access the federated database, such
    #   as JDBC, ODBC, or other supported connection protocols.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FederatedDatabase AWS API Documentation
    #
    class FederatedDatabase < Struct.new(
      :identifier,
      :connection_name,
      :connection_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A federated resource already exists.
    #
    # @!attribute [rw] message
    #   The message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] associated_glue_resource
    #   The associated Glue resource already exists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FederatedResourceAlreadyExistsException AWS API Documentation
    #
    class FederatedResourceAlreadyExistsException < Struct.new(
      :message,
      :associated_glue_resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # A table that points to an entity outside the Glue Data Catalog.
    #
    # @!attribute [rw] identifier
    #   A unique identifier for the federated table.
    #   @return [String]
    #
    # @!attribute [rw] database_identifier
    #   A unique identifier for the federated database.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to the external metastore.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection used to access the federated table,
    #   specifying the protocol or method for connecting to the external
    #   data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FederatedTable AWS API Documentation
    #
    class FederatedTable < Struct.new(
      :identifier,
      :database_identifier,
      :connection_name,
      :connection_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A federation source failed.
    #
    # @!attribute [rw] federation_source_error_code
    #   The error code of the problem.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FederationSourceException AWS API Documentation
    #
    class FederationSourceException < Struct.new(
      :federation_source_error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A federation source failed, but the operation may be retried.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FederationSourceRetryableException AWS API Documentation
    #
    class FederationSourceRetryableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `Field` object has information about the different properties
    # associated with a field in the connector.
    #
    # @!attribute [rw] field_name
    #   A unique identifier for the field.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   A readable label used for the field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the field.
    #   @return [String]
    #
    # @!attribute [rw] field_type
    #   The type of data in the field.
    #   @return [String]
    #
    # @!attribute [rw] is_primary_key
    #   Indicates whether this field can used as a primary key for the given
    #   entity.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_nullable
    #   Indicates whether this field can be nullable or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_retrievable
    #   Indicates whether this field can be added in Select clause of SQL
    #   query or whether it is retrievable or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_filterable
    #   Indicates whether this field can used in a filter clause (`WHERE`
    #   clause) of a SQL statement when querying data.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_partitionable
    #   Indicates whether a given field can be used in partitioning the
    #   query made to SaaS.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_createable
    #   Indicates whether this field can be created as part of a destination
    #   write.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_updateable
    #   Indicates whether this field can be updated as part of a destination
    #   write.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_upsertable
    #   Indicates whether this field can be upserted as part of a
    #   destination write.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_default_on_create
    #   Indicates whether this field is populated automatically when the
    #   object is created, such as a created at timestamp.
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_values
    #   A list of supported values for the field.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_filter_operators
    #   Indicates the support filter operators for this field.
    #   @return [Array<String>]
    #
    # @!attribute [rw] parent_field
    #   A parent field name for a nested field.
    #   @return [String]
    #
    # @!attribute [rw] native_data_type
    #   The data type returned by the SaaS API, such as “picklist” or
    #   “textarea” from Salesforce.
    #   @return [String]
    #
    # @!attribute [rw] custom_properties
    #   Optional map of keys which may be returned.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Field AWS API Documentation
    #
    class Field < Struct.new(
      :field_name,
      :label,
      :description,
      :field_type,
      :is_primary_key,
      :is_nullable,
      :is_retrievable,
      :is_filterable,
      :is_partitionable,
      :is_createable,
      :is_updateable,
      :is_upsertable,
      :is_default_on_create,
      :supported_values,
      :supported_filter_operators,
      :parent_field,
      :native_data_type,
      :custom_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that locates records in the dataset that have
    # missing values and adds a new field with a value determined by
    # imputation. The input data set is used to train the machine learning
    # model that determines what the missing value should be.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] imputed_path
    #   A JSON path to a variable in the data structure for the dataset that
    #   is imputed.
    #   @return [String]
    #
    # @!attribute [rw] filled_path
    #   A JSON path to a variable in the data structure for the dataset that
    #   is filled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FillMissingValues AWS API Documentation
    #
    class FillMissingValues < Struct.new(
      :name,
      :inputs,
      :imputed_path,
      :filled_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that splits a dataset into two, based on a
    # filter condition.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] logical_operator
    #   The operator used to filter rows by comparing the key value to a
    #   specified value.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Specifies a filter expression.
    #   @return [Array<Types::FilterExpression>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :inputs,
      :logical_operator,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a filter expression.
    #
    # @!attribute [rw] operation
    #   The type of operation to perform in the expression.
    #   @return [String]
    #
    # @!attribute [rw] negated
    #   Whether the expression is to be negated.
    #   @return [Boolean]
    #
    # @!attribute [rw] values
    #   A list of filter values.
    #   @return [Array<Types::FilterValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FilterExpression AWS API Documentation
    #
    class FilterExpression < Struct.new(
      :operation,
      :negated,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single entry in the list of values for a
    # `FilterExpression`.
    #
    # @!attribute [rw] type
    #   The type of filter value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to be associated.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FilterValue AWS API Documentation
    #
    class FilterValue < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The evaluation metrics for the find matches algorithm. The quality of
    # your machine learning transform is measured by getting your transform
    # to predict some matches and comparing the results to known matches
    # from the same dataset. The quality metrics are based on a subset of
    # your data, so they are not precise.
    #
    # @!attribute [rw] area_under_pr_curve
    #   The area under the precision/recall curve (AUPRC) is a single number
    #   measuring the overall quality of the transform, that is independent
    #   of the choice made for precision vs. recall. Higher values indicate
    #   that you have a more attractive precision vs. recall tradeoff.
    #
    #   For more information, see [Precision and recall][1] in Wikipedia.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Precision_and_recall
    #   @return [Float]
    #
    # @!attribute [rw] precision
    #   The precision metric indicates when often your transform is correct
    #   when it predicts a match. Specifically, it measures how well the
    #   transform finds true positives from the total true positives
    #   possible.
    #
    #   For more information, see [Precision and recall][1] in Wikipedia.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Precision_and_recall
    #   @return [Float]
    #
    # @!attribute [rw] recall
    #   The recall metric indicates that for an actual match, how often your
    #   transform predicts the match. Specifically, it measures how well the
    #   transform finds true positives from the total records in the source
    #   data.
    #
    #   For more information, see [Precision and recall][1] in Wikipedia.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Precision_and_recall
    #   @return [Float]
    #
    # @!attribute [rw] f1
    #   The maximum F1 metric indicates the transform's accuracy between 0
    #   and 1, where 1 is the best accuracy.
    #
    #   For more information, see [F1 score][1] in Wikipedia.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/F1_score
    #   @return [Float]
    #
    # @!attribute [rw] confusion_matrix
    #   The confusion matrix shows you what your transform is predicting
    #   accurately and what types of errors it is making.
    #
    #   For more information, see [Confusion matrix][1] in Wikipedia.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Confusion_matrix
    #   @return [Types::ConfusionMatrix]
    #
    # @!attribute [rw] column_importances
    #   A list of `ColumnImportance` structures containing column importance
    #   metrics, sorted in order of descending importance.
    #   @return [Array<Types::ColumnImportance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FindMatchesMetrics AWS API Documentation
    #
    class FindMatchesMetrics < Struct.new(
      :area_under_pr_curve,
      :precision,
      :recall,
      :f1,
      :confusion_matrix,
      :column_importances)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters to configure the find matches transform.
    #
    # @!attribute [rw] primary_key_column_name
    #   The name of a column that uniquely identifies rows in the source
    #   table. Used to help identify matching records.
    #   @return [String]
    #
    # @!attribute [rw] precision_recall_tradeoff
    #   The value selected when tuning your transform for a balance between
    #   precision and recall. A value of 0.5 means no preference; a value of
    #   1.0 means a bias purely for precision, and a value of 0.0 means a
    #   bias for recall. Because this is a tradeoff, choosing values close
    #   to 1.0 means very low recall, and choosing values close to 0.0
    #   results in very low precision.
    #
    #   The precision metric indicates how often your model is correct when
    #   it predicts a match.
    #
    #   The recall metric indicates that for an actual match, how often your
    #   model predicts the match.
    #   @return [Float]
    #
    # @!attribute [rw] accuracy_cost_tradeoff
    #   The value that is selected when tuning your transform for a balance
    #   between accuracy and cost. A value of 0.5 means that the system
    #   balances accuracy and cost concerns. A value of 1.0 means a bias
    #   purely for accuracy, which typically results in a higher cost,
    #   sometimes substantially higher. A value of 0.0 means a bias purely
    #   for cost, which results in a less accurate `FindMatches` transform,
    #   sometimes with unacceptable accuracy.
    #
    #   Accuracy measures how well the transform finds true positives and
    #   true negatives. Increasing accuracy requires more machine resources
    #   and cost. But it also results in increased recall.
    #
    #   Cost measures how many compute resources, and thus money, are
    #   consumed to run the transform.
    #   @return [Float]
    #
    # @!attribute [rw] enforce_provided_labels
    #   The value to switch on or off to force the output to match the
    #   provided labels from users. If the value is `True`, the `find
    #   matches` transform forces the output to match the provided labels.
    #   The results override the normal conflation results. If the value is
    #   `False`, the `find matches` transform does not ensure all the labels
    #   provided are respected, and the results rely on the trained model.
    #
    #   Note that setting this value to true may increase the conflation
    #   execution time.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FindMatchesParameters AWS API Documentation
    #
    class FindMatchesParameters < Struct.new(
      :primary_key_column_name,
      :precision_recall_tradeoff,
      :accuracy_cost_tradeoff,
      :enforce_provided_labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration properties for a Find Matches task run.
    #
    # @!attribute [rw] job_id
    #   The job ID for the Find Matches task run.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name assigned to the job for the Find Matches task run.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The job run ID for the Find Matches task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FindMatchesTaskRunProperties AWS API Documentation
    #
    class FindMatchesTaskRunProperties < Struct.new(
      :job_id,
      :job_name,
      :job_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] include_blueprint
    #   Specifies whether or not to include the blueprint in the response.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_parameter_spec
    #   Specifies whether or not to include the parameter specification.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetBlueprintRequest AWS API Documentation
    #
    class GetBlueprintRequest < Struct.new(
      :name,
      :include_blueprint,
      :include_parameter_spec)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint
    #   Returns a `Blueprint` object.
    #   @return [Types::Blueprint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetBlueprintResponse AWS API Documentation
    #
    class GetBlueprintResponse < Struct.new(
      :blueprint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint_name
    #   The name of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The run ID for the blueprint run you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetBlueprintRunRequest AWS API Documentation
    #
    class GetBlueprintRunRequest < Struct.new(
      :blueprint_name,
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint_run
    #   Returns a `BlueprintRun` object.
    #   @return [Types::BlueprintRun]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetBlueprintRunResponse AWS API Documentation
    #
    class GetBlueprintRunResponse < Struct.new(
      :blueprint_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint_name
    #   The name of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetBlueprintRunsRequest AWS API Documentation
    #
    class GetBlueprintRunsRequest < Struct.new(
      :blueprint_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint_runs
    #   Returns a list of `BlueprintRun` objects.
    #   @return [Array<Types::BlueprintRun>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all blueprint runs have been returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetBlueprintRunsResponse AWS API Documentation
    #
    class GetBlueprintRunsResponse < Struct.new(
      :blueprint_runs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the catalog to migrate. Currently, this should be the
    #   Amazon Web Services account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCatalogImportStatusRequest AWS API Documentation
    #
    class GetCatalogImportStatusRequest < Struct.new(
      :catalog_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_status
    #   The status of the specified catalog migration.
    #   @return [Types::CatalogImportStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCatalogImportStatusResponse AWS API Documentation
    #
    class GetCatalogImportStatusResponse < Struct.new(
      :import_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the parent catalog in which the catalog resides. If none
    #   is provided, the Amazon Web Services Account Number is used by
    #   default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCatalogRequest AWS API Documentation
    #
    class GetCatalogRequest < Struct.new(
      :catalog_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   A `Catalog` object. The definition of the specified catalog in the
    #   Glue Data Catalog.
    #   @return [Types::Catalog]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCatalogResponse AWS API Documentation
    #
    class GetCatalogResponse < Struct.new(
      :catalog)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parent_catalog_id
    #   The ID of the parent catalog in which the catalog resides. If none
    #   is provided, the Amazon Web Services Account Number is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of catalogs to return in one response.
    #   @return [Integer]
    #
    # @!attribute [rw] recursive
    #   Whether to list all catalogs across the catalog hierarchy, starting
    #   from the `ParentCatalogId`. Defaults to `false` . When `true`, all
    #   catalog objects in the `ParentCatalogID` hierarchy are enumerated in
    #   the response.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_root
    #   Whether to list the default catalog in the account and region in the
    #   response. Defaults to `false`. When `true` and `ParentCatalogId =
    #   NULL | Amazon Web Services Account ID`, all catalogs and the default
    #   catalog are enumerated in the response.
    #
    #   When the `ParentCatalogId` is not equal to null, and this attribute
    #   is passed as `false` or `true`, an `InvalidInputException` is
    #   thrown.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCatalogsRequest AWS API Documentation
    #
    class GetCatalogsRequest < Struct.new(
      :parent_catalog_id,
      :next_token,
      :max_results,
      :recursive,
      :include_root)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_list
    #   An array of `Catalog` objects. A list of `Catalog` objects from the
    #   specified parent catalog.
    #   @return [Array<Types::Catalog>]
    #
    # @!attribute [rw] next_token
    #   A continuation token for paginating the returned list of tokens,
    #   returned if the current segment of the list is not the last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCatalogsResponse AWS API Documentation
    #
    class GetCatalogsResponse < Struct.new(
      :catalog_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of the classifier to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifierRequest AWS API Documentation
    #
    class GetClassifierRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] classifier
    #   The requested classifier.
    #   @return [Types::Classifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifierResponse AWS API Documentation
    #
    class GetClassifierResponse < Struct.new(
      :classifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The size of the list to return (optional).
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional continuation token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifiersRequest AWS API Documentation
    #
    class GetClassifiersRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] classifiers
    #   The requested list of classifier objects.
    #   @return [Array<Types::Classifier>]
    #
    # @!attribute [rw] next_token
    #   A continuation token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifiersResponse AWS API Documentation
    #
    class GetClassifiersResponse < Struct.new(
      :classifiers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partitions in question reside.
    #   If none is supplied, the Amazon Web Services account ID is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partitions reside.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partitions' table.
    #   @return [String]
    #
    # @!attribute [rw] partition_values
    #   A list of partition values identifying the partition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] column_names
    #   A list of the column names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetColumnStatisticsForPartitionRequest AWS API Documentation
    #
    class GetColumnStatisticsForPartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      :column_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] column_statistics_list
    #   List of ColumnStatistics that failed to be retrieved.
    #   @return [Array<Types::ColumnStatistics>]
    #
    # @!attribute [rw] errors
    #   Error occurred during retrieving column statistics data.
    #   @return [Array<Types::ColumnError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetColumnStatisticsForPartitionResponse AWS API Documentation
    #
    class GetColumnStatisticsForPartitionResponse < Struct.new(
      :column_statistics_list,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partitions in question reside.
    #   If none is supplied, the Amazon Web Services account ID is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partitions reside.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partitions' table.
    #   @return [String]
    #
    # @!attribute [rw] column_names
    #   A list of the column names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetColumnStatisticsForTableRequest AWS API Documentation
    #
    class GetColumnStatisticsForTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :column_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] column_statistics_list
    #   List of ColumnStatistics.
    #   @return [Array<Types::ColumnStatistics>]
    #
    # @!attribute [rw] errors
    #   List of ColumnStatistics that failed to be retrieved.
    #   @return [Array<Types::ColumnError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetColumnStatisticsForTableResponse AWS API Documentation
    #
    class GetColumnStatisticsForTableResponse < Struct.new(
      :column_statistics_list,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] column_statistics_task_run_id
    #   The identifier for the particular column statistics task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetColumnStatisticsTaskRunRequest AWS API Documentation
    #
    class GetColumnStatisticsTaskRunRequest < Struct.new(
      :column_statistics_task_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] column_statistics_task_run
    #   A `ColumnStatisticsTaskRun` object representing the details of the
    #   column stats run.
    #   @return [Types::ColumnStatisticsTaskRun]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetColumnStatisticsTaskRunResponse AWS API Documentation
    #
    class GetColumnStatisticsTaskRunResponse < Struct.new(
      :column_statistics_task_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the database where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetColumnStatisticsTaskRunsRequest AWS API Documentation
    #
    class GetColumnStatisticsTaskRunsRequest < Struct.new(
      :database_name,
      :table_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] column_statistics_task_runs
    #   A list of column statistics task runs.
    #   @return [Array<Types::ColumnStatisticsTaskRun>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all task runs have yet been returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetColumnStatisticsTaskRunsResponse AWS API Documentation
    #
    class GetColumnStatisticsTaskRunsResponse < Struct.new(
      :column_statistics_task_runs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the database where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table for which to retrieve column statistics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetColumnStatisticsTaskSettingsRequest AWS API Documentation
    #
    class GetColumnStatisticsTaskSettingsRequest < Struct.new(
      :database_name,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] column_statistics_task_settings
    #   A `ColumnStatisticsTaskSettings` object representing the settings
    #   for the column statistics task.
    #   @return [Types::ColumnStatisticsTaskSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetColumnStatisticsTaskSettingsResponse AWS API Documentation
    #
    class GetColumnStatisticsTaskSettingsResponse < Struct.new(
      :column_statistics_task_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none
    #   is provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the connection definition to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] hide_password
    #   Allows you to retrieve the connection metadata without returning the
    #   password. For instance, the Glue console uses this flag to retrieve
    #   the connection, and does not display the password. Set this
    #   parameter when the caller might not have permission to use the KMS
    #   key to decrypt the password, but it does have permission to access
    #   the rest of the connection properties.
    #   @return [Boolean]
    #
    # @!attribute [rw] apply_override_for_compute_environment
    #   For connections that may be used in multiple services, specifies
    #   returning properties for the specified compute environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionRequest AWS API Documentation
    #
    class GetConnectionRequest < Struct.new(
      :catalog_id,
      :name,
      :hide_password,
      :apply_override_for_compute_environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   The requested connection definition.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionResponse AWS API Documentation
    #
    class GetConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the connection definitions that are returned by the
    # `GetConnections` API operation.
    #
    # @!attribute [rw] match_criteria
    #   A criteria string that must match the criteria recorded in the
    #   connection definition for that connection definition to be returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_type
    #   The type of connections to return. Currently, SFTP is not supported.
    #   @return [String]
    #
    # @!attribute [rw] connection_schema_version
    #   Denotes if the connection was created with schema version 1 or 2.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionsFilter AWS API Documentation
    #
    class GetConnectionsFilter < Struct.new(
      :match_criteria,
      :connection_type,
      :connection_schema_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connections reside. If none
    #   is provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter that controls which connections are returned.
    #   @return [Types::GetConnectionsFilter]
    #
    # @!attribute [rw] hide_password
    #   Allows you to retrieve the connection metadata without returning the
    #   password. For instance, the Glue console uses this flag to retrieve
    #   the connection, and does not display the password. Set this
    #   parameter when the caller might not have permission to use the KMS
    #   key to decrypt the password, but it does have permission to access
    #   the rest of the connection properties.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of connections to return in one response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionsRequest AWS API Documentation
    #
    class GetConnectionsRequest < Struct.new(
      :catalog_id,
      :filter,
      :hide_password,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_list
    #   A list of requested connection definitions.
    #   @return [Array<Types::Connection>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the list of connections returned does not
    #   include the last of the filtered connections.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionsResponse AWS API Documentation
    #
    class GetConnectionsResponse < Struct.new(
      :connection_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] crawler_name_list
    #   A list of the names of crawlers about which to retrieve metrics.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerMetricsRequest AWS API Documentation
    #
    class GetCrawlerMetricsRequest < Struct.new(
      :crawler_name_list,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] crawler_metrics_list
    #   A list of metrics for the specified crawler.
    #   @return [Array<Types::CrawlerMetrics>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list does not contain the last
    #   metric available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerMetricsResponse AWS API Documentation
    #
    class GetCrawlerMetricsResponse < Struct.new(
      :crawler_metrics_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the crawler to retrieve metadata for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerRequest AWS API Documentation
    #
    class GetCrawlerRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] crawler
    #   The metadata for the specified crawler.
    #   @return [Types::Crawler]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerResponse AWS API Documentation
    #
    class GetCrawlerResponse < Struct.new(
      :crawler)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The number of crawlers to return on each call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlersRequest AWS API Documentation
    #
    class GetCrawlersRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] crawlers
    #   A list of crawler metadata.
    #   @return [Array<Types::Crawler>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list has not reached the end
    #   of those defined in this customer account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlersResponse AWS API Documentation
    #
    class GetCrawlersResponse < Struct.new(
      :crawlers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the custom pattern that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCustomEntityTypeRequest AWS API Documentation
    #
    class GetCustomEntityTypeRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the custom pattern that you retrieved.
    #   @return [String]
    #
    # @!attribute [rw] regex_string
    #   A regular expression string that is used for detecting sensitive
    #   data in a custom pattern.
    #   @return [String]
    #
    # @!attribute [rw] context_words
    #   A list of context words if specified when you created the custom
    #   pattern. If none of these context words are found within the
    #   vicinity of the regular expression the data will not be detected as
    #   sensitive data.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCustomEntityTypeResponse AWS API Documentation
    #
    class GetCustomEntityTypeResponse < Struct.new(
      :name,
      :regex_string,
      :context_words)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog to retrieve the security configuration
    #   for. If none is provided, the Amazon Web Services account ID is used
    #   by default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataCatalogEncryptionSettingsRequest AWS API Documentation
    #
    class GetDataCatalogEncryptionSettingsRequest < Struct.new(
      :catalog_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_catalog_encryption_settings
    #   The requested security configuration.
    #   @return [Types::DataCatalogEncryptionSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataCatalogEncryptionSettingsResponse AWS API Documentation
    #
    class GetDataCatalogEncryptionSettingsResponse < Struct.new(
      :data_catalog_encryption_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statistic_id
    #   The Statistic ID.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The Profile ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityModelRequest AWS API Documentation
    #
    class GetDataQualityModelRequest < Struct.new(
      :statistic_id,
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The training status of the data quality model.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The timestamp when the data quality model training started.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The timestamp when the data quality model training completed.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The training failure reason.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityModelResponse AWS API Documentation
    #
    class GetDataQualityModelResponse < Struct.new(
      :status,
      :started_on,
      :completed_on,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statistic_id
    #   The Statistic ID.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The Profile ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityModelResultRequest AWS API Documentation
    #
    class GetDataQualityModelResultRequest < Struct.new(
      :statistic_id,
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] completed_on
    #   The timestamp when the data quality model training completed.
    #   @return [Time]
    #
    # @!attribute [rw] model
    #   A list of `StatisticModelResult`
    #   @return [Array<Types::StatisticModelResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityModelResultResponse AWS API Documentation
    #
    class GetDataQualityModelResultResponse < Struct.new(
      :completed_on,
      :model)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] result_id
    #   A unique result ID for the data quality result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityResultRequest AWS API Documentation
    #
    class GetDataQualityResultRequest < Struct.new(
      :result_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for the data quality result.
    #
    # @!attribute [rw] result_id
    #   A unique result ID for the data quality result.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The Profile ID for the data quality result.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   An aggregate data quality score. Represents the ratio of rules that
    #   passed to the total number of rules.
    #   @return [Float]
    #
    # @!attribute [rw] data_source
    #   The table associated with the data quality result, if any.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] ruleset_name
    #   The name of the ruleset associated with the data quality result.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_context
    #   In the context of a job in Glue Studio, each node in the canvas is
    #   typically assigned some sort of name and data quality nodes will
    #   have names. In the case of multiple nodes, the `evaluationContext`
    #   can differentiate the nodes.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time when the run for this data quality result started.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The date and time when the run for this data quality result was
    #   completed.
    #   @return [Time]
    #
    # @!attribute [rw] job_name
    #   The job name associated with the data quality result, if any.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The job run ID associated with the data quality result, if any.
    #   @return [String]
    #
    # @!attribute [rw] ruleset_evaluation_run_id
    #   The unique run ID associated with the ruleset evaluation.
    #   @return [String]
    #
    # @!attribute [rw] rule_results
    #   A list of `DataQualityRuleResult` objects representing the results
    #   for each rule.
    #   @return [Array<Types::DataQualityRuleResult>]
    #
    # @!attribute [rw] analyzer_results
    #   A list of `DataQualityAnalyzerResult` objects representing the
    #   results for each analyzer.
    #   @return [Array<Types::DataQualityAnalyzerResult>]
    #
    # @!attribute [rw] observations
    #   A list of `DataQualityObservation` objects representing the
    #   observations generated after evaluating the rules and analyzers.
    #   @return [Array<Types::DataQualityObservation>]
    #
    # @!attribute [rw] aggregated_metrics
    #   A summary of `DataQualityAggregatedMetrics` objects showing the
    #   total counts of processed rows and rules, including their pass/fail
    #   statistics based on row-level results.
    #   @return [Types::DataQualityAggregatedMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityResultResponse AWS API Documentation
    #
    class GetDataQualityResultResponse < Struct.new(
      :result_id,
      :profile_id,
      :score,
      :data_source,
      :ruleset_name,
      :evaluation_context,
      :started_on,
      :completed_on,
      :job_name,
      :job_run_id,
      :ruleset_evaluation_run_id,
      :rule_results,
      :analyzer_results,
      :observations,
      :aggregated_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] run_id
    #   The unique run identifier associated with this run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityRuleRecommendationRunRequest AWS API Documentation
    #
    class GetDataQualityRuleRecommendationRunRequest < Struct.new(
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for the Data Quality rule recommendation run.
    #
    # @!attribute [rw] run_id
    #   The unique run identifier associated with this run.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The data source (an Glue table) associated with this run.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] role
    #   An IAM role supplied to encrypt the results of the run.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of `G.1X` workers to be used in the run. The default is
    #   5.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The timeout for a run in minutes. This is the maximum time that a
    #   run can consume resources before it is terminated and enters
    #   `TIMEOUT` status. The default is 2,880 minutes (48 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status for this run.
    #   @return [String]
    #
    # @!attribute [rw] error_string
    #   The error strings that are associated with the run.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time when this run started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   A timestamp. The last point in time when this data quality rule
    #   recommendation run was modified.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The date and time when this run was completed.
    #   @return [Time]
    #
    # @!attribute [rw] execution_time
    #   The amount of time (in seconds) that the run consumed resources.
    #   @return [Integer]
    #
    # @!attribute [rw] recommended_ruleset
    #   When a start rule recommendation run completes, it creates a
    #   recommended ruleset (a set of rules). This member has those rules in
    #   Data Quality Definition Language (DQDL) format.
    #   @return [String]
    #
    # @!attribute [rw] created_ruleset_name
    #   The name of the ruleset that was created by the run.
    #   @return [String]
    #
    # @!attribute [rw] data_quality_security_configuration
    #   The name of the security configuration created with the data quality
    #   encryption option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityRuleRecommendationRunResponse AWS API Documentation
    #
    class GetDataQualityRuleRecommendationRunResponse < Struct.new(
      :run_id,
      :data_source,
      :role,
      :number_of_workers,
      :timeout,
      :status,
      :error_string,
      :started_on,
      :last_modified_on,
      :completed_on,
      :execution_time,
      :recommended_ruleset,
      :created_ruleset_name,
      :data_quality_security_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] run_id
    #   The unique run identifier associated with this run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityRulesetEvaluationRunRequest AWS API Documentation
    #
    class GetDataQualityRulesetEvaluationRunRequest < Struct.new(
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] run_id
    #   The unique run identifier associated with this run.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The data source (an Glue table) associated with this evaluation run.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] role
    #   An IAM role supplied to encrypt the results of the run.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of `G.1X` workers to be used in the run. The default is
    #   5.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The timeout for a run in minutes. This is the maximum time that a
    #   run can consume resources before it is terminated and enters
    #   `TIMEOUT` status. The default is 2,880 minutes (48 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] additional_run_options
    #   Additional run options you can specify for an evaluation run.
    #   @return [Types::DataQualityEvaluationRunAdditionalRunOptions]
    #
    # @!attribute [rw] status
    #   The status for this run.
    #   @return [String]
    #
    # @!attribute [rw] error_string
    #   The error strings that are associated with the run.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time when this run started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   A timestamp. The last point in time when this data quality rule
    #   recommendation run was modified.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The date and time when this run was completed.
    #   @return [Time]
    #
    # @!attribute [rw] execution_time
    #   The amount of time (in seconds) that the run consumed resources.
    #   @return [Integer]
    #
    # @!attribute [rw] ruleset_names
    #   A list of ruleset names for the run. Currently, this parameter takes
    #   only one Ruleset name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] result_ids
    #   A list of result IDs for the data quality results for the run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_data_sources
    #   A map of reference strings to additional data sources you can
    #   specify for an evaluation run.
    #   @return [Hash<String,Types::DataSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityRulesetEvaluationRunResponse AWS API Documentation
    #
    class GetDataQualityRulesetEvaluationRunResponse < Struct.new(
      :run_id,
      :data_source,
      :role,
      :number_of_workers,
      :timeout,
      :additional_run_options,
      :status,
      :error_string,
      :started_on,
      :last_modified_on,
      :completed_on,
      :execution_time,
      :ruleset_names,
      :result_ids,
      :additional_data_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the ruleset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityRulesetRequest AWS API Documentation
    #
    class GetDataQualityRulesetRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the data quality ruleset response.
    #
    # @!attribute [rw] name
    #   The name of the ruleset.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the ruleset.
    #   @return [String]
    #
    # @!attribute [rw] ruleset
    #   A Data Quality Definition Language (DQDL) ruleset. For more
    #   information, see the Glue developer guide.
    #   @return [String]
    #
    # @!attribute [rw] target_table
    #   The name and database name of the target table.
    #   @return [Types::DataQualityTargetTable]
    #
    # @!attribute [rw] created_on
    #   A timestamp. The time and date that this data quality ruleset was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   A timestamp. The last point in time when this data quality ruleset
    #   was modified.
    #   @return [Time]
    #
    # @!attribute [rw] recommendation_run_id
    #   When a ruleset was created from a recommendation run, this run ID is
    #   generated to link the two together.
    #   @return [String]
    #
    # @!attribute [rw] data_quality_security_configuration
    #   The name of the security configuration created with the data quality
    #   encryption option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityRulesetResponse AWS API Documentation
    #
    class GetDataQualityRulesetResponse < Struct.new(
      :name,
      :description,
      :ruleset,
      :target_table,
      :created_on,
      :last_modified_on,
      :recommendation_run_id,
      :data_quality_security_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the database resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the database to retrieve. For Hive compatibility, this
    #   should be all lowercase.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabaseRequest AWS API Documentation
    #
    class GetDatabaseRequest < Struct.new(
      :catalog_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database
    #   The definition of the specified database in the Data Catalog.
    #   @return [Types::Database]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabaseResponse AWS API Documentation
    #
    class GetDatabaseResponse < Struct.new(
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog from which to retrieve `Databases`. If
    #   none is provided, the Amazon Web Services account ID is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of databases to return in one response.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_share_type
    #   Allows you to specify that you want to list the databases shared
    #   with your account. The allowable values are `FEDERATED`, `FOREIGN`
    #   or `ALL`.
    #
    #   * If set to `FEDERATED`, will list the federated databases
    #     (referencing an external entity) shared with your account.
    #
    #   * If set to `FOREIGN`, will list the databases shared with your
    #     account.
    #
    #   * If set to `ALL`, will list the databases shared with your account,
    #     as well as the databases in yor local account.
    #   @return [String]
    #
    # @!attribute [rw] attributes_to_get
    #   Specifies the database fields returned by the `GetDatabases` call.
    #   This parameter doesn’t accept an empty list. The request must
    #   include the `NAME`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabasesRequest AWS API Documentation
    #
    class GetDatabasesRequest < Struct.new(
      :catalog_id,
      :next_token,
      :max_results,
      :resource_share_type,
      :attributes_to_get)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_list
    #   A list of `Database` objects from the specified catalog.
    #   @return [Array<Types::Database>]
    #
    # @!attribute [rw] next_token
    #   A continuation token for paginating the returned list of tokens,
    #   returned if the current segment of the list is not the last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabasesResponse AWS API Documentation
    #
    class GetDatabasesResponse < Struct.new(
      :database_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] python_script
    #   The Python script to transform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataflowGraphRequest AWS API Documentation
    #
    class GetDataflowGraphRequest < Struct.new(
      :python_script)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dag_nodes
    #   A list of the nodes in the resulting DAG.
    #   @return [Array<Types::CodeGenNode>]
    #
    # @!attribute [rw] dag_edges
    #   A list of the edges in the resulting DAG.
    #   @return [Array<Types::CodeGenEdge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataflowGraphResponse AWS API Documentation
    #
    class GetDataflowGraphResponse < Struct.new(
      :dag_nodes,
      :dag_edges)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_name
    #   Name of the `DevEndpoint` to retrieve information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpointRequest AWS API Documentation
    #
    class GetDevEndpointRequest < Struct.new(
      :endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dev_endpoint
    #   A `DevEndpoint` definition.
    #   @return [Types::DevEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpointResponse AWS API Documentation
    #
    class GetDevEndpointResponse < Struct.new(
      :dev_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum size of information to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpointsRequest AWS API Documentation
    #
    class GetDevEndpointsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dev_endpoints
    #   A list of `DevEndpoint` definitions.
    #   @return [Array<Types::DevEndpoint>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all `DevEndpoint` definitions have yet
    #   been returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpointsResponse AWS API Documentation
    #
    class GetDevEndpointsResponse < Struct.new(
      :dev_endpoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_name
    #   The name of the connection that contains the connection type
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] catalog_id
    #   The catalog ID of the catalog that contains the connection. This can
    #   be null, By default, the Amazon Web Services Account ID is the
    #   catalog ID.
    #   @return [String]
    #
    # @!attribute [rw] entity_name
    #   Name of the entity that we want to query the preview data from the
    #   given connection type.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, included if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] data_store_api_version
    #   The API version of the SaaS connector.
    #   @return [String]
    #
    # @!attribute [rw] connection_options
    #   Connector options that are required to query the data.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] filter_predicate
    #   A filter predicate that you can apply in the query request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Limits the number of records fetched with the request.
    #   @return [Integer]
    #
    # @!attribute [rw] order_by
    #   A parameter that orders the response preview data.
    #   @return [String]
    #
    # @!attribute [rw] selected_fields
    #   List of fields that we want to fetch as part of preview data.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetEntityRecordsRequest AWS API Documentation
    #
    class GetEntityRecordsRequest < Struct.new(
      :connection_name,
      :catalog_id,
      :entity_name,
      :next_token,
      :data_store_api_version,
      :connection_options,
      :filter_predicate,
      :limit,
      :order_by,
      :selected_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] records
    #   A list of the requested objects.
    #   @return [Array<Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, present if the current segment is not the
    #   last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetEntityRecordsResponse AWS API Documentation
    #
    class GetEntityRecordsResponse < Struct.new(
      :records,
      :next_token)
      SENSITIVE = [:records]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The connection ARN of the source, or the database ARN of the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetIntegrationResourcePropertyRequest AWS API Documentation
    #
    class GetIntegrationResourcePropertyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The connection ARN of the source, or the database ARN of the target.
    #   @return [String]
    #
    # @!attribute [rw] source_processing_properties
    #   The resource properties associated with the integration source.
    #   @return [Types::SourceProcessingProperties]
    #
    # @!attribute [rw] target_processing_properties
    #   The resource properties associated with the integration target.
    #   @return [Types::TargetProcessingProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetIntegrationResourcePropertyResponse AWS API Documentation
    #
    class GetIntegrationResourcePropertyResponse < Struct.new(
      :resource_arn,
      :source_processing_properties,
      :target_processing_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the target table for which to
    #   retrieve integration table properties. Currently, this API only
    #   supports retrieving properties for target tables, and the provided
    #   ARN should be the ARN of the target table in the Glue Data Catalog.
    #   Support for retrieving integration table properties for source
    #   connections (using the connection ARN) is not yet implemented and
    #   will be added in a future release.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table to be replicated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetIntegrationTablePropertiesRequest AWS API Documentation
    #
    class GetIntegrationTablePropertiesRequest < Struct.new(
      :resource_arn,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the target table for which to
    #   retrieve integration table properties. Currently, this API only
    #   supports retrieving properties for target tables, and the provided
    #   ARN should be the ARN of the target table in the Glue Data Catalog.
    #   Support for retrieving integration table properties for source
    #   connections (using the connection ARN) is not yet implemented and
    #   will be added in a future release.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table to be replicated.
    #   @return [String]
    #
    # @!attribute [rw] source_table_config
    #   A structure for the source table configuration.
    #   @return [Types::SourceTableConfig]
    #
    # @!attribute [rw] target_table_config
    #   A structure for the target table configuration.
    #   @return [Types::TargetTableConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetIntegrationTablePropertiesResponse AWS API Documentation
    #
    class GetIntegrationTablePropertiesResponse < Struct.new(
      :resource_arn,
      :table_name,
      :source_table_config,
      :target_table_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the job in question.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique run identifier associated with this job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobBookmarkRequest AWS API Documentation
    #
    class GetJobBookmarkRequest < Struct.new(
      :job_name,
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_bookmark_entry
    #   A structure that defines a point that a job can resume processing.
    #   @return [Types::JobBookmarkEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobBookmarkResponse AWS API Documentation
    #
    class GetJobBookmarkResponse < Struct.new(
      :job_bookmark_entry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the job definition to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRequest AWS API Documentation
    #
    class GetJobRequest < Struct.new(
      :job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   The requested job definition.
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobResponse AWS API Documentation
    #
    class GetJobResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   Name of the job definition being run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The ID of the job run.
    #   @return [String]
    #
    # @!attribute [rw] predecessors_included
    #   True if a list of predecessor runs should be returned.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRunRequest AWS API Documentation
    #
    class GetJobRunRequest < Struct.new(
      :job_name,
      :run_id,
      :predecessors_included)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_run
    #   The requested job-run metadata.
    #   @return [Types::JobRun]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRunResponse AWS API Documentation
    #
    class GetJobRunResponse < Struct.new(
      :job_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the job definition for which to retrieve all job runs.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRunsRequest AWS API Documentation
    #
    class GetJobRunsRequest < Struct.new(
      :job_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_runs
    #   A list of job-run metadata objects.
    #   @return [Array<Types::JobRun>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all requested job runs have been
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRunsResponse AWS API Documentation
    #
    class GetJobRunsResponse < Struct.new(
      :job_runs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobsRequest AWS API Documentation
    #
    class GetJobsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of job definitions.
    #   @return [Array<Types::Job>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all job definitions have yet been
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobsResponse AWS API Documentation
    #
    class GetJobsResponse < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] task_run_id
    #   The unique identifier of the task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTaskRunRequest AWS API Documentation
    #
    class GetMLTaskRunRequest < Struct.new(
      :transform_id,
      :task_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the task run.
    #   @return [String]
    #
    # @!attribute [rw] task_run_id
    #   The unique run identifier associated with this run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for this task run.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The names of the log groups that are associated with the task run.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The list of properties that are associated with the task run.
    #   @return [Types::TaskRunProperties]
    #
    # @!attribute [rw] error_string
    #   The error strings that are associated with the task run.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time when this task run started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The date and time when this task run was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The date and time when this task run was completed.
    #   @return [Time]
    #
    # @!attribute [rw] execution_time
    #   The amount of time (in seconds) that the task run consumed
    #   resources.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTaskRunResponse AWS API Documentation
    #
    class GetMLTaskRunResponse < Struct.new(
      :transform_id,
      :task_run_id,
      :status,
      :log_group_name,
      :properties,
      :error_string,
      :started_on,
      :last_modified_on,
      :completed_on,
      :execution_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token for pagination of the results. The default is empty.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   The filter criteria, in the `TaskRunFilterCriteria` structure, for
    #   the task run.
    #   @return [Types::TaskRunFilterCriteria]
    #
    # @!attribute [rw] sort
    #   The sorting criteria, in the `TaskRunSortCriteria` structure, for
    #   the task run.
    #   @return [Types::TaskRunSortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTaskRunsRequest AWS API Documentation
    #
    class GetMLTaskRunsRequest < Struct.new(
      :transform_id,
      :next_token,
      :max_results,
      :filter,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_runs
    #   A list of task runs that are associated with the transform.
    #   @return [Array<Types::TaskRun>]
    #
    # @!attribute [rw] next_token
    #   A pagination token, if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTaskRunsResponse AWS API Documentation
    #
    class GetMLTaskRunsResponse < Struct.new(
      :task_runs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the transform, generated at the time that
    #   the transform was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTransformRequest AWS API Documentation
    #
    class GetMLTransformRequest < Struct.new(
      :transform_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the transform, generated at the time that
    #   the transform was created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name given to the transform when it was created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the transform.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The last known status of the transform (to indicate whether it can
    #   be used or not). One of "NOT\_READY", "READY", or "DELETING".
    #   @return [String]
    #
    # @!attribute [rw] created_on
    #   The date and time when the transform was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The date and time when the transform was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] input_record_tables
    #   A list of Glue table definitions used by the transform.
    #   @return [Array<Types::GlueTable>]
    #
    # @!attribute [rw] parameters
    #   The configuration parameters that are specific to the algorithm
    #   used.
    #   @return [Types::TransformParameters]
    #
    # @!attribute [rw] evaluation_metrics
    #   The latest evaluation metrics.
    #   @return [Types::EvaluationMetrics]
    #
    # @!attribute [rw] label_count
    #   The number of labels available for this transform.
    #   @return [Integer]
    #
    # @!attribute [rw] schema
    #   The `Map<Column, Type>` object that represents the schema that this
    #   transform accepts. Has an upper bound of 100 columns.
    #   @return [Array<Types::SchemaColumn>]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role with the
    #   required permissions.
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   This value determines which version of Glue this machine learning
    #   transform is compatible with. Glue 1.0 is recommended for most
    #   customers. If the value is not set, the Glue compatibility defaults
    #   to Glue 0.9. For more information, see [Glue Versions][1] in the
    #   developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The number of Glue data processing units (DPUs) that are allocated
    #   to task runs for this transform. You can allocate from 2 to 100
    #   DPUs; the default is 10. A DPU is a relative measure of processing
    #   power that consists of 4 vCPUs of compute capacity and 16 GB of
    #   memory. For more information, see the [Glue pricing page][1].
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when this task runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when this task runs.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The timeout for a task run for this transform in minutes. This is
    #   the maximum time that a task run for this transform can consume
    #   resources before it is terminated and enters `TIMEOUT` status. The
    #   default is 2,880 minutes (48 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry a task for this transform after
    #   a task run fails.
    #   @return [Integer]
    #
    # @!attribute [rw] transform_encryption
    #   The encryption-at-rest settings of the transform that apply to
    #   accessing user data. Machine learning transforms can access user
    #   data encrypted in Amazon S3 using KMS.
    #   @return [Types::TransformEncryption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTransformResponse AWS API Documentation
    #
    class GetMLTransformResponse < Struct.new(
      :transform_id,
      :name,
      :description,
      :status,
      :created_on,
      :last_modified_on,
      :input_record_tables,
      :parameters,
      :evaluation_metrics,
      :label_count,
      :schema,
      :role,
      :glue_version,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :timeout,
      :max_retries,
      :transform_encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A paginated token to offset the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   The filter transformation criteria.
    #   @return [Types::TransformFilterCriteria]
    #
    # @!attribute [rw] sort
    #   The sorting criteria.
    #   @return [Types::TransformSortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTransformsRequest AWS API Documentation
    #
    class GetMLTransformsRequest < Struct.new(
      :next_token,
      :max_results,
      :filter,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transforms
    #   A list of machine learning transforms.
    #   @return [Array<Types::MLTransform>]
    #
    # @!attribute [rw] next_token
    #   A pagination token, if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTransformsResponse AWS API Documentation
    #
    class GetMLTransformsResponse < Struct.new(
      :transforms,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source
    #   Specifies the source table.
    #   @return [Types::CatalogEntry]
    #
    # @!attribute [rw] sinks
    #   A list of target tables.
    #   @return [Array<Types::CatalogEntry>]
    #
    # @!attribute [rw] location
    #   Parameters for the mapping.
    #   @return [Types::Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMappingRequest AWS API Documentation
    #
    class GetMappingRequest < Struct.new(
      :source,
      :sinks,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mapping
    #   A list of mappings to the specified targets.
    #   @return [Array<Types::MappingEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMappingResponse AWS API Documentation
    #
    class GetMappingResponse < Struct.new(
      :mapping)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The catalog ID where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Specifies the name of a database from which you want to retrieve
    #   partition indexes.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   Specifies the name of a table for which you want to retrieve the
    #   partition indexes.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, included if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionIndexesRequest AWS API Documentation
    #
    class GetPartitionIndexesRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partition_index_descriptor_list
    #   A list of index descriptors.
    #   @return [Array<Types::PartitionIndexDescriptor>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, present if the current list segment is not the
    #   last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionIndexesResponse AWS API Documentation
    #
    class GetPartitionIndexesResponse < Struct.new(
      :partition_index_descriptor_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partition in question resides.
    #   If none is provided, the Amazon Web Services account ID is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partition resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partition's table.
    #   @return [String]
    #
    # @!attribute [rw] partition_values
    #   The values that define the partition.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionRequest AWS API Documentation
    #
    class GetPartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partition
    #   The requested information, in the form of a `Partition` object.
    #   @return [Types::Partition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionResponse AWS API Documentation
    #
    class GetPartitionResponse < Struct.new(
      :partition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partitions in question reside.
    #   If none is provided, the Amazon Web Services account ID is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partitions reside.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partitions' table.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   An expression that filters the partitions to be returned.
    #
    #   The expression uses SQL syntax similar to the SQL `WHERE` filter
    #   clause. The SQL statement parser [JSQLParser][1] parses the
    #   expression.
    #
    #   *Operators*: The following are the operators that you can use in the
    #   `Expression` API call:
    #
    #   =
    #
    #   : Checks whether the values of the two operands are equal; if yes,
    #     then the condition becomes true.
    #
    #     Example: Assume 'variable a' holds 10 and 'variable b' holds
    #     20.
    #
    #     (a = b) is not true.
    #
    #   &lt; &gt;
    #
    #   : Checks whether the values of two operands are equal; if the values
    #     are not equal, then the condition becomes true.
    #
    #     Example: (a &lt; &gt; b) is true.
    #
    #   &gt;
    #
    #   : Checks whether the value of the left operand is greater than the
    #     value of the right operand; if yes, then the condition becomes
    #     true.
    #
    #     Example: (a &gt; b) is not true.
    #
    #   &lt;
    #
    #   : Checks whether the value of the left operand is less than the
    #     value of the right operand; if yes, then the condition becomes
    #     true.
    #
    #     Example: (a &lt; b) is true.
    #
    #   &gt;=
    #
    #   : Checks whether the value of the left operand is greater than or
    #     equal to the value of the right operand; if yes, then the
    #     condition becomes true.
    #
    #     Example: (a &gt;= b) is not true.
    #
    #   &lt;=
    #
    #   : Checks whether the value of the left operand is less than or equal
    #     to the value of the right operand; if yes, then the condition
    #     becomes true.
    #
    #     Example: (a &lt;= b) is true.
    #
    #   AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL
    #
    #   : Logical operators.
    #
    #   *Supported Partition Key Types*: The following are the supported
    #   partition keys.
    #
    #   * `string`
    #
    #   * `date`
    #
    #   * `timestamp`
    #
    #   * `int`
    #
    #   * `bigint`
    #
    #   * `long`
    #
    #   * `tinyint`
    #
    #   * `smallint`
    #
    #   * `decimal`
    #
    #   If an type is encountered that is not valid, an exception is thrown.
    #
    #   The following list shows the valid operators on each type. When you
    #   define a crawler, the `partitionKey` type is created as a `STRING`,
    #   to be compatible with the catalog partitions.
    #
    #   *Sample API Call*:
    #
    #
    #
    #   [1]: http://jsqlparser.sourceforge.net/home.php
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call to retrieve
    #   these partitions.
    #   @return [String]
    #
    # @!attribute [rw] segment
    #   The segment of the table's partitions to scan in this request.
    #   @return [Types::Segment]
    #
    # @!attribute [rw] max_results
    #   The maximum number of partitions to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] exclude_column_schema
    #   When true, specifies not returning the partition column schema.
    #   Useful when you are interested only in other partition attributes
    #   such as partition values or location. This approach avoids the
    #   problem of a large response by not returning duplicate data.
    #   @return [Boolean]
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID at which to read the partition contents.
    #   @return [String]
    #
    # @!attribute [rw] query_as_of_time
    #   The time as of when to read the partition contents. If not set, the
    #   most recent transaction commit time will be used. Cannot be
    #   specified along with `TransactionId`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionsRequest AWS API Documentation
    #
    class GetPartitionsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :expression,
      :next_token,
      :segment,
      :max_results,
      :exclude_column_schema,
      :transaction_id,
      :query_as_of_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partitions
    #   A list of requested partitions.
    #   @return [Array<Types::Partition>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list of partitions does not
    #   include the last one.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionsResponse AWS API Documentation
    #
    class GetPartitionsResponse < Struct.new(
      :partitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mapping
    #   The list of mappings from a source table to target tables.
    #   @return [Array<Types::MappingEntry>]
    #
    # @!attribute [rw] source
    #   The source table.
    #   @return [Types::CatalogEntry]
    #
    # @!attribute [rw] sinks
    #   The target tables.
    #   @return [Array<Types::CatalogEntry>]
    #
    # @!attribute [rw] location
    #   The parameters for the mapping.
    #   @return [Types::Location]
    #
    # @!attribute [rw] language
    #   The programming language of the code to perform the mapping.
    #   @return [String]
    #
    # @!attribute [rw] additional_plan_options_map
    #   A map to hold additional optional key-value parameters.
    #
    #   Currently, these key-value pairs are supported:
    #
    #   * `inferSchema`  —  Specifies whether to set `inferSchema` to true
    #     or false for the default script generated by an Glue job. For
    #     example, to set `inferSchema` to true, pass the following key
    #     value pair:
    #
    #     `--additional-plan-options-map '{"inferSchema":"true"}'`
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPlanRequest AWS API Documentation
    #
    class GetPlanRequest < Struct.new(
      :mapping,
      :source,
      :sinks,
      :location,
      :language,
      :additional_plan_options_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] python_script
    #   A Python script to perform the mapping.
    #   @return [String]
    #
    # @!attribute [rw] scala_code
    #   The Scala code to perform the mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPlanResponse AWS API Documentation
    #
    class GetPlanResponse < Struct.new(
      :python_script,
      :scala_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   This is a wrapper structure that may contain the registry name and
    #   Amazon Resource Name (ARN).
    #   @return [Types::RegistryId]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetRegistryInput AWS API Documentation
    #
    class GetRegistryInput < Struct.new(
      :registry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_name
    #   The name of the registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the registry.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the registry.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the registry.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time the registry was created.
    #   @return [String]
    #
    # @!attribute [rw] updated_time
    #   The date and time the registry was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetRegistryResponse AWS API Documentation
    #
    class GetRegistryResponse < Struct.new(
      :registry_name,
      :registry_arn,
      :description,
      :status,
      :created_time,
      :updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetResourcePoliciesRequest AWS API Documentation
    #
    class GetResourcePoliciesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] get_resource_policies_response_list
    #   A list of the individual resource policies and the account-level
    #   resource policy.
    #   @return [Array<Types::GluePolicy>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list does not contain the last
    #   resource policy available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetResourcePoliciesResponse AWS API Documentation
    #
    class GetResourcePoliciesResponse < Struct.new(
      :get_resource_policies_response_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the Glue resource for which to retrieve the resource
    #   policy. If not supplied, the Data Catalog resource policy is
    #   returned. Use `GetResourcePolicies` to view all existing resource
    #   policies. For more information see [Specifying Glue Resource
    #   ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/glue-specifying-resource-arns.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_in_json
    #   Contains the requested policy document, in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] policy_hash
    #   Contains the hash value associated with this policy.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The date and time at which the policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The date and time at which the policy was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :policy_in_json,
      :policy_hash,
      :create_time,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_id
    #   This is a wrapper structure to contain schema identity fields. The
    #   structure contains:
    #
    #   * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    #     One of `SchemaArn` or `SchemaName` has to be provided.
    #
    #   * SchemaId$SchemaName: The name of the schema. One of `SchemaArn` or
    #     `SchemaName` has to be provided.
    #   @return [Types::SchemaId]
    #
    # @!attribute [rw] schema_definition
    #   The definition of the schema for which schema details are required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSchemaByDefinitionInput AWS API Documentation
    #
    class GetSchemaByDefinitionInput < Struct.new(
      :schema_id,
      :schema_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_version_id
    #   The schema ID of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema.
    #   @return [String]
    #
    # @!attribute [rw] data_format
    #   The data format of the schema definition. Currently `AVRO`, `JSON`
    #   and `PROTOBUF` are supported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time the schema was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSchemaByDefinitionResponse AWS API Documentation
    #
    class GetSchemaByDefinitionResponse < Struct.new(
      :schema_version_id,
      :schema_arn,
      :data_format,
      :status,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_id
    #   This is a wrapper structure to contain schema identity fields. The
    #   structure contains:
    #
    #   * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    #     Either `SchemaArn` or `SchemaName` and `RegistryName` has to be
    #     provided.
    #
    #   * SchemaId$SchemaName: The name of the schema. Either `SchemaArn` or
    #     `SchemaName` and `RegistryName` has to be provided.
    #   @return [Types::SchemaId]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSchemaInput AWS API Documentation
    #
    class GetSchemaInput < Struct.new(
      :schema_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_name
    #   The name of the registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the registry.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of schema if specified when created
    #   @return [String]
    #
    # @!attribute [rw] data_format
    #   The data format of the schema definition. Currently `AVRO`, `JSON`
    #   and `PROTOBUF` are supported.
    #   @return [String]
    #
    # @!attribute [rw] compatibility
    #   The compatibility mode of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_checkpoint
    #   The version number of the checkpoint (the last time the
    #   compatibility mode was changed).
    #   @return [Integer]
    #
    # @!attribute [rw] latest_schema_version
    #   The latest version of the schema associated with the returned schema
    #   definition.
    #   @return [Integer]
    #
    # @!attribute [rw] next_schema_version
    #   The next version of the schema associated with the returned schema
    #   definition.
    #   @return [Integer]
    #
    # @!attribute [rw] schema_status
    #   The status of the schema.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time the schema was created.
    #   @return [String]
    #
    # @!attribute [rw] updated_time
    #   The date and time the schema was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSchemaResponse AWS API Documentation
    #
    class GetSchemaResponse < Struct.new(
      :registry_name,
      :registry_arn,
      :schema_name,
      :schema_arn,
      :description,
      :data_format,
      :compatibility,
      :schema_checkpoint,
      :latest_schema_version,
      :next_schema_version,
      :schema_status,
      :created_time,
      :updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_id
    #   This is a wrapper structure to contain schema identity fields. The
    #   structure contains:
    #
    #   * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    #     Either `SchemaArn` or `SchemaName` and `RegistryName` has to be
    #     provided.
    #
    #   * SchemaId$SchemaName: The name of the schema. Either `SchemaArn` or
    #     `SchemaName` and `RegistryName` has to be provided.
    #   @return [Types::SchemaId]
    #
    # @!attribute [rw] schema_version_id
    #   The `SchemaVersionId` of the schema version. This field is required
    #   for fetching by schema ID. Either this or the `SchemaId` wrapper has
    #   to be provided.
    #   @return [String]
    #
    # @!attribute [rw] schema_version_number
    #   The version number of the schema.
    #   @return [Types::SchemaVersionNumber]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSchemaVersionInput AWS API Documentation
    #
    class GetSchemaVersionInput < Struct.new(
      :schema_id,
      :schema_version_id,
      :schema_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_version_id
    #   The `SchemaVersionId` of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] schema_definition
    #   The schema definition for the schema ID.
    #   @return [String]
    #
    # @!attribute [rw] data_format
    #   The data format of the schema definition. Currently `AVRO`, `JSON`
    #   and `PROTOBUF` are supported.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the schema.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time the schema version was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSchemaVersionResponse AWS API Documentation
    #
    class GetSchemaVersionResponse < Struct.new(
      :schema_version_id,
      :schema_definition,
      :data_format,
      :schema_arn,
      :version_number,
      :status,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_id
    #   This is a wrapper structure to contain schema identity fields. The
    #   structure contains:
    #
    #   * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    #     One of `SchemaArn` or `SchemaName` has to be provided.
    #
    #   * SchemaId$SchemaName: The name of the schema. One of `SchemaArn` or
    #     `SchemaName` has to be provided.
    #   @return [Types::SchemaId]
    #
    # @!attribute [rw] first_schema_version_number
    #   The first of the two schema versions to be compared.
    #   @return [Types::SchemaVersionNumber]
    #
    # @!attribute [rw] second_schema_version_number
    #   The second of the two schema versions to be compared.
    #   @return [Types::SchemaVersionNumber]
    #
    # @!attribute [rw] schema_diff_type
    #   Refers to `SYNTAX_DIFF`, which is the currently supported diff type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSchemaVersionsDiffInput AWS API Documentation
    #
    class GetSchemaVersionsDiffInput < Struct.new(
      :schema_id,
      :first_schema_version_number,
      :second_schema_version_number,
      :schema_diff_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] diff
    #   The difference between schemas as a string in JsonPatch format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSchemaVersionsDiffResponse AWS API Documentation
    #
    class GetSchemaVersionsDiffResponse < Struct.new(
      :diff)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the security configuration to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSecurityConfigurationRequest AWS API Documentation
    #
    class GetSecurityConfigurationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_configuration
    #   The requested security configuration.
    #   @return [Types::SecurityConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSecurityConfigurationResponse AWS API Documentation
    #
    class GetSecurityConfigurationResponse < Struct.new(
      :security_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSecurityConfigurationsRequest AWS API Documentation
    #
    class GetSecurityConfigurationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_configurations
    #   A list of security configurations.
    #   @return [Array<Types::SecurityConfiguration>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if there are more security configurations to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSecurityConfigurationsResponse AWS API Documentation
    #
    class GetSecurityConfigurationsResponse < Struct.new(
      :security_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the session.
    #   @return [String]
    #
    # @!attribute [rw] request_origin
    #   The origin of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSessionRequest AWS API Documentation
    #
    class GetSessionRequest < Struct.new(
      :id,
      :request_origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   The session object is returned in the response.
    #   @return [Types::Session]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSessionResponse AWS API Documentation
    #
    class GetSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The Session ID of the statement.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The Id of the statement.
    #   @return [Integer]
    #
    # @!attribute [rw] request_origin
    #   The origin of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetStatementRequest AWS API Documentation
    #
    class GetStatementRequest < Struct.new(
      :session_id,
      :id,
      :request_origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statement
    #   Returns the statement.
    #   @return [Types::Statement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetStatementResponse AWS API Documentation
    #
    class GetStatementResponse < Struct.new(
      :statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The Catalog ID of the table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database in the catalog in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of table optimizer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableOptimizerRequest AWS API Documentation
    #
    class GetTableOptimizerRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The Catalog ID of the table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database in the catalog in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_optimizer
    #   The optimizer associated with the specified table.
    #   @return [Types::TableOptimizer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableOptimizerResponse AWS API Documentation
    #
    class GetTableOptimizerResponse < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :table_optimizer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database in the catalog in which the table resides.
    #   For Hive compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table for which to retrieve the definition. For Hive
    #   compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID at which to read the table contents.
    #   @return [String]
    #
    # @!attribute [rw] query_as_of_time
    #   The time as of when to read the table contents. If not set, the most
    #   recent transaction commit time will be used. Cannot be specified
    #   along with `TransactionId`.
    #   @return [Time]
    #
    # @!attribute [rw] include_status_details
    #   Specifies whether to include status details related to a request to
    #   create or update an Glue Data Catalog view.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableRequest AWS API Documentation
    #
    class GetTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :transaction_id,
      :query_as_of_time,
      :include_status_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table
    #   The `Table` object that defines the specified table.
    #   @return [Types::Table]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableResponse AWS API Documentation
    #
    class GetTableResponse < Struct.new(
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID value of the table version to be retrieved. A `VersionID` is
    #   a string representation of an integer. Each version is incremented
    #   by 1.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersionRequest AWS API Documentation
    #
    class GetTableVersionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_version
    #   The requested table version.
    #   @return [Types::TableVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersionResponse AWS API Documentation
    #
    class GetTableVersionResponse < Struct.new(
      :table_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of table versions to return in one response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersionsRequest AWS API Documentation
    #
    class GetTableVersionsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_versions
    #   A list of strings identifying available versions of the specified
    #   table.
    #   @return [Array<Types::TableVersion>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the list of available versions does not
    #   include the last one.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersionsResponse AWS API Documentation
    #
    class GetTableVersionsResponse < Struct.new(
      :table_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database in the catalog whose tables to list. For Hive
    #   compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   A regular expression pattern. If present, only those tables whose
    #   names match the pattern are returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, included if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of tables to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID at which to read the table contents.
    #   @return [String]
    #
    # @!attribute [rw] query_as_of_time
    #   The time as of when to read the table contents. If not set, the most
    #   recent transaction commit time will be used. Cannot be specified
    #   along with `TransactionId`.
    #   @return [Time]
    #
    # @!attribute [rw] include_status_details
    #   Specifies whether to include status details related to a request to
    #   create or update an Glue Data Catalog view.
    #   @return [Boolean]
    #
    # @!attribute [rw] attributes_to_get
    #   Specifies the table fields returned by the `GetTables` call. This
    #   parameter doesn’t accept an empty list. The request must include
    #   `NAME`.
    #
    #   The following are the valid combinations of values:
    #
    #   * `NAME` - Names of all tables in the database.
    #
    #   * `NAME`, `TABLE_TYPE` - Names of all tables and the table types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTablesRequest AWS API Documentation
    #
    class GetTablesRequest < Struct.new(
      :catalog_id,
      :database_name,
      :expression,
      :next_token,
      :max_results,
      :transaction_id,
      :query_as_of_time,
      :include_status_details,
      :attributes_to_get)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_list
    #   A list of the requested `Table` objects.
    #   @return [Array<Types::Table>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, present if the current list segment is not the
    #   last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTablesResponse AWS API Documentation
    #
    class GetTablesResponse < Struct.new(
      :table_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to retrieve
    #   tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTagsRequest AWS API Documentation
    #
    class GetTagsRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The requested tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTagsResponse AWS API Documentation
    #
    class GetTagsResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trigger to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggerRequest AWS API Documentation
    #
    class GetTriggerRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trigger
    #   The requested trigger definition.
    #   @return [Types::Trigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggerResponse AWS API Documentation
    #
    class GetTriggerResponse < Struct.new(
      :trigger)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] dependent_job_name
    #   The name of the job to retrieve triggers for. The trigger that can
    #   start this job is returned, and if there is no such trigger, all
    #   triggers are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggersRequest AWS API Documentation
    #
    class GetTriggersRequest < Struct.new(
      :next_token,
      :dependent_job_name,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] triggers
    #   A list of triggers for the specified job.
    #   @return [Array<Types::Trigger>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all the requested triggers have yet
    #   been returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggersResponse AWS API Documentation
    #
    class GetTriggersResponse < Struct.new(
      :triggers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] region
    #   Specified only if the base tables belong to a different Amazon Web
    #   Services Region.
    #   @return [String]
    #
    # @!attribute [rw] catalog_id
    #   The catalog ID where the partition resides.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   (Required) Specifies the name of a database that contains the
    #   partition.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   (Required) Specifies the name of a table that contains the
    #   partition.
    #   @return [String]
    #
    # @!attribute [rw] partition_values
    #   (Required) A list of partition key values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] audit_context
    #   A structure containing Lake Formation audit context information.
    #   @return [Types::AuditContext]
    #
    # @!attribute [rw] supported_permission_types
    #   (Required) A list of supported permission types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] query_session_context
    #   A structure used as a protocol between query engines and Lake
    #   Formation or Glue. Contains both a Lake Formation generated
    #   authorization identifier and information from the request's
    #   authorization context.
    #   @return [Types::QuerySessionContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUnfilteredPartitionMetadataRequest AWS API Documentation
    #
    class GetUnfilteredPartitionMetadataRequest < Struct.new(
      :region,
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      :audit_context,
      :supported_permission_types,
      :query_session_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partition
    #   A Partition object containing the partition metadata.
    #   @return [Types::Partition]
    #
    # @!attribute [rw] authorized_columns
    #   A list of column names that the user has been granted access to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_registered_with_lake_formation
    #   A Boolean value that indicates whether the partition location is
    #   registered with Lake Formation.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUnfilteredPartitionMetadataResponse AWS API Documentation
    #
    class GetUnfilteredPartitionMetadataResponse < Struct.new(
      :partition,
      :authorized_columns,
      :is_registered_with_lake_formation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] region
    #   Specified only if the base tables belong to a different Amazon Web
    #   Services Region.
    #   @return [String]
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partitions in question reside.
    #   If none is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partitions reside.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table that contains the partition.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   An expression that filters the partitions to be returned.
    #
    #   The expression uses SQL syntax similar to the SQL `WHERE` filter
    #   clause. The SQL statement parser [JSQLParser][1] parses the
    #   expression.
    #
    #   *Operators*: The following are the operators that you can use in the
    #   `Expression` API call:
    #
    #   =
    #
    #   : Checks whether the values of the two operands are equal; if yes,
    #     then the condition becomes true.
    #
    #     Example: Assume 'variable a' holds 10 and 'variable b' holds
    #     20.
    #
    #     (a = b) is not true.
    #
    #   &lt; &gt;
    #
    #   : Checks whether the values of two operands are equal; if the values
    #     are not equal, then the condition becomes true.
    #
    #     Example: (a &lt; &gt; b) is true.
    #
    #   &gt;
    #
    #   : Checks whether the value of the left operand is greater than the
    #     value of the right operand; if yes, then the condition becomes
    #     true.
    #
    #     Example: (a &gt; b) is not true.
    #
    #   &lt;
    #
    #   : Checks whether the value of the left operand is less than the
    #     value of the right operand; if yes, then the condition becomes
    #     true.
    #
    #     Example: (a &lt; b) is true.
    #
    #   &gt;=
    #
    #   : Checks whether the value of the left operand is greater than or
    #     equal to the value of the right operand; if yes, then the
    #     condition becomes true.
    #
    #     Example: (a &gt;= b) is not true.
    #
    #   &lt;=
    #
    #   : Checks whether the value of the left operand is less than or equal
    #     to the value of the right operand; if yes, then the condition
    #     becomes true.
    #
    #     Example: (a &lt;= b) is true.
    #
    #   AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL
    #
    #   : Logical operators.
    #
    #   *Supported Partition Key Types*: The following are the supported
    #   partition keys.
    #
    #   * `string`
    #
    #   * `date`
    #
    #   * `timestamp`
    #
    #   * `int`
    #
    #   * `bigint`
    #
    #   * `long`
    #
    #   * `tinyint`
    #
    #   * `smallint`
    #
    #   * `decimal`
    #
    #   If an type is encountered that is not valid, an exception is thrown.
    #
    #
    #
    #   [1]: http://jsqlparser.sourceforge.net/home.php
    #   @return [String]
    #
    # @!attribute [rw] audit_context
    #   A structure containing Lake Formation audit context information.
    #   @return [Types::AuditContext]
    #
    # @!attribute [rw] supported_permission_types
    #   A list of supported permission types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call to retrieve
    #   these partitions.
    #   @return [String]
    #
    # @!attribute [rw] segment
    #   The segment of the table's partitions to scan in this request.
    #   @return [Types::Segment]
    #
    # @!attribute [rw] max_results
    #   The maximum number of partitions to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] query_session_context
    #   A structure used as a protocol between query engines and Lake
    #   Formation or Glue. Contains both a Lake Formation generated
    #   authorization identifier and information from the request's
    #   authorization context.
    #   @return [Types::QuerySessionContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUnfilteredPartitionsMetadataRequest AWS API Documentation
    #
    class GetUnfilteredPartitionsMetadataRequest < Struct.new(
      :region,
      :catalog_id,
      :database_name,
      :table_name,
      :expression,
      :audit_context,
      :supported_permission_types,
      :next_token,
      :segment,
      :max_results,
      :query_session_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unfiltered_partitions
    #   A list of requested partitions.
    #   @return [Array<Types::UnfilteredPartition>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list of partitions does not
    #   include the last one.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUnfilteredPartitionsMetadataResponse AWS API Documentation
    #
    class GetUnfilteredPartitionsMetadataResponse < Struct.new(
      :unfiltered_partitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] region
    #   Specified only if the base tables belong to a different Amazon Web
    #   Services Region.
    #   @return [String]
    #
    # @!attribute [rw] catalog_id
    #   The catalog ID where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   (Required) Specifies the name of a database that contains the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   (Required) Specifies the name of a table for which you are
    #   requesting metadata.
    #   @return [String]
    #
    # @!attribute [rw] audit_context
    #   A structure containing Lake Formation audit context information.
    #   @return [Types::AuditContext]
    #
    # @!attribute [rw] supported_permission_types
    #   Indicates the level of filtering a third-party analytical engine is
    #   capable of enforcing when calling the `GetUnfilteredTableMetadata`
    #   API operation. Accepted values are:
    #
    #   * `COLUMN_PERMISSION` - Column permissions ensure that users can
    #     access only specific columns in the table. If there are particular
    #     columns contain sensitive data, data lake administrators can
    #     define column filters that exclude access to specific columns.
    #
    #   * `CELL_FILTER_PERMISSION` - Cell-level filtering combines column
    #     filtering (include or exclude columns) and row filter expressions
    #     to restrict access to individual elements in the table.
    #
    #   * `NESTED_PERMISSION` - Nested permissions combines cell-level
    #     filtering and nested column filtering to restrict access to
    #     columns and/or nested columns in specific rows based on row filter
    #     expressions.
    #
    #   * `NESTED_CELL_PERMISSION` - Nested cell permissions combines nested
    #     permission with nested cell-level filtering. This allows different
    #     subsets of nested columns to be restricted based on an array of
    #     row filter expressions.
    #
    #   Note: Each of these permission types follows a hierarchical order
    #   where each subsequent permission type includes all permission of the
    #   previous type.
    #
    #   Important: If you provide a supported permission type that doesn't
    #   match the user's level of permissions on the table, then Lake
    #   Formation raises an exception. For example, if the third-party
    #   engine calling the `GetUnfilteredTableMetadata` operation can
    #   enforce only column-level filtering, and the user has nested cell
    #   filtering applied on the table, Lake Formation throws an exception,
    #   and will not return unfiltered table metadata and data access
    #   credentials.
    #   @return [Array<String>]
    #
    # @!attribute [rw] parent_resource_arn
    #   The resource ARN of the view.
    #   @return [String]
    #
    # @!attribute [rw] root_resource_arn
    #   The resource ARN of the root view in a chain of nested views.
    #   @return [String]
    #
    # @!attribute [rw] supported_dialect
    #   A structure specifying the dialect and dialect version used by the
    #   query engine.
    #   @return [Types::SupportedDialect]
    #
    # @!attribute [rw] permissions
    #   The Lake Formation data permissions of the caller on the table. Used
    #   to authorize the call when no view context is found.
    #   @return [Array<String>]
    #
    # @!attribute [rw] query_session_context
    #   A structure used as a protocol between query engines and Lake
    #   Formation or Glue. Contains both a Lake Formation generated
    #   authorization identifier and information from the request's
    #   authorization context.
    #   @return [Types::QuerySessionContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUnfilteredTableMetadataRequest AWS API Documentation
    #
    class GetUnfilteredTableMetadataRequest < Struct.new(
      :region,
      :catalog_id,
      :database_name,
      :name,
      :audit_context,
      :supported_permission_types,
      :parent_resource_arn,
      :root_resource_arn,
      :supported_dialect,
      :permissions,
      :query_session_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table
    #   A Table object containing the table metadata.
    #   @return [Types::Table]
    #
    # @!attribute [rw] authorized_columns
    #   A list of column names that the user has been granted access to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_registered_with_lake_formation
    #   A Boolean value that indicates whether the partition location is
    #   registered with Lake Formation.
    #   @return [Boolean]
    #
    # @!attribute [rw] cell_filters
    #   A list of column row filters.
    #   @return [Array<Types::ColumnRowFilter>]
    #
    # @!attribute [rw] query_authorization_id
    #   A cryptographically generated query identifier generated by Glue or
    #   Lake Formation.
    #   @return [String]
    #
    # @!attribute [rw] is_multi_dialect_view
    #   Specifies whether the view supports the SQL dialects of one or more
    #   different query engines and can therefore be read by those engines.
    #   @return [Boolean]
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN of the parent resource extracted from the request.
    #   @return [String]
    #
    # @!attribute [rw] is_protected
    #   A flag that instructs the engine not to push user-provided
    #   operations into the logical plan of the view during query planning.
    #   However, if set this flag does not guarantee that the engine will
    #   comply. Refer to the engine's documentation to understand the
    #   guarantees provided, if any.
    #   @return [Boolean]
    #
    # @!attribute [rw] permissions
    #   The Lake Formation data permissions of the caller on the table. Used
    #   to authorize the call when no view context is found.
    #   @return [Array<String>]
    #
    # @!attribute [rw] row_filter
    #   The filter that applies to the table. For example when applying the
    #   filter in SQL, it would go in the `WHERE` clause and can be
    #   evaluated by using an `AND` operator with any other predicates
    #   applied by the user querying the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUnfilteredTableMetadataResponse AWS API Documentation
    #
    class GetUnfilteredTableMetadataResponse < Struct.new(
      :table,
      :authorized_columns,
      :is_registered_with_lake_formation,
      :cell_filters,
      :query_authorization_id,
      :is_multi_dialect_view,
      :resource_arn,
      :is_protected,
      :permissions,
      :row_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the usage profile to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUsageProfileRequest AWS API Documentation
    #
    class GetUsageProfileRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the usage profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the usage profile.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   A `ProfileConfiguration` object specifying the job and session
    #   values for the profile.
    #   @return [Types::ProfileConfiguration]
    #
    # @!attribute [rw] created_on
    #   The date and time when the usage profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The date and time when the usage profile was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUsageProfileResponse AWS API Documentation
    #
    class GetUsageProfileResponse < Struct.new(
      :name,
      :description,
      :configuration,
      :created_on,
      :last_modified_on)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the function to be retrieved is
    #   located. If none is provided, the Amazon Web Services account ID is
    #   used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the function is located.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctionRequest AWS API Documentation
    #
    class GetUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_defined_function
    #   The requested function definition.
    #   @return [Types::UserDefinedFunction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctionResponse AWS API Documentation
    #
    class GetUserDefinedFunctionResponse < Struct.new(
      :user_defined_function)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the functions to be retrieved are
    #   located. If none is provided, the Amazon Web Services account ID is
    #   used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the functions are located. If
    #   none is provided, functions from all the databases across the
    #   catalog will be returned.
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   An optional function-name pattern string that filters the function
    #   definitions returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of functions to return in one response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctionsRequest AWS API Documentation
    #
    class GetUserDefinedFunctionsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :pattern,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_defined_functions
    #   A list of requested function definitions.
    #   @return [Array<Types::UserDefinedFunction>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the list of functions returned does not
    #   include the last requested function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctionsResponse AWS API Documentation
    #
    class GetUserDefinedFunctionsResponse < Struct.new(
      :user_defined_functions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workflow to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] include_graph
    #   Specifies whether to include a graph when returning the workflow
    #   resource metadata.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRequest AWS API Documentation
    #
    class GetWorkflowRequest < Struct.new(
      :name,
      :include_graph)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow
    #   The resource metadata for the workflow.
    #   @return [Types::Workflow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowResponse AWS API Documentation
    #
    class GetWorkflowResponse < Struct.new(
      :workflow)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of the workflow which was run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The ID of the workflow run whose run properties should be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRunPropertiesRequest AWS API Documentation
    #
    class GetWorkflowRunPropertiesRequest < Struct.new(
      :name,
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] run_properties
    #   The workflow run properties which were set during the specified run.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRunPropertiesResponse AWS API Documentation
    #
    class GetWorkflowRunPropertiesResponse < Struct.new(
      :run_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of the workflow being run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The ID of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] include_graph
    #   Specifies whether to include the workflow graph in response or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRunRequest AWS API Documentation
    #
    class GetWorkflowRunRequest < Struct.new(
      :name,
      :run_id,
      :include_graph)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] run
    #   The requested workflow run metadata.
    #   @return [Types::WorkflowRun]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRunResponse AWS API Documentation
    #
    class GetWorkflowRunResponse < Struct.new(
      :run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of the workflow whose metadata of runs should be returned.
    #   @return [String]
    #
    # @!attribute [rw] include_graph
    #   Specifies whether to include the workflow graph in response or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   The maximum size of the response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of workflow runs to be included in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRunsRequest AWS API Documentation
    #
    class GetWorkflowRunsRequest < Struct.new(
      :name,
      :include_graph,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] runs
    #   A list of workflow run metadata objects.
    #   @return [Array<Types::WorkflowRun>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all requested workflow runs have been
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRunsResponse AWS API Documentation
    #
    class GetWorkflowRunsResponse < Struct.new(
      :runs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An encryption operation failed.
    #
    # @!attribute [rw] message
    #   The message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GlueEncryptionException AWS API Documentation
    #
    class GlueEncryptionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for returning a resource policy.
    #
    # @!attribute [rw] policy_in_json
    #   Contains the requested policy document, in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] policy_hash
    #   Contains the hash value associated with this policy.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The date and time at which the policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The date and time at which the policy was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GluePolicy AWS API Documentation
    #
    class GluePolicy < Struct.new(
      :policy_in_json,
      :policy_hash,
      :create_time,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a user-defined schema when a schema cannot be determined by
    # Glue.
    #
    # @!attribute [rw] columns
    #   Specifies the column definitions that make up a Glue schema.
    #   @return [Array<Types::GlueStudioSchemaColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GlueSchema AWS API Documentation
    #
    class GlueSchema < Struct.new(
      :columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a single column in a Glue schema definition.
    #
    # @!attribute [rw] name
    #   The name of the column in the Glue Studio schema.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The hive type for this column in the Glue Studio schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GlueStudioSchemaColumn AWS API Documentation
    #
    class GlueStudioSchemaColumn < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The database and table in the Glue Data Catalog that is used for input
    # or output data.
    #
    # @!attribute [rw] database_name
    #   A database name in the Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   A table name in the Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] catalog_id
    #   A unique identifier for the Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to the Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] additional_options
    #   Additional options for the table. Currently there are two keys
    #   supported:
    #
    #   * `pushDownPredicate`: to filter on partitions without having to
    #     list and read all the files in your dataset.
    #
    #   * `catalogPartitionPredicate`: to use server-side partition pruning
    #     using partition indexes in the Glue Data Catalog.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GlueTable AWS API Documentation
    #
    class GlueTable < Struct.new(
      :database_name,
      :table_name,
      :catalog_id,
      :connection_name,
      :additional_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the data store in the governed Glue Data Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data store.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The database to read from.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The database table to read from.
    #   @return [String]
    #
    # @!attribute [rw] partition_predicate
    #   Partitions satisfying this predicate are deleted. Files within the
    #   retention period in these partitions are not deleted. Set to `""` –
    #   empty by default.
    #   @return [String]
    #
    # @!attribute [rw] additional_options
    #   Specifies additional connection options.
    #   @return [Types::S3SourceAdditionalOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GovernedCatalogSource AWS API Documentation
    #
    class GovernedCatalogSource < Struct.new(
      :name,
      :database,
      :table,
      :partition_predicate,
      :additional_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a data target that writes to Amazon S3 using the Glue Data
    # Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_keys
    #   Specifies native partitioning using a sequence of keys.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to write to.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to write to.
    #   @return [String]
    #
    # @!attribute [rw] schema_change_policy
    #   A policy that specifies update behavior for the governed catalog.
    #   @return [Types::CatalogSchemaChangePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GovernedCatalogTarget AWS API Documentation
    #
    class GovernedCatalogTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :table,
      :database,
      :schema_change_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A classifier that uses `grok` patterns.
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   An identifier of the data format that the classifier matches, such
    #   as Twitter, JSON, Omniture logs, and so on.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that this classifier was registered.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The time that this classifier was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of this classifier.
    #   @return [Integer]
    #
    # @!attribute [rw] grok_pattern
    #   The grok pattern applied to a data store by this classifier. For
    #   more information, see built-in patterns in [Writing Custom
    #   Classifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html
    #   @return [String]
    #
    # @!attribute [rw] custom_patterns
    #   Optional custom grok patterns defined by this classifier. For more
    #   information, see custom patterns in [Writing Custom Classifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GrokClassifier AWS API Documentation
    #
    class GrokClassifier < Struct.new(
      :name,
      :classification,
      :creation_time,
      :last_updated,
      :version,
      :grok_pattern,
      :custom_patterns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Apache Hudi data source.
    #
    # @!attribute [rw] paths
    #   An array of Amazon S3 location strings for Hudi, each indicating the
    #   root folder with which the metadata files for a Hudi table resides.
    #   The Hudi folder may be located in a child folder of the root folder.
    #
    #   The crawler will scan all folders underneath a path for a Hudi
    #   folder.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to use to connect to the Hudi target. If
    #   your Hudi files are stored in buckets that require VPC
    #   authorization, you can set their connection properties here.
    #   @return [String]
    #
    # @!attribute [rw] exclusions
    #   A list of glob patterns used to exclude from the crawl. For more
    #   information, see [Catalog Tables with a Crawler][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] maximum_traversal_depth
    #   The maximum depth of Amazon S3 paths that the crawler can traverse
    #   to discover the Hudi metadata folder in your Amazon S3 path. Used to
    #   limit the crawler run time.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/HudiTarget AWS API Documentation
    #
    class HudiTarget < Struct.new(
      :paths,
      :connection_name,
      :exclusions,
      :maximum_traversal_depth)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an Iceberg compaction optimizer. This
    # configuration defines parameters for optimizing the layout of data
    # files in Iceberg tables.
    #
    # @!attribute [rw] strategy
    #   The strategy to use for compaction. Valid values are:
    #
    #   * `binpack`: Combines small files into larger files, typically
    #     targeting sizes over 100MB, while applying any pending deletes.
    #     This is the recommended compaction strategy for most use cases.
    #
    #   * `sort`: Organizes data based on specified columns which are sorted
    #     hierarchically during compaction, improving query performance for
    #     filtered operations. This strategy is recommended when your
    #     queries frequently filter on specific columns. To use this
    #     strategy, you must first define a sort order in your Iceberg table
    #     properties using the `sort_order` table property.
    #
    #   * `z-order`: Optimizes data organization by blending multiple
    #     attributes into a single scalar value that can be used for
    #     sorting, allowing efficient querying across multiple dimensions.
    #     This strategy is recommended when you need to query data across
    #     multiple dimensions simultaneously. To use this strategy, you must
    #     first define a sort order in your Iceberg table properties using
    #     the `sort_order` table property.
    #
    #   If an input is not provided, the default value 'binpack' will be
    #   used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergCompactionConfiguration AWS API Documentation
    #
    class IcebergCompactionConfiguration < Struct.new(
      :strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Compaction metrics for Iceberg for the optimizer run.
    #
    # @!attribute [rw] number_of_bytes_compacted
    #   The number of bytes removed by the compaction job run.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_files_compacted
    #   The number of files removed by the compaction job run.
    #   @return [Integer]
    #
    # @!attribute [rw] dpu_hours
    #   The number of DPU hours consumed by the job.
    #   @return [Float]
    #
    # @!attribute [rw] number_of_dpus
    #   The number of DPUs consumed by the job, rounded up to the nearest
    #   whole number.
    #   @return [Integer]
    #
    # @!attribute [rw] job_duration_in_hour
    #   The duration of the job in hours.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergCompactionMetrics AWS API Documentation
    #
    class IcebergCompactionMetrics < Struct.new(
      :number_of_bytes_compacted,
      :number_of_files_compacted,
      :dpu_hours,
      :number_of_dpus,
      :job_duration_in_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines an Apache Iceberg metadata table to create in
    # the catalog.
    #
    # @!attribute [rw] metadata_operation
    #   A required metadata operation. Can only be set to `CREATE`.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The table version for the Iceberg table. Defaults to 2.
    #   @return [String]
    #
    # @!attribute [rw] create_iceberg_table_input
    #   The configuration parameters required to create a new Iceberg table
    #   in the Glue Data Catalog, including table properties and metadata
    #   specifications.
    #   @return [Types::CreateIcebergTableInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergInput AWS API Documentation
    #
    class IcebergInput < Struct.new(
      :metadata_operation,
      :version,
      :create_iceberg_table_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an Iceberg orphan file deletion optimizer.
    #
    # @!attribute [rw] orphan_file_retention_period_in_days
    #   The number of days that orphan files should be retained before file
    #   deletion. If an input is not provided, the default value 3 will be
    #   used.
    #   @return [Integer]
    #
    # @!attribute [rw] location
    #   Specifies a directory in which to look for files (defaults to the
    #   table's location). You may choose a sub-directory rather than the
    #   top-level table location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergOrphanFileDeletionConfiguration AWS API Documentation
    #
    class IcebergOrphanFileDeletionConfiguration < Struct.new(
      :orphan_file_retention_period_in_days,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Orphan file deletion metrics for Iceberg for the optimizer run.
    #
    # @!attribute [rw] number_of_orphan_files_deleted
    #   The number of orphan files deleted by the orphan file deletion job
    #   run.
    #   @return [Integer]
    #
    # @!attribute [rw] dpu_hours
    #   The number of DPU hours consumed by the job.
    #   @return [Float]
    #
    # @!attribute [rw] number_of_dpus
    #   The number of DPUs consumed by the job, rounded up to the nearest
    #   whole number.
    #   @return [Integer]
    #
    # @!attribute [rw] job_duration_in_hour
    #   The duration of the job in hours.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergOrphanFileDeletionMetrics AWS API Documentation
    #
    class IcebergOrphanFileDeletionMetrics < Struct.new(
      :number_of_orphan_files_deleted,
      :dpu_hours,
      :number_of_dpus,
      :job_duration_in_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a single partition field within an Iceberg partition
    # specification, including the source field, transformation function,
    # partition name, and unique identifier.
    #
    # @!attribute [rw] source_id
    #   The identifier of the source field from the table schema that this
    #   partition field is based on.
    #   @return [Integer]
    #
    # @!attribute [rw] transform
    #   The transformation function applied to the source field to create
    #   the partition, such as identity, bucket, truncate, year, month, day,
    #   or hour.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the partition field as it will appear in the partitioned
    #   table structure.
    #   @return [String]
    #
    # @!attribute [rw] field_id
    #   The unique identifier assigned to this partition field within the
    #   Iceberg table's partition specification.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergPartitionField AWS API Documentation
    #
    class IcebergPartitionField < Struct.new(
      :source_id,
      :transform,
      :name,
      :field_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the partitioning specification for an Iceberg table,
    # determining how table data will be organized and partitioned for
    # optimal query performance.
    #
    # @!attribute [rw] fields
    #   The list of partition fields that define how the table data should
    #   be partitioned, including source fields and their transformations.
    #   @return [Array<Types::IcebergPartitionField>]
    #
    # @!attribute [rw] spec_id
    #   The unique identifier for this partition specification within the
    #   Iceberg table's metadata history.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergPartitionSpec AWS API Documentation
    #
    class IcebergPartitionSpec < Struct.new(
      :fields,
      :spec_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an Iceberg snapshot retention optimizer.
    #
    # @!attribute [rw] snapshot_retention_period_in_days
    #   The number of days to retain the Iceberg snapshots. If an input is
    #   not provided, the corresponding Iceberg table configuration field
    #   will be used or if not present, the default value 5 will be used.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_snapshots_to_retain
    #   The number of Iceberg snapshots to retain within the retention
    #   period. If an input is not provided, the corresponding Iceberg table
    #   configuration field will be used or if not present, the default
    #   value 1 will be used.
    #   @return [Integer]
    #
    # @!attribute [rw] clean_expired_files
    #   If set to false, snapshots are only deleted from table metadata, and
    #   the underlying data and metadata files are not deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergRetentionConfiguration AWS API Documentation
    #
    class IcebergRetentionConfiguration < Struct.new(
      :snapshot_retention_period_in_days,
      :number_of_snapshots_to_retain,
      :clean_expired_files)
      SENSITIVE = []
      include Aws::Structure
    end

    # Snapshot retention metrics for Iceberg for the optimizer run.
    #
    # @!attribute [rw] number_of_data_files_deleted
    #   The number of data files deleted by the retention job run.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_manifest_files_deleted
    #   The number of manifest files deleted by the retention job run.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_manifest_lists_deleted
    #   The number of manifest lists deleted by the retention job run.
    #   @return [Integer]
    #
    # @!attribute [rw] dpu_hours
    #   The number of DPU hours consumed by the job.
    #   @return [Float]
    #
    # @!attribute [rw] number_of_dpus
    #   The number of DPUs consumed by the job, rounded up to the nearest
    #   whole number.
    #   @return [Integer]
    #
    # @!attribute [rw] job_duration_in_hour
    #   The duration of the job in hours.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergRetentionMetrics AWS API Documentation
    #
    class IcebergRetentionMetrics < Struct.new(
      :number_of_data_files_deleted,
      :number_of_manifest_files_deleted,
      :number_of_manifest_lists_deleted,
      :dpu_hours,
      :number_of_dpus,
      :job_duration_in_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the schema structure for an Iceberg table, including field
    # definitions, data types, and schema metadata.
    #
    # @!attribute [rw] schema_id
    #   The unique identifier for this schema version within the Iceberg
    #   table's schema evolution history.
    #   @return [Integer]
    #
    # @!attribute [rw] identifier_field_ids
    #   The list of field identifiers that uniquely identify records in the
    #   table, used for row-level operations and deduplication.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] type
    #   The root type of the schema structure, typically "struct" for
    #   Iceberg table schemas.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The list of field definitions that make up the table schema,
    #   including field names, types, and metadata.
    #   @return [Array<Types::IcebergStructField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergSchema AWS API Documentation
    #
    class IcebergSchema < Struct.new(
      :schema_id,
      :identifier_field_ids,
      :type,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a single field within an Iceberg sort order specification,
    # including the source field, transformation, sort direction, and null
    # value ordering.
    #
    # @!attribute [rw] source_id
    #   The identifier of the source field from the table schema that this
    #   sort field is based on.
    #   @return [Integer]
    #
    # @!attribute [rw] transform
    #   The transformation function applied to the source field before
    #   sorting, such as identity, bucket, or truncate.
    #   @return [String]
    #
    # @!attribute [rw] direction
    #   The sort direction for this field, either ascending or descending.
    #   @return [String]
    #
    # @!attribute [rw] null_order
    #   The ordering behavior for null values in this field, specifying
    #   whether nulls should appear first or last in the sort order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergSortField AWS API Documentation
    #
    class IcebergSortField < Struct.new(
      :source_id,
      :transform,
      :direction,
      :null_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the sort order specification for an Iceberg table, determining
    # how data should be ordered within partitions to optimize query
    # performance.
    #
    # @!attribute [rw] order_id
    #   The unique identifier for this sort order specification within the
    #   Iceberg table's metadata.
    #   @return [Integer]
    #
    # @!attribute [rw] fields
    #   The list of fields and their sort directions that define the
    #   ordering criteria for the Iceberg table data.
    #   @return [Array<Types::IcebergSortField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergSortOrder AWS API Documentation
    #
    class IcebergSortOrder < Struct.new(
      :order_id,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a single field within an Iceberg table schema, including its
    # identifier, name, data type, nullability, and documentation.
    #
    # @!attribute [rw] id
    #   The unique identifier assigned to this field within the Iceberg
    #   table schema, used for schema evolution and field tracking.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the field as it appears in the table schema and query
    #   operations.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type definition for this field, specifying the structure
    #   and format of the data it contains.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] required
    #   Indicates whether this field is required (non-nullable) or optional
    #   (nullable) in the table schema.
    #   @return [Boolean]
    #
    # @!attribute [rw] doc
    #   Optional documentation or description text that provides additional
    #   context about the purpose and usage of this field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergStructField AWS API Documentation
    #
    class IcebergStructField < Struct.new(
      :id,
      :name,
      :type,
      :required,
      :doc)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a complete set of updates to be applied to an Iceberg table,
    # including schema changes, partitioning modifications, sort order
    # adjustments, location updates, and property changes.
    #
    # @!attribute [rw] schema
    #   The updated schema definition for the Iceberg table, specifying any
    #   changes to field structure, data types, or schema metadata.
    #   @return [Types::IcebergSchema]
    #
    # @!attribute [rw] partition_spec
    #   The updated partitioning specification that defines how the table
    #   data should be reorganized and partitioned.
    #   @return [Types::IcebergPartitionSpec]
    #
    # @!attribute [rw] sort_order
    #   The updated sort order specification that defines how data should be
    #   ordered within partitions for optimal query performance.
    #   @return [Types::IcebergSortOrder]
    #
    # @!attribute [rw] location
    #   The updated S3 location where the Iceberg table data will be stored.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   Updated key-value pairs of table properties and configuration
    #   settings for the Iceberg table.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergTableUpdate AWS API Documentation
    #
    class IcebergTableUpdate < Struct.new(
      :schema,
      :partition_spec,
      :sort_order,
      :location,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Apache Iceberg data source where Iceberg tables are
    # stored in Amazon S3.
    #
    # @!attribute [rw] paths
    #   One or more Amazon S3 paths that contains Iceberg metadata folders
    #   as `s3://bucket/prefix`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to use to connect to the Iceberg target.
    #   @return [String]
    #
    # @!attribute [rw] exclusions
    #   A list of glob patterns used to exclude from the crawl. For more
    #   information, see [Catalog Tables with a Crawler][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] maximum_traversal_depth
    #   The maximum depth of Amazon S3 paths that the crawler can traverse
    #   to discover the Iceberg metadata folder in your Amazon S3 path. Used
    #   to limit the crawler run time.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IcebergTarget AWS API Documentation
    #
    class IcebergTarget < Struct.new(
      :paths,
      :connection_name,
      :exclusions,
      :maximum_traversal_depth)
      SENSITIVE = []
      include Aws::Structure
    end

    # The same unique identifier was associated with two different records.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IdempotentParameterMismatchException AWS API Documentation
    #
    class IdempotentParameterMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The blueprint is in an invalid state to perform a requested operation.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IllegalBlueprintStateException AWS API Documentation
    #
    class IllegalBlueprintStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The session is in an invalid state to perform a requested operation.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IllegalSessionStateException AWS API Documentation
    #
    class IllegalSessionStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The workflow is in an invalid state to perform a requested operation.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IllegalWorkflowStateException AWS API Documentation
    #
    class IllegalWorkflowStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the catalog to import. Currently, this should be the
    #   Amazon Web Services account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ImportCatalogToGlueRequest AWS API Documentation
    #
    class ImportCatalogToGlueRequest < Struct.new(
      :catalog_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ImportCatalogToGlueResponse AWS API Documentation
    #
    class ImportCatalogToGlueResponse < Aws::EmptyStructure; end

    # Specifies configuration properties for an importing labels task run.
    #
    # @!attribute [rw] input_s3_path
    #   The Amazon Simple Storage Service (Amazon S3) path from where you
    #   will import the labels.
    #   @return [String]
    #
    # @!attribute [rw] replace
    #   Indicates whether to overwrite your existing labels.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ImportLabelsTaskRunProperties AWS API Documentation
    #
    class ImportLabelsTaskRunProperties < Struct.new(
      :input_s3_path,
      :replace)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for an integration that writes data into a resource.
    #
    # @!attribute [rw] source_arn
    #   The ARN of the source resource for the integration.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN of the target resource for the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The ARN of the zero-ETL integration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The possible statuses are:
    #
    #   * CREATING: The integration is being created.
    #
    #   * ACTIVE: The integration creation succeeds.
    #
    #   * MODIFYING: The integration is being modified.
    #
    #   * FAILED: The integration creation fails.
    #
    #   * DELETING: The integration is deleted.
    #
    #   * SYNCING: The integration is synchronizing.
    #
    #   * NEEDS\_ATTENTION: The integration needs attention, such as
    #     synchronization.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time that the integration was created, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] integration_config
    #   Properties associated with the integration.
    #   @return [Types::IntegrationConfig]
    #
    # @!attribute [rw] errors
    #   A list of errors associated with the integration.
    #   @return [Array<Types::IntegrationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/InboundIntegration AWS API Documentation
    #
    class InboundIntegration < Struct.new(
      :source_arn,
      :target_arn,
      :integration_arn,
      :status,
      :create_time,
      :integration_config,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a zero-ETL integration.
    #
    # @!attribute [rw] source_arn
    #   The ARN for the source of the integration.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN for the target of the integration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_name
    #   A unique name for the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) for the integration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN of a KMS key used for encrypting the channel.
    #   @return [String]
    #
    # @!attribute [rw] additional_encryption_context
    #   An optional set of non-secret key–value pairs that contains
    #   additional contextual information for encryption. This can only be
    #   provided if `KMSKeyId` is provided.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Metadata assigned to the resource consisting of a list of key-value
    #   pairs.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] status
    #   The possible statuses are:
    #
    #   * CREATING: The integration is being created.
    #
    #   * ACTIVE: The integration creation succeeds.
    #
    #   * MODIFYING: The integration is being modified.
    #
    #   * FAILED: The integration creation fails.
    #
    #   * DELETING: The integration is deleted.
    #
    #   * SYNCING: The integration is synchronizing.
    #
    #   * NEEDS\_ATTENTION: The integration needs attention, such as
    #     synchronization.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time that the integration was created, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] integration_config
    #   Properties associated with the integration.
    #   @return [Types::IntegrationConfig]
    #
    # @!attribute [rw] errors
    #   A list of errors associated with the integration.
    #   @return [Array<Types::IntegrationError>]
    #
    # @!attribute [rw] data_filter
    #   Selects source tables for the integration using Maxwell filter
    #   syntax.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Integration AWS API Documentation
    #
    class Integration < Struct.new(
      :source_arn,
      :target_arn,
      :description,
      :integration_name,
      :integration_arn,
      :kms_key_id,
      :additional_encryption_context,
      :tags,
      :status,
      :create_time,
      :integration_config,
      :errors,
      :data_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties associated with the integration.
    #
    # @!attribute [rw] refresh_interval
    #   Specifies the frequency at which CDC (Change Data Capture) pulls or
    #   incremental loads should occur. This parameter provides flexibility
    #   to align the refresh rate with your specific data update patterns,
    #   system load considerations, and performance optimization goals. Time
    #   increment can be set from 15 minutes to 8640 minutes (six days).
    #   Currently supports creation of `RefreshInterval` only.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IntegrationConfig AWS API Documentation
    #
    class IntegrationConfig < Struct.new(
      :refresh_interval)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation conflicts with another operation.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IntegrationConflictOperationFault AWS API Documentation
    #
    class IntegrationConflictOperationFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error associated with a zero-ETL integration.
    #
    # @!attribute [rw] error_code
    #   The code associated with this error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IntegrationError AWS API Documentation
    #
    class IntegrationError < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that can be used when invoking a `DescribeIntegrations`
    # request.
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of filter values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IntegrationFilter AWS API Documentation
    #
    class IntegrationFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified integration could not be found.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IntegrationNotFoundFault AWS API Documentation
    #
    class IntegrationNotFoundFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes how data is partitioned on the target.
    #
    # @!attribute [rw] field_name
    #   The field name used to partition data on the target. Avoid using
    #   columns that have unique values for each row (for example,
    #   `LastModifiedTimestamp`, `SystemModTimeStamp`) as the partition
    #   column. These columns are not suitable for partitioning because they
    #   create a large number of small partitions, which can lead to
    #   performance issues.
    #   @return [String]
    #
    # @!attribute [rw] function_spec
    #   Specifies the function used to partition data on the target. The
    #   only accepted value for this parameter is `'identity'` (string).
    #   The `'identity'` function ensures that the data partitioning on
    #   the target follows the same scheme as the source. In other words,
    #   the partitioning structure of the source data is preserved in the
    #   target destination.
    #   @return [String]
    #
    # @!attribute [rw] conversion_spec
    #   Specifies the timestamp format of the source data. Valid values are:
    #
    #   * `epoch_sec` - Unix epoch timestamp in seconds
    #
    #   * `epoch_milli` - Unix epoch timestamp in milliseconds
    #
    #   * `iso` - ISO 8601 formatted timestamp
    #
    #   <note markdown="1"> Only specify `ConversionSpec` when using timestamp-based partition
    #   functions (year, month, day, or hour). Glue Zero-ETL uses this
    #   parameter to correctly transform source data into timestamp format
    #   before partitioning.
    #
    #    Do not use high-cardinality columns with the `identity` partition
    #   function. High-cardinality columns include:
    #
    #    * Primary keys
    #
    #   * Timestamp fields (such as `LastModifiedTimestamp`, `CreatedDate`)
    #
    #   * System-generated timestamps
    #
    #    Using high-cardinality columns with identity partitioning creates
    #   many small partitions, which can significantly degrade ingestion
    #   performance.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IntegrationPartition AWS API Documentation
    #
    class IntegrationPartition < Struct.new(
      :field_name,
      :function_spec,
      :conversion_spec)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data processed through your integration exceeded your quota.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IntegrationQuotaExceededFault AWS API Documentation
    #
    class IntegrationQuotaExceededFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal service error occurred.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input provided was not valid.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] from_federation_source
    #   Indicates whether or not the exception relates to a federated
    #   source.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message,
      :from_federation_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The integration is in an invalid state.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/InvalidIntegrationStateFault AWS API Documentation
    #
    class InvalidIntegrationStateFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error that indicates your data is in an invalid state.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/InvalidStateException AWS API Documentation
    #
    class InvalidStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional connection options for the connector.
    #
    # @!attribute [rw] filter_predicate
    #   Extra condition clause to filter data from source. For example:
    #
    #   `BillingCity='Mountain View'`
    #
    #   When using a query instead of a table name, you should validate that
    #   the query works with the specified `filterPredicate`.
    #   @return [String]
    #
    # @!attribute [rw] partition_column
    #   The name of an integer column that is used for partitioning. This
    #   option works only when it's included with `lowerBound`,
    #   `upperBound`, and `numPartitions`. This option works the same way as
    #   in the Spark SQL JDBC reader.
    #   @return [String]
    #
    # @!attribute [rw] lower_bound
    #   The minimum value of `partitionColumn` that is used to decide
    #   partition stride.
    #   @return [Integer]
    #
    # @!attribute [rw] upper_bound
    #   The maximum value of `partitionColumn` that is used to decide
    #   partition stride.
    #   @return [Integer]
    #
    # @!attribute [rw] num_partitions
    #   The number of partitions. This value, along with `lowerBound`
    #   (inclusive) and `upperBound` (exclusive), form partition strides for
    #   generated `WHERE` clause expressions that are used to split the
    #   `partitionColumn`.
    #   @return [Integer]
    #
    # @!attribute [rw] job_bookmark_keys
    #   The name of the job bookmark keys on which to sort.
    #   @return [Array<String>]
    #
    # @!attribute [rw] job_bookmark_keys_sort_order
    #   Specifies an ascending or descending sort order.
    #   @return [String]
    #
    # @!attribute [rw] data_type_mapping
    #   Custom data type mapping that builds a mapping from a JDBC data type
    #   to an Glue data type. For example, the option
    #   `"dataTypeMapping":{"FLOAT":"STRING"}` maps data fields of JDBC type
    #   `FLOAT` into the Java `String` type by calling the
    #   `ResultSet.getString()` method of the driver, and uses it to build
    #   the Glue record. The `ResultSet` object is implemented by each
    #   driver, so the behavior is specific to the driver you use. Refer to
    #   the documentation for your JDBC driver to understand how the driver
    #   performs the conversions.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JDBCConnectorOptions AWS API Documentation
    #
    class JDBCConnectorOptions < Struct.new(
      :filter_predicate,
      :partition_column,
      :lower_bound,
      :upper_bound,
      :num_partitions,
      :job_bookmark_keys,
      :job_bookmark_keys_sort_order,
      :data_type_mapping)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a connector to a JDBC data source.
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection that is associated with the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_name
    #   The name of a connector that assists with accessing the data store
    #   in Glue Studio.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection, such as marketplace.jdbc or custom.jdbc,
    #   designating a connection to a JDBC data store.
    #   @return [String]
    #
    # @!attribute [rw] additional_options
    #   Additional connection options for the connector.
    #   @return [Types::JDBCConnectorOptions]
    #
    # @!attribute [rw] connection_table
    #   The name of the table in the data source.
    #   @return [String]
    #
    # @!attribute [rw] query
    #   The table or SQL query to get the data from. You can specify either
    #   `ConnectionTable` or `query`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the custom JDBC source.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JDBCConnectorSource AWS API Documentation
    #
    class JDBCConnectorSource < Struct.new(
      :name,
      :connection_name,
      :connector_name,
      :connection_type,
      :additional_options,
      :connection_table,
      :query,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a data target that writes to Amazon S3 in Apache Parquet
    # columnar storage.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection that is associated with the connector.
    #   @return [String]
    #
    # @!attribute [rw] connection_table
    #   The name of the table in the data target.
    #   @return [String]
    #
    # @!attribute [rw] connector_name
    #   The name of a connector that will be used.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection, such as marketplace.jdbc or custom.jdbc,
    #   designating a connection to a JDBC data target.
    #   @return [String]
    #
    # @!attribute [rw] additional_options
    #   Additional connection options for the connector.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the JDBC target.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JDBCConnectorTarget AWS API Documentation
    #
    class JDBCConnectorTarget < Struct.new(
      :name,
      :inputs,
      :connection_name,
      :connection_table,
      :connector_name,
      :connection_type,
      :additional_options,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a JDBC data store to crawl.
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to use to connect to the JDBC target.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path of the JDBC target.
    #   @return [String]
    #
    # @!attribute [rw] exclusions
    #   A list of glob patterns used to exclude from the crawl. For more
    #   information, see [Catalog Tables with a Crawler][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] enable_additional_metadata
    #   Specify a value of `RAWTYPES` or `COMMENTS` to enable additional
    #   metadata in table responses. `RAWTYPES` provides the native-level
    #   datatype. `COMMENTS` provides comments associated with a column or
    #   table in the database.
    #
    #   If you do not need additional metadata, keep the field empty.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JdbcTarget AWS API Documentation
    #
    class JdbcTarget < Struct.new(
      :connection_name,
      :path,
      :exclusions,
      :enable_additional_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a job definition.
    #
    # @!attribute [rw] name
    #   The name you assign to this job definition.
    #   @return [String]
    #
    # @!attribute [rw] job_mode
    #   A mode that describes how a job was created. Valid values are:
    #
    #   * `SCRIPT` - The job was created using the Glue Studio script
    #     editor.
    #
    #   * `VISUAL` - The job was created using the Glue Studio visual
    #     editor.
    #
    #   * `NOTEBOOK` - The job was created using an interactive sessions
    #     notebook.
    #
    #   When the `JobMode` field is missing or null, `SCRIPT` is assigned as
    #   the default value.
    #   @return [String]
    #
    # @!attribute [rw] job_run_queuing_enabled
    #   Specifies whether job run queuing is enabled for the job runs for
    #   this job.
    #
    #   A value of true means job run queuing is enabled for the job runs.
    #   If false or not populated, the job runs will not be considered for
    #   queueing.
    #
    #   If this field does not match the value set in the job run, then the
    #   value from the job run field will be used.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A description of the job.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   This field is reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role associated
    #   with this job.
    #   @return [String]
    #
    # @!attribute [rw] created_on
    #   The time and date that this job definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The last point in time when this job definition was modified.
    #   @return [Time]
    #
    # @!attribute [rw] execution_property
    #   An `ExecutionProperty` specifying the maximum number of concurrent
    #   runs allowed for this job.
    #   @return [Types::ExecutionProperty]
    #
    # @!attribute [rw] command
    #   The `JobCommand` that runs this job.
    #   @return [Types::JobCommand]
    #
    # @!attribute [rw] default_arguments
    #   The default arguments for every run of this job, specified as
    #   name-value pairs.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that Glue itself consumes.
    #
    #   Job arguments may be logged. Do not pass plaintext secrets as
    #   arguments. Retrieve secrets from a Glue Connection, Secrets Manager
    #   or other secret management mechanism if you intend to keep them
    #   within the Job.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the arguments you can provide to this field
    #   when configuring Spark jobs, see the [Special Parameters Used by
    #   Glue][2] topic in the developer guide.
    #
    #   For information about the arguments you can provide to this field
    #   when configuring Ray jobs, see [Using job parameters in Ray jobs][3]
    #   in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #   [3]: https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] non_overridable_arguments
    #   Arguments for this job that are not overridden when providing job
    #   arguments in a job run, specified as name-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connections
    #   The connections used for this job.
    #   @return [Types::ConnectionsList]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry this job after a JobRun fails.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_capacity
    #   This field is deprecated. Use `MaxCapacity` instead.
    #
    #   The number of Glue data processing units (DPUs) allocated to runs of
    #   this job. You can allocate a minimum of 2 DPUs; the default is 10. A
    #   DPU is a relative measure of processing power that consists of 4
    #   vCPUs of compute capacity and 16 GB of memory. For more information,
    #   see the [Glue pricing page][1].
    #
    #
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The job timeout in minutes. This is the maximum time that a job run
    #   can consume resources before it is terminated and enters `TIMEOUT`
    #   status.
    #
    #   Jobs must have timeout values less than 7 days or 10080 minutes.
    #   Otherwise, the jobs will throw an exception.
    #
    #   When the value is left blank, the timeout is defaulted to 2880
    #   minutes.
    #
    #   Any existing Glue jobs that had a timeout value greater than 7 days
    #   will be defaulted to 7 days. For instance if you have specified a
    #   timeout of 20 days for a batch job, it will be stopped on the 7th
    #   day.
    #
    #   For streaming jobs, if you have set up a maintenance window, it will
    #   be restarted during the maintenance window after 7 days.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   For Glue version 1.0 or earlier jobs, using the standard worker
    #   type, the number of Glue data processing units (DPUs) that can be
    #   allocated when this job runs. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [ Glue pricing page][1].
    #
    #   For Glue version 2.0 or later jobs, you cannot specify a `Maximum
    #   capacity`. Instead, you should specify a `Worker type` and the
    #   `Number of workers`.
    #
    #   Do not set `MaxCapacity` if using `WorkerType` and
    #   `NumberOfWorkers`.
    #
    #   The value that can be allocated for `MaxCapacity` depends on whether
    #   you are running a Python shell job, an Apache Spark ETL job, or an
    #   Apache Spark streaming ETL job:
    #
    #   * When you specify a Python shell job
    #     (`JobCommand.Name`="pythonshell"), you can allocate either
    #     0.0625 or 1 DPU. The default is 0.0625 DPU.
    #
    #   * When you specify an Apache Spark ETL job
    #     (`JobCommand.Name`="glueetl") or Apache Spark streaming ETL job
    #     (`JobCommand.Name`="gluestreaming"), you can allocate from 2 to
    #     100 DPUs. The default is 10 DPUs. This job type cannot have a
    #     fractional DPU allocation.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of G.1X, G.2X, G.4X, G.8X or G.025X for Spark jobs.
    #   Accepts the value Z.2X for Ray jobs.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPUs, 16
    #     GB of memory) with 94GB disk, and provides 1 executor per worker.
    #     We recommend this worker type for workloads such as data
    #     transforms, joins, and queries, to offers a scalable and cost
    #     effective way to run most jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPUs, 32
    #     GB of memory) with 138GB disk, and provides 1 executor per worker.
    #     We recommend this worker type for workloads such as data
    #     transforms, joins, and queries, to offers a scalable and cost
    #     effective way to run most jobs.
    #
    #   * For the `G.4X` worker type, each worker maps to 4 DPU (16 vCPUs,
    #     64 GB of memory) with 256GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for jobs whose workloads
    #     contain your most demanding transforms, aggregations, joins, and
    #     queries. This worker type is available only for Glue version 3.0
    #     or later Spark ETL jobs in the following Amazon Web Services
    #     Regions: US East (Ohio), US East (N. Virginia), US West (Oregon),
    #     Asia Pacific (Singapore), Asia Pacific (Sydney), Asia Pacific
    #     (Tokyo), Canada (Central), Europe (Frankfurt), Europe (Ireland),
    #     and Europe (Stockholm).
    #
    #   * For the `G.8X` worker type, each worker maps to 8 DPU (32 vCPUs,
    #     128 GB of memory) with 512GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for jobs whose workloads
    #     contain your most demanding transforms, aggregations, joins, and
    #     queries. This worker type is available only for Glue version 3.0
    #     or later Spark ETL jobs, in the same Amazon Web Services Regions
    #     as supported for the `G.4X` worker type.
    #
    #   * For the `G.025X` worker type, each worker maps to 0.25 DPU (2
    #     vCPUs, 4 GB of memory) with 84GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for low volume streaming
    #     jobs. This worker type is only available for Glue version 3.0 or
    #     later streaming jobs.
    #
    #   * For the `Z.2X` worker type, each worker maps to 2 M-DPU (8vCPUs,
    #     64 GB of memory) with 128 GB disk, and provides up to 8 Ray
    #     workers based on the autoscaler.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a job runs.
    #   @return [Integer]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this job.
    #   @return [String]
    #
    # @!attribute [rw] notification_property
    #   Specifies configuration properties of a job notification.
    #   @return [Types::NotificationProperty]
    #
    # @!attribute [rw] glue_version
    #   In Spark jobs, `GlueVersion` determines the versions of Apache Spark
    #   and Python that Glue available in a job. The Python version
    #   indicates the version supported for jobs of type Spark.
    #
    #   Ray jobs should set `GlueVersion` to `4.0` or greater. However, the
    #   versions of Ray, Python and additional libraries available in your
    #   Ray job are determined by the `Runtime` parameter of the Job
    #   command.
    #
    #   For more information about the available Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in
    #   the developer guide.
    #
    #   Jobs that are created without specifying a Glue version default to
    #   Glue 0.9.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #   @return [String]
    #
    # @!attribute [rw] code_gen_configuration_nodes
    #   The representation of a directed acyclic graph on which both the
    #   Glue Studio visual component and Glue Studio code generation is
    #   based.
    #   @return [Hash<String,Types::CodeGenConfigurationNode>]
    #
    # @!attribute [rw] execution_class
    #   Indicates whether the job is run with a standard or flexible
    #   execution class. The standard execution class is ideal for
    #   time-sensitive workloads that require fast job startup and dedicated
    #   resources.
    #
    #   The flexible execution class is appropriate for time-insensitive
    #   jobs whose start and completion times may vary.
    #
    #   Only jobs with Glue version 3.0 and above and command type `glueetl`
    #   will be allowed to set `ExecutionClass` to `FLEX`. The flexible
    #   execution class is available for Spark jobs.
    #   @return [String]
    #
    # @!attribute [rw] source_control_details
    #   The details for a source control configuration for a job, allowing
    #   synchronization of job artifacts to or from a remote repository.
    #   @return [Types::SourceControlDetails]
    #
    # @!attribute [rw] maintenance_window
    #   This field specifies a day of the week and hour for a maintenance
    #   window for streaming jobs. Glue periodically performs maintenance
    #   activities. During these maintenance windows, Glue will need to
    #   restart your streaming jobs.
    #
    #   Glue will restart the job within 3 hours of the specified
    #   maintenance window. For instance, if you set up the maintenance
    #   window for Monday at 10:00AM GMT, your jobs will be restarted
    #   between 10:00AM GMT to 1:00PM GMT.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The name of an Glue usage profile associated with the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Job AWS API Documentation
    #
    class Job < Struct.new(
      :name,
      :job_mode,
      :job_run_queuing_enabled,
      :description,
      :log_uri,
      :role,
      :created_on,
      :last_modified_on,
      :execution_property,
      :command,
      :default_arguments,
      :non_overridable_arguments,
      :connections,
      :max_retries,
      :allocated_capacity,
      :timeout,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :security_configuration,
      :notification_property,
      :glue_version,
      :code_gen_configuration_nodes,
      :execution_class,
      :source_control_details,
      :maintenance_window,
      :profile_name)
      SENSITIVE = [:code_gen_configuration_nodes]
      include Aws::Structure
    end

    # Defines a point that a job can resume processing.
    #
    # @!attribute [rw] job_name
    #   The name of the job in question.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the job.
    #   @return [Integer]
    #
    # @!attribute [rw] run
    #   The run ID number.
    #   @return [Integer]
    #
    # @!attribute [rw] attempt
    #   The attempt ID number.
    #   @return [Integer]
    #
    # @!attribute [rw] previous_run_id
    #   The unique run identifier associated with the previous job run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The run ID number.
    #   @return [String]
    #
    # @!attribute [rw] job_bookmark
    #   The bookmark itself.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobBookmarkEntry AWS API Documentation
    #
    class JobBookmarkEntry < Struct.new(
      :job_name,
      :version,
      :run,
      :attempt,
      :previous_run_id,
      :run_id,
      :job_bookmark)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how job bookmark data should be encrypted.
    #
    # @!attribute [rw] job_bookmarks_encryption_mode
    #   The encryption mode to use for job bookmarks data.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to be used to encrypt
    #   the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobBookmarksEncryption AWS API Documentation
    #
    class JobBookmarksEncryption < Struct.new(
      :job_bookmarks_encryption_mode,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies code that runs when a job is run.
    #
    # @!attribute [rw] name
    #   The name of the job command. For an Apache Spark ETL job, this must
    #   be `glueetl`. For a Python shell job, it must be `pythonshell`. For
    #   an Apache Spark streaming ETL job, this must be `gluestreaming`. For
    #   a Ray job, this must be `glueray`.
    #   @return [String]
    #
    # @!attribute [rw] script_location
    #   Specifies the Amazon Simple Storage Service (Amazon S3) path to a
    #   script that runs a job.
    #   @return [String]
    #
    # @!attribute [rw] python_version
    #   The Python version being used to run a Python shell job. Allowed
    #   values are 2 or 3.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   In Ray jobs, Runtime is used to specify the versions of Ray, Python
    #   and additional libraries available in your environment. This field
    #   is not used in other job types. For supported runtime environment
    #   values, see [Supported Ray runtime environments][1] in the Glue
    #   Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/ray-jobs-section.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobCommand AWS API Documentation
    #
    class JobCommand < Struct.new(
      :name,
      :script_location,
      :python_version,
      :runtime)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a Job node present in the workflow.
    #
    # @!attribute [rw] job_runs
    #   The information for the job runs represented by the job node.
    #   @return [Array<Types::JobRun>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobNodeDetails AWS API Documentation
    #
    class JobNodeDetails < Struct.new(
      :job_runs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a job run.
    #
    # @!attribute [rw] id
    #   The ID of this job run.
    #   @return [String]
    #
    # @!attribute [rw] attempt
    #   The number of the attempt to run this job.
    #   @return [Integer]
    #
    # @!attribute [rw] previous_run_id
    #   The ID of the previous run of this job. For example, the `JobRunId`
    #   specified in the `StartJobRun` action.
    #   @return [String]
    #
    # @!attribute [rw] trigger_name
    #   The name of the trigger that started this job run.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the job definition being used in this run.
    #   @return [String]
    #
    # @!attribute [rw] job_mode
    #   A mode that describes how a job was created. Valid values are:
    #
    #   * `SCRIPT` - The job was created using the Glue Studio script
    #     editor.
    #
    #   * `VISUAL` - The job was created using the Glue Studio visual
    #     editor.
    #
    #   * `NOTEBOOK` - The job was created using an interactive sessions
    #     notebook.
    #
    #   When the `JobMode` field is missing or null, `SCRIPT` is assigned as
    #   the default value.
    #   @return [String]
    #
    # @!attribute [rw] job_run_queuing_enabled
    #   Specifies whether job run queuing is enabled for the job run.
    #
    #   A value of true means job run queuing is enabled for the job run. If
    #   false or not populated, the job run will not be considered for
    #   queueing.
    #   @return [Boolean]
    #
    # @!attribute [rw] started_on
    #   The date and time at which this job run was started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The last time that this job run was modified.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The date and time that this job run completed.
    #   @return [Time]
    #
    # @!attribute [rw] job_run_state
    #   The current state of the job run. For more information about the
    #   statuses of jobs that have terminated abnormally, see [Glue Job Run
    #   Statuses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/job-run-statuses.html
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   The job arguments associated with this run. For this job run, they
    #   replace the default arguments set in the job definition itself.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that Glue itself consumes.
    #
    #   Job arguments may be logged. Do not pass plaintext secrets as
    #   arguments. Retrieve secrets from a Glue Connection, Secrets Manager
    #   or other secret management mechanism if you intend to keep them
    #   within the Job.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the arguments you can provide to this field
    #   when configuring Spark jobs, see the [Special Parameters Used by
    #   Glue][2] topic in the developer guide.
    #
    #   For information about the arguments you can provide to this field
    #   when configuring Ray jobs, see [Using job parameters in Ray jobs][3]
    #   in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #   [3]: https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] error_message
    #   An error message associated with this job run.
    #   @return [String]
    #
    # @!attribute [rw] predecessor_runs
    #   A list of predecessors to this job run.
    #   @return [Array<Types::Predecessor>]
    #
    # @!attribute [rw] allocated_capacity
    #   This field is deprecated. Use `MaxCapacity` instead.
    #
    #   The number of Glue data processing units (DPUs) allocated to this
    #   JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A
    #   DPU is a relative measure of processing power that consists of 4
    #   vCPUs of compute capacity and 16 GB of memory. For more information,
    #   see the [Glue pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Integer]
    #
    # @!attribute [rw] execution_time
    #   The amount of time (in seconds) that the job run consumed resources.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The `JobRun` timeout in minutes. This is the maximum time that a job
    #   run can consume resources before it is terminated and enters
    #   `TIMEOUT` status. This value overrides the timeout value set in the
    #   parent job.
    #
    #   Jobs must have timeout values less than 7 days or 10080 minutes.
    #   Otherwise, the jobs will throw an exception.
    #
    #   When the value is left blank, the timeout is defaulted to 2880
    #   minutes.
    #
    #   Any existing Glue jobs that had a timeout value greater than 7 days
    #   will be defaulted to 7 days. For instance if you have specified a
    #   timeout of 20 days for a batch job, it will be stopped on the 7th
    #   day.
    #
    #   For streaming jobs, if you have set up a maintenance window, it will
    #   be restarted during the maintenance window after 7 days.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   For Glue version 1.0 or earlier jobs, using the standard worker
    #   type, the number of Glue data processing units (DPUs) that can be
    #   allocated when this job runs. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [ Glue pricing page][1].
    #
    #   For Glue version 2.0+ jobs, you cannot specify a `Maximum capacity`.
    #   Instead, you should specify a `Worker type` and the `Number of
    #   workers`.
    #
    #   Do not set `MaxCapacity` if using `WorkerType` and
    #   `NumberOfWorkers`.
    #
    #   The value that can be allocated for `MaxCapacity` depends on whether
    #   you are running a Python shell job, an Apache Spark ETL job, or an
    #   Apache Spark streaming ETL job:
    #
    #   * When you specify a Python shell job
    #     (`JobCommand.Name`="pythonshell"), you can allocate either
    #     0.0625 or 1 DPU. The default is 0.0625 DPU.
    #
    #   * When you specify an Apache Spark ETL job
    #     (`JobCommand.Name`="glueetl") or Apache Spark streaming ETL job
    #     (`JobCommand.Name`="gluestreaming"), you can allocate from 2 to
    #     100 DPUs. The default is 10 DPUs. This job type cannot have a
    #     fractional DPU allocation.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of G.1X, G.2X, G.4X, G.8X or G.025X for Spark jobs.
    #   Accepts the value Z.2X for Ray jobs.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPUs, 16
    #     GB of memory) with 94GB disk, and provides 1 executor per worker.
    #     We recommend this worker type for workloads such as data
    #     transforms, joins, and queries, to offers a scalable and cost
    #     effective way to run most jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPUs, 32
    #     GB of memory) with 138GB disk, and provides 1 executor per worker.
    #     We recommend this worker type for workloads such as data
    #     transforms, joins, and queries, to offers a scalable and cost
    #     effective way to run most jobs.
    #
    #   * For the `G.4X` worker type, each worker maps to 4 DPU (16 vCPUs,
    #     64 GB of memory) with 256GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for jobs whose workloads
    #     contain your most demanding transforms, aggregations, joins, and
    #     queries. This worker type is available only for Glue version 3.0
    #     or later Spark ETL jobs in the following Amazon Web Services
    #     Regions: US East (Ohio), US East (N. Virginia), US West (Oregon),
    #     Asia Pacific (Singapore), Asia Pacific (Sydney), Asia Pacific
    #     (Tokyo), Canada (Central), Europe (Frankfurt), Europe (Ireland),
    #     and Europe (Stockholm).
    #
    #   * For the `G.8X` worker type, each worker maps to 8 DPU (32 vCPUs,
    #     128 GB of memory) with 512GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for jobs whose workloads
    #     contain your most demanding transforms, aggregations, joins, and
    #     queries. This worker type is available only for Glue version 3.0
    #     or later Spark ETL jobs, in the same Amazon Web Services Regions
    #     as supported for the `G.4X` worker type.
    #
    #   * For the `G.025X` worker type, each worker maps to 0.25 DPU (2
    #     vCPUs, 4 GB of memory) with 84GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for low volume streaming
    #     jobs. This worker type is only available for Glue version 3.0 or
    #     later streaming jobs.
    #
    #   * For the `Z.2X` worker type, each worker maps to 2 M-DPU (8vCPUs,
    #     64 GB of memory) with 128 GB disk, and provides up to 8 Ray
    #     workers based on the autoscaler.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a job runs.
    #   @return [Integer]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this job run.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group for secure logging that can be server-side
    #   encrypted in Amazon CloudWatch using KMS. This name can be
    #   `/aws-glue/jobs/`, in which case the default encryption is `NONE`.
    #   If you add a role name and `SecurityConfiguration` name (in other
    #   words,
    #   `/aws-glue/jobs-yourRoleName-yourSecurityConfigurationName/`), then
    #   that security configuration is used to encrypt the log group.
    #   @return [String]
    #
    # @!attribute [rw] notification_property
    #   Specifies configuration properties of a job run notification.
    #   @return [Types::NotificationProperty]
    #
    # @!attribute [rw] glue_version
    #   In Spark jobs, `GlueVersion` determines the versions of Apache Spark
    #   and Python that Glue available in a job. The Python version
    #   indicates the version supported for jobs of type Spark.
    #
    #   Ray jobs should set `GlueVersion` to `4.0` or greater. However, the
    #   versions of Ray, Python and additional libraries available in your
    #   Ray job are determined by the `Runtime` parameter of the Job
    #   command.
    #
    #   For more information about the available Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in
    #   the developer guide.
    #
    #   Jobs that are created without specifying a Glue version default to
    #   Glue 0.9.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #   @return [String]
    #
    # @!attribute [rw] dpu_seconds
    #   This field can be set for either job runs with execution class
    #   `FLEX` or when Auto Scaling is enabled, and represents the total
    #   time each executor ran during the lifecycle of a job run in seconds,
    #   multiplied by a DPU factor (1 for `G.1X`, 2 for `G.2X`, or 0.25 for
    #   `G.025X` workers). This value may be different than the
    #   `executionEngineRuntime` * `MaxCapacity` as in the case of Auto
    #   Scaling jobs, as the number of executors running at a given time may
    #   be less than the `MaxCapacity`. Therefore, it is possible that the
    #   value of `DPUSeconds` is less than `executionEngineRuntime` *
    #   `MaxCapacity`.
    #   @return [Float]
    #
    # @!attribute [rw] execution_class
    #   Indicates whether the job is run with a standard or flexible
    #   execution class. The standard execution-class is ideal for
    #   time-sensitive workloads that require fast job startup and dedicated
    #   resources.
    #
    #   The flexible execution class is appropriate for time-insensitive
    #   jobs whose start and completion times may vary.
    #
    #   Only jobs with Glue version 3.0 and above and command type `glueetl`
    #   will be allowed to set `ExecutionClass` to `FLEX`. The flexible
    #   execution class is available for Spark jobs.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_window
    #   This field specifies a day of the week and hour for a maintenance
    #   window for streaming jobs. Glue periodically performs maintenance
    #   activities. During these maintenance windows, Glue will need to
    #   restart your streaming jobs.
    #
    #   Glue will restart the job within 3 hours of the specified
    #   maintenance window. For instance, if you set up the maintenance
    #   window for Monday at 10:00AM GMT, your jobs will be restarted
    #   between 10:00AM GMT to 1:00PM GMT.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The name of an Glue usage profile associated with the job run.
    #   @return [String]
    #
    # @!attribute [rw] state_detail
    #   This field holds details that pertain to the state of a job run. The
    #   field is nullable.
    #
    #   For example, when a job run is in a WAITING state as a result of job
    #   run queuing, the field has the reason why the job run is in that
    #   state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobRun AWS API Documentation
    #
    class JobRun < Struct.new(
      :id,
      :attempt,
      :previous_run_id,
      :trigger_name,
      :job_name,
      :job_mode,
      :job_run_queuing_enabled,
      :started_on,
      :last_modified_on,
      :completed_on,
      :job_run_state,
      :arguments,
      :error_message,
      :predecessor_runs,
      :allocated_capacity,
      :execution_time,
      :timeout,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :security_configuration,
      :log_group_name,
      :notification_property,
      :glue_version,
      :dpu_seconds,
      :execution_class,
      :maintenance_window,
      :profile_name,
      :state_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies information used to update an existing job definition. The
    # previous job definition is completely overwritten by this information.
    #
    # @!attribute [rw] job_mode
    #   A mode that describes how a job was created. Valid values are:
    #
    #   * `SCRIPT` - The job was created using the Glue Studio script
    #     editor.
    #
    #   * `VISUAL` - The job was created using the Glue Studio visual
    #     editor.
    #
    #   * `NOTEBOOK` - The job was created using an interactive sessions
    #     notebook.
    #
    #   When the `JobMode` field is missing or null, `SCRIPT` is assigned as
    #   the default value.
    #   @return [String]
    #
    # @!attribute [rw] job_run_queuing_enabled
    #   Specifies whether job run queuing is enabled for the job runs for
    #   this job.
    #
    #   A value of true means job run queuing is enabled for the job runs.
    #   If false or not populated, the job runs will not be considered for
    #   queueing.
    #
    #   If this field does not match the value set in the job run, then the
    #   value from the job run field will be used.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   Description of the job being defined.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   This field is reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role associated
    #   with this job (required).
    #   @return [String]
    #
    # @!attribute [rw] execution_property
    #   An `ExecutionProperty` specifying the maximum number of concurrent
    #   runs allowed for this job.
    #   @return [Types::ExecutionProperty]
    #
    # @!attribute [rw] command
    #   The `JobCommand` that runs this job (required).
    #   @return [Types::JobCommand]
    #
    # @!attribute [rw] default_arguments
    #   The default arguments for every run of this job, specified as
    #   name-value pairs.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that Glue itself consumes.
    #
    #   Job arguments may be logged. Do not pass plaintext secrets as
    #   arguments. Retrieve secrets from a Glue Connection, Secrets Manager
    #   or other secret management mechanism if you intend to keep them
    #   within the Job.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the arguments you can provide to this field
    #   when configuring Spark jobs, see the [Special Parameters Used by
    #   Glue][2] topic in the developer guide.
    #
    #   For information about the arguments you can provide to this field
    #   when configuring Ray jobs, see [Using job parameters in Ray jobs][3]
    #   in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #   [3]: https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] non_overridable_arguments
    #   Arguments for this job that are not overridden when providing job
    #   arguments in a job run, specified as name-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connections
    #   The connections used for this job.
    #   @return [Types::ConnectionsList]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry this job if it fails.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_capacity
    #   This field is deprecated. Use `MaxCapacity` instead.
    #
    #   The number of Glue data processing units (DPUs) to allocate to this
    #   job. You can allocate a minimum of 2 DPUs; the default is 10. A DPU
    #   is a relative measure of processing power that consists of 4 vCPUs
    #   of compute capacity and 16 GB of memory. For more information, see
    #   the [Glue pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The job timeout in minutes. This is the maximum time that a job run
    #   can consume resources before it is terminated and enters `TIMEOUT`
    #   status.
    #
    #   Jobs must have timeout values less than 7 days or 10080 minutes.
    #   Otherwise, the jobs will throw an exception.
    #
    #   When the value is left blank, the timeout is defaulted to 2880
    #   minutes.
    #
    #   Any existing Glue jobs that had a timeout value greater than 7 days
    #   will be defaulted to 7 days. For instance if you have specified a
    #   timeout of 20 days for a batch job, it will be stopped on the 7th
    #   day.
    #
    #   For streaming jobs, if you have set up a maintenance window, it will
    #   be restarted during the maintenance window after 7 days.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   For Glue version 1.0 or earlier jobs, using the standard worker
    #   type, the number of Glue data processing units (DPUs) that can be
    #   allocated when this job runs. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [ Glue pricing page][1].
    #
    #   For Glue version 2.0+ jobs, you cannot specify a `Maximum capacity`.
    #   Instead, you should specify a `Worker type` and the `Number of
    #   workers`.
    #
    #   Do not set `MaxCapacity` if using `WorkerType` and
    #   `NumberOfWorkers`.
    #
    #   The value that can be allocated for `MaxCapacity` depends on whether
    #   you are running a Python shell job, an Apache Spark ETL job, or an
    #   Apache Spark streaming ETL job:
    #
    #   * When you specify a Python shell job
    #     (`JobCommand.Name`="pythonshell"), you can allocate either
    #     0.0625 or 1 DPU. The default is 0.0625 DPU.
    #
    #   * When you specify an Apache Spark ETL job
    #     (`JobCommand.Name`="glueetl") or Apache Spark streaming ETL job
    #     (`JobCommand.Name`="gluestreaming"), you can allocate from 2 to
    #     100 DPUs. The default is 10 DPUs. This job type cannot have a
    #     fractional DPU allocation.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of G.1X, G.2X, G.4X, G.8X or G.025X for Spark jobs.
    #   Accepts the value Z.2X for Ray jobs.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPUs, 16
    #     GB of memory) with 94GB disk, and provides 1 executor per worker.
    #     We recommend this worker type for workloads such as data
    #     transforms, joins, and queries, to offers a scalable and cost
    #     effective way to run most jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPUs, 32
    #     GB of memory) with 138GB disk, and provides 1 executor per worker.
    #     We recommend this worker type for workloads such as data
    #     transforms, joins, and queries, to offers a scalable and cost
    #     effective way to run most jobs.
    #
    #   * For the `G.4X` worker type, each worker maps to 4 DPU (16 vCPUs,
    #     64 GB of memory) with 256GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for jobs whose workloads
    #     contain your most demanding transforms, aggregations, joins, and
    #     queries. This worker type is available only for Glue version 3.0
    #     or later Spark ETL jobs in the following Amazon Web Services
    #     Regions: US East (Ohio), US East (N. Virginia), US West (Oregon),
    #     Asia Pacific (Singapore), Asia Pacific (Sydney), Asia Pacific
    #     (Tokyo), Canada (Central), Europe (Frankfurt), Europe (Ireland),
    #     and Europe (Stockholm).
    #
    #   * For the `G.8X` worker type, each worker maps to 8 DPU (32 vCPUs,
    #     128 GB of memory) with 512GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for jobs whose workloads
    #     contain your most demanding transforms, aggregations, joins, and
    #     queries. This worker type is available only for Glue version 3.0
    #     or later Spark ETL jobs, in the same Amazon Web Services Regions
    #     as supported for the `G.4X` worker type.
    #
    #   * For the `G.025X` worker type, each worker maps to 0.25 DPU (2
    #     vCPUs, 4 GB of memory) with 84GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for low volume streaming
    #     jobs. This worker type is only available for Glue version 3.0 or
    #     later streaming jobs.
    #
    #   * For the `Z.2X` worker type, each worker maps to 2 M-DPU (8vCPUs,
    #     64 GB of memory) with 128 GB disk, and provides up to 8 Ray
    #     workers based on the autoscaler.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a job runs.
    #   @return [Integer]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this job.
    #   @return [String]
    #
    # @!attribute [rw] notification_property
    #   Specifies the configuration properties of a job notification.
    #   @return [Types::NotificationProperty]
    #
    # @!attribute [rw] glue_version
    #   In Spark jobs, `GlueVersion` determines the versions of Apache Spark
    #   and Python that Glue available in a job. The Python version
    #   indicates the version supported for jobs of type Spark.
    #
    #   Ray jobs should set `GlueVersion` to `4.0` or greater. However, the
    #   versions of Ray, Python and additional libraries available in your
    #   Ray job are determined by the `Runtime` parameter of the Job
    #   command.
    #
    #   For more information about the available Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in
    #   the developer guide.
    #
    #   Jobs that are created without specifying a Glue version default to
    #   Glue 0.9.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #   @return [String]
    #
    # @!attribute [rw] code_gen_configuration_nodes
    #   The representation of a directed acyclic graph on which both the
    #   Glue Studio visual component and Glue Studio code generation is
    #   based.
    #   @return [Hash<String,Types::CodeGenConfigurationNode>]
    #
    # @!attribute [rw] execution_class
    #   Indicates whether the job is run with a standard or flexible
    #   execution class. The standard execution-class is ideal for
    #   time-sensitive workloads that require fast job startup and dedicated
    #   resources.
    #
    #   The flexible execution class is appropriate for time-insensitive
    #   jobs whose start and completion times may vary.
    #
    #   Only jobs with Glue version 3.0 and above and command type `glueetl`
    #   will be allowed to set `ExecutionClass` to `FLEX`. The flexible
    #   execution class is available for Spark jobs.
    #   @return [String]
    #
    # @!attribute [rw] source_control_details
    #   The details for a source control configuration for a job, allowing
    #   synchronization of job artifacts to or from a remote repository.
    #   @return [Types::SourceControlDetails]
    #
    # @!attribute [rw] maintenance_window
    #   This field specifies a day of the week and hour for a maintenance
    #   window for streaming jobs. Glue periodically performs maintenance
    #   activities. During these maintenance windows, Glue will need to
    #   restart your streaming jobs.
    #
    #   Glue will restart the job within 3 hours of the specified
    #   maintenance window. For instance, if you set up the maintenance
    #   window for Monday at 10:00AM GMT, your jobs will be restarted
    #   between 10:00AM GMT to 1:00PM GMT.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobUpdate AWS API Documentation
    #
    class JobUpdate < Struct.new(
      :job_mode,
      :job_run_queuing_enabled,
      :description,
      :log_uri,
      :role,
      :execution_property,
      :command,
      :default_arguments,
      :non_overridable_arguments,
      :connections,
      :max_retries,
      :allocated_capacity,
      :timeout,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :security_configuration,
      :notification_property,
      :glue_version,
      :code_gen_configuration_nodes,
      :execution_class,
      :source_control_details,
      :maintenance_window)
      SENSITIVE = [:code_gen_configuration_nodes]
      include Aws::Structure
    end

    # Specifies a transform that joins two datasets into one dataset using a
    # comparison phrase on the specified data property keys. You can use
    # inner, outer, left, right, left semi, and left anti joins.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] join_type
    #   Specifies the type of join to be performed on the datasets.
    #   @return [String]
    #
    # @!attribute [rw] columns
    #   A list of the two columns to be joined.
    #   @return [Array<Types::JoinColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Join AWS API Documentation
    #
    class Join < Struct.new(
      :name,
      :inputs,
      :join_type,
      :columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a column to be joined.
    #
    # @!attribute [rw] from
    #   The column to be joined.
    #   @return [String]
    #
    # @!attribute [rw] keys
    #   The key of the column to be joined.
    #   @return [Array<Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JoinColumn AWS API Documentation
    #
    class JoinColumn < Struct.new(
      :from,
      :keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # A classifier for `JSON` content.
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that this classifier was registered.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The time that this classifier was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of this classifier.
    #   @return [Integer]
    #
    # @!attribute [rw] json_path
    #   A `JsonPath` string defining the JSON data for the classifier to
    #   classify. Glue supports a subset of JsonPath, as described in
    #   [Writing JsonPath Custom Classifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JsonClassifier AWS API Documentation
    #
    class JsonClassifier < Struct.new(
      :name,
      :creation_time,
      :last_updated,
      :version,
      :json_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The KMS key specified is not accessible.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/KMSKeyNotAccessibleFault AWS API Documentation
    #
    class KMSKeyNotAccessibleFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional options for streaming.
    #
    # @!attribute [rw] bootstrap_servers
    #   A list of bootstrap server URLs, for example, as
    #   `b-1.vpc-test-2.o4q88o.c6.kafka.us-east-1.amazonaws.com:9094`. This
    #   option must be specified in the API call or defined in the table
    #   metadata in the Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] security_protocol
    #   The protocol used to communicate with brokers. The possible values
    #   are `"SSL"` or `"PLAINTEXT"`.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection.
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   The topic name as specified in Apache Kafka. You must specify at
    #   least one of `"topicName"`, `"assign"` or `"subscribePattern"`.
    #   @return [String]
    #
    # @!attribute [rw] assign
    #   The specific `TopicPartitions` to consume. You must specify at least
    #   one of `"topicName"`, `"assign"` or `"subscribePattern"`.
    #   @return [String]
    #
    # @!attribute [rw] subscribe_pattern
    #   A Java regex string that identifies the topic list to subscribe to.
    #   You must specify at least one of `"topicName"`, `"assign"` or
    #   `"subscribePattern"`.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   An optional classification.
    #   @return [String]
    #
    # @!attribute [rw] delimiter
    #   Specifies the delimiter character.
    #   @return [String]
    #
    # @!attribute [rw] starting_offsets
    #   The starting position in the Kafka topic to read data from. The
    #   possible values are `"earliest"` or `"latest"`. The default value is
    #   `"latest"`.
    #   @return [String]
    #
    # @!attribute [rw] ending_offsets
    #   The end point when a batch query is ended. Possible values are
    #   either `"latest"` or a JSON string that specifies an ending offset
    #   for each `TopicPartition`.
    #   @return [String]
    #
    # @!attribute [rw] poll_timeout_ms
    #   The timeout in milliseconds to poll data from Kafka in Spark job
    #   executors. The default value is `512`.
    #   @return [Integer]
    #
    # @!attribute [rw] num_retries
    #   The number of times to retry before failing to fetch Kafka offsets.
    #   The default value is `3`.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_interval_ms
    #   The time in milliseconds to wait before retrying to fetch Kafka
    #   offsets. The default value is `10`.
    #   @return [Integer]
    #
    # @!attribute [rw] max_offsets_per_trigger
    #   The rate limit on the maximum number of offsets that are processed
    #   per trigger interval. The specified total number of offsets is
    #   proportionally split across `topicPartitions` of different volumes.
    #   The default value is null, which means that the consumer reads all
    #   offsets until the known latest offset.
    #   @return [Integer]
    #
    # @!attribute [rw] min_partitions
    #   The desired minimum number of partitions to read from Kafka. The
    #   default value is null, which means that the number of spark
    #   partitions is equal to the number of Kafka partitions.
    #   @return [Integer]
    #
    # @!attribute [rw] include_headers
    #   Whether to include the Kafka headers. When the option is set to
    #   "true", the data output will contain an additional column named
    #   "glue\_streaming\_kafka\_headers" with type `Array[Struct(key:
    #   String, value: String)]`. The default value is "false". This
    #   option is available in Glue version 3.0 or later only.
    #   @return [Boolean]
    #
    # @!attribute [rw] add_record_timestamp
    #   When this option is set to 'true', the data output will contain an
    #   additional column named "\_\_src\_timestamp" that indicates the
    #   time when the corresponding record received by the topic. The
    #   default value is 'false'. This option is supported in Glue version
    #   4.0 or later.
    #   @return [String]
    #
    # @!attribute [rw] emit_consumer_lag_metrics
    #   When this option is set to 'true', for each batch, it will emit
    #   the metrics for the duration between the oldest record received by
    #   the topic and the time it arrives in Glue to CloudWatch. The
    #   metric's name is "glue.driver.streaming.maxConsumerLagInMs". The
    #   default value is 'false'. This option is supported in Glue version
    #   4.0 or later.
    #   @return [String]
    #
    # @!attribute [rw] starting_timestamp
    #   The timestamp of the record in the Kafka topic to start reading data
    #   from. The possible values are a timestamp string in UTC format of
    #   the pattern `yyyy-mm-ddTHH:MM:SSZ` (where Z represents a UTC
    #   timezone offset with a +/-. For example:
    #   "2023-04-04T08:00:00+08:00").
    #
    #   Only one of `StartingTimestamp` or `StartingOffsets` must be set.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/KafkaStreamingSourceOptions AWS API Documentation
    #
    class KafkaStreamingSourceOptions < Struct.new(
      :bootstrap_servers,
      :security_protocol,
      :connection_name,
      :topic_name,
      :assign,
      :subscribe_pattern,
      :classification,
      :delimiter,
      :starting_offsets,
      :ending_offsets,
      :poll_timeout_ms,
      :num_retries,
      :retry_interval_ms,
      :max_offsets_per_trigger,
      :min_partitions,
      :include_headers,
      :add_record_timestamp,
      :emit_consumer_lag_metrics,
      :starting_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # A partition key pair consisting of a name and a type.
    #
    # @!attribute [rw] name
    #   The name of a partition key.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of a partition key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/KeySchemaElement AWS API Documentation
    #
    class KeySchemaElement < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional options for the Amazon Kinesis streaming data source.
    #
    # @!attribute [rw] endpoint_url
    #   The URL of the Kinesis endpoint.
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   The name of the Kinesis data stream.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   An optional classification.
    #   @return [String]
    #
    # @!attribute [rw] delimiter
    #   Specifies the delimiter character.
    #   @return [String]
    #
    # @!attribute [rw] starting_position
    #   The starting position in the Kinesis data stream to read data from.
    #   The possible values are `"latest"`, `"trim_horizon"`, `"earliest"`,
    #   or a timestamp string in UTC format in the pattern
    #   `yyyy-mm-ddTHH:MM:SSZ` (where `Z` represents a UTC timezone offset
    #   with a +/-. For example: "2023-04-04T08:00:00-04:00"). The default
    #   value is `"latest"`.
    #
    #   Note: Using a value that is a timestamp string in UTC format for
    #   "startingPosition" is supported only for Glue version 4.0 or
    #   later.
    #   @return [String]
    #
    # @!attribute [rw] max_fetch_time_in_ms
    #   The maximum time spent for the job executor to read records for the
    #   current batch from the Kinesis data stream, specified in
    #   milliseconds (ms). Multiple `GetRecords` API calls may be made
    #   within this time. The default value is `1000`.
    #   @return [Integer]
    #
    # @!attribute [rw] max_fetch_records_per_shard
    #   The maximum number of records to fetch per shard in the Kinesis data
    #   stream per microbatch. Note: The client can exceed this limit if the
    #   streaming job has already read extra records from Kinesis (in the
    #   same get-records call). If `MaxFetchRecordsPerShard` needs to be
    #   strict then it needs to be a multiple of `MaxRecordPerRead`. The
    #   default value is `100000`.
    #   @return [Integer]
    #
    # @!attribute [rw] max_record_per_read
    #   The maximum number of records to fetch from the Kinesis data stream
    #   in each getRecords operation. The default value is `10000`.
    #   @return [Integer]
    #
    # @!attribute [rw] add_idle_time_between_reads
    #   Adds a time delay between two consecutive getRecords operations. The
    #   default value is `"False"`. This option is only configurable for
    #   Glue version 2.0 and above.
    #   @return [Boolean]
    #
    # @!attribute [rw] idle_time_between_reads_in_ms
    #   The minimum time delay between two consecutive getRecords
    #   operations, specified in ms. The default value is `1000`. This
    #   option is only configurable for Glue version 2.0 and above.
    #   @return [Integer]
    #
    # @!attribute [rw] describe_shard_interval
    #   The minimum time interval between two ListShards API calls for your
    #   script to consider resharding. The default value is `1s`.
    #   @return [Integer]
    #
    # @!attribute [rw] num_retries
    #   The maximum number of retries for Kinesis Data Streams API requests.
    #   The default value is `3`.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_interval_ms
    #   The cool-off time period (specified in ms) before retrying the
    #   Kinesis Data Streams API call. The default value is `1000`.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retry_interval_ms
    #   The maximum cool-off time period (specified in ms) between two
    #   retries of a Kinesis Data Streams API call. The default value is
    #   `10000`.
    #   @return [Integer]
    #
    # @!attribute [rw] avoid_empty_batches
    #   Avoids creating an empty microbatch job by checking for unread data
    #   in the Kinesis data stream before the batch is started. The default
    #   value is `"False"`.
    #   @return [Boolean]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the Kinesis data stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role to assume using AWS
    #   Security Token Service (AWS STS). This role must have permissions
    #   for describe or read record operations for the Kinesis data stream.
    #   You must use this parameter when accessing a data stream in a
    #   different account. Used in conjunction with `"awsSTSSessionName"`.
    #   @return [String]
    #
    # @!attribute [rw] role_session_name
    #   An identifier for the session assuming the role using AWS STS. You
    #   must use this parameter when accessing a data stream in a different
    #   account. Used in conjunction with `"awsSTSRoleARN"`.
    #   @return [String]
    #
    # @!attribute [rw] add_record_timestamp
    #   When this option is set to 'true', the data output will contain an
    #   additional column named "\_\_src\_timestamp" that indicates the
    #   time when the corresponding record received by the stream. The
    #   default value is 'false'. This option is supported in Glue version
    #   4.0 or later.
    #   @return [String]
    #
    # @!attribute [rw] emit_consumer_lag_metrics
    #   When this option is set to 'true', for each batch, it will emit
    #   the metrics for the duration between the oldest record received by
    #   the stream and the time it arrives in Glue to CloudWatch. The
    #   metric's name is "glue.driver.streaming.maxConsumerLagInMs". The
    #   default value is 'false'. This option is supported in Glue version
    #   4.0 or later.
    #   @return [String]
    #
    # @!attribute [rw] starting_timestamp
    #   The timestamp of the record in the Kinesis data stream to start
    #   reading data from. The possible values are a timestamp string in UTC
    #   format of the pattern `yyyy-mm-ddTHH:MM:SSZ` (where Z represents a
    #   UTC timezone offset with a +/-. For example:
    #   "2023-04-04T08:00:00+08:00").
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/KinesisStreamingSourceOptions AWS API Documentation
    #
    class KinesisStreamingSourceOptions < Struct.new(
      :endpoint_url,
      :stream_name,
      :classification,
      :delimiter,
      :starting_position,
      :max_fetch_time_in_ms,
      :max_fetch_records_per_shard,
      :max_record_per_read,
      :add_idle_time_between_reads,
      :idle_time_between_reads_in_ms,
      :describe_shard_interval,
      :num_retries,
      :retry_interval_ms,
      :max_retry_interval_ms,
      :avoid_empty_batches,
      :stream_arn,
      :role_arn,
      :role_session_name,
      :add_record_timestamp,
      :emit_consumer_lag_metrics,
      :starting_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration properties for a labeling set generation task
    # run.
    #
    # @!attribute [rw] output_s3_path
    #   The Amazon Simple Storage Service (Amazon S3) path where you will
    #   generate the labeling set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/LabelingSetGenerationTaskRunProperties AWS API Documentation
    #
    class LabelingSetGenerationTaskRunProperties < Struct.new(
      :output_s3_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies Lake Formation configuration settings for the crawler.
    #
    # @!attribute [rw] use_lake_formation_credentials
    #   Specifies whether to use Lake Formation credentials for the crawler
    #   instead of the IAM role credentials.
    #   @return [Boolean]
    #
    # @!attribute [rw] account_id
    #   Required for cross account crawls. For same account crawls as the
    #   target data, this can be left as null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/LakeFormationConfiguration AWS API Documentation
    #
    class LakeFormationConfiguration < Struct.new(
      :use_lake_formation_credentials,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # When there are multiple versions of a blueprint and the latest version
    # has some errors, this attribute indicates the last successful
    # blueprint definition that is available with the service.
    #
    # @!attribute [rw] description
    #   The description of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_on
    #   The date and time the blueprint was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] parameter_spec
    #   A JSON string specifying the parameters for the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_location
    #   Specifies a path in Amazon S3 where the blueprint is published by
    #   the Glue developer.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_service_location
    #   Specifies a path in Amazon S3 where the blueprint is copied when you
    #   create or update the blueprint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/LastActiveDefinition AWS API Documentation
    #
    class LastActiveDefinition < Struct.new(
      :description,
      :last_modified_on,
      :parameter_spec,
      :blueprint_location,
      :blueprint_service_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status and error information about the most recent crawl.
    #
    # @!attribute [rw] status
    #   Status of the last crawl.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   If an error occurred, the error information about the last crawl.
    #   @return [String]
    #
    # @!attribute [rw] log_group
    #   The log group for the last crawl.
    #   @return [String]
    #
    # @!attribute [rw] log_stream
    #   The log stream for the last crawl.
    #   @return [String]
    #
    # @!attribute [rw] message_prefix
    #   The prefix for a message about this crawl.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time at which the crawl started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/LastCrawlInfo AWS API Documentation
    #
    class LastCrawlInfo < Struct.new(
      :status,
      :error_message,
      :log_group,
      :log_stream,
      :message_prefix,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies data lineage configuration settings for the crawler.
    #
    # @!attribute [rw] crawler_lineage_settings
    #   Specifies whether data lineage is enabled for the crawler. Valid
    #   values are:
    #
    #   * ENABLE: enables data lineage for the crawler
    #
    #   * DISABLE: disables data lineage for the crawler
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/LineageConfiguration AWS API Documentation
    #
    class LineageConfiguration < Struct.new(
      :crawler_lineage_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Filters the list by an Amazon Web Services resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListBlueprintsRequest AWS API Documentation
    #
    class ListBlueprintsRequest < Struct.new(
      :next_token,
      :max_results,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprints
    #   List of names of blueprints in the account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all blueprint names have been returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListBlueprintsResponse AWS API Documentation
    #
    class ListBlueprintsResponse < Struct.new(
      :blueprints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum size of the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListColumnStatisticsTaskRunsRequest AWS API Documentation
    #
    class ListColumnStatisticsTaskRunsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] column_statistics_task_run_ids
    #   A list of column statistics task run IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all task run IDs have yet been
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListColumnStatisticsTaskRunsResponse AWS API Documentation
    #
    class ListColumnStatisticsTaskRunsResponse < Struct.new(
      :column_statistics_task_run_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListConnectionTypesRequest AWS API Documentation
    #
    class ListConnectionTypesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_types
    #   A list of `ConnectionTypeBrief` objects containing brief information
    #   about the supported connection types.
    #   @return [Array<Types::ConnectionTypeBrief>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the current list segment is not the last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListConnectionTypesResponse AWS API Documentation
    #
    class ListConnectionTypesResponse < Struct.new(
      :connection_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies to return only these tagged resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListCrawlersRequest AWS API Documentation
    #
    class ListCrawlersRequest < Struct.new(
      :max_results,
      :next_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] crawler_names
    #   The names of all crawlers in the account, or the crawlers with the
    #   specified tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list does not contain the last
    #   metric available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListCrawlersResponse AWS API Documentation
    #
    class ListCrawlersResponse < Struct.new(
      :crawler_names,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] crawler_name
    #   The name of the crawler whose runs you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. The default is 20, and
    #   maximum is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Filters the crawls by the criteria you specify in a list of
    #   `CrawlsFilter` objects.
    #   @return [Array<Types::CrawlsFilter>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListCrawlsRequest AWS API Documentation
    #
    class ListCrawlsRequest < Struct.new(
      :crawler_name,
      :max_results,
      :filters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] crawls
    #   A list of `CrawlerHistory` objects representing the crawl runs that
    #   meet your criteria.
    #   @return [Array<Types::CrawlerHistory>]
    #
    # @!attribute [rw] next_token
    #   A continuation token for paginating the returned list of tokens,
    #   returned if the current segment of the list is not the last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListCrawlsResponse AWS API Documentation
    #
    class ListCrawlsResponse < Struct.new(
      :crawls,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A paginated token to offset the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   A list of key-value pair tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListCustomEntityTypesRequest AWS API Documentation
    #
    class ListCustomEntityTypesRequest < Struct.new(
      :next_token,
      :max_results,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_entity_types
    #   A list of `CustomEntityType` objects representing custom patterns.
    #   @return [Array<Types::CustomEntityType>]
    #
    # @!attribute [rw] next_token
    #   A pagination token, if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListCustomEntityTypesResponse AWS API Documentation
    #
    class ListCustomEntityTypesResponse < Struct.new(
      :custom_entity_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   The filter criteria.
    #   @return [Types::DataQualityResultFilterCriteria]
    #
    # @!attribute [rw] next_token
    #   A paginated token to offset the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityResultsRequest AWS API Documentation
    #
    class ListDataQualityResultsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   A list of `DataQualityResultDescription` objects.
    #   @return [Array<Types::DataQualityResultDescription>]
    #
    # @!attribute [rw] next_token
    #   A pagination token, if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityResultsResponse AWS API Documentation
    #
    class ListDataQualityResultsResponse < Struct.new(
      :results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   The filter criteria.
    #   @return [Types::DataQualityRuleRecommendationRunFilter]
    #
    # @!attribute [rw] next_token
    #   A paginated token to offset the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityRuleRecommendationRunsRequest AWS API Documentation
    #
    class ListDataQualityRuleRecommendationRunsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] runs
    #   A list of `DataQualityRuleRecommendationRunDescription` objects.
    #   @return [Array<Types::DataQualityRuleRecommendationRunDescription>]
    #
    # @!attribute [rw] next_token
    #   A pagination token, if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityRuleRecommendationRunsResponse AWS API Documentation
    #
    class ListDataQualityRuleRecommendationRunsResponse < Struct.new(
      :runs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   The filter criteria.
    #   @return [Types::DataQualityRulesetEvaluationRunFilter]
    #
    # @!attribute [rw] next_token
    #   A paginated token to offset the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityRulesetEvaluationRunsRequest AWS API Documentation
    #
    class ListDataQualityRulesetEvaluationRunsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] runs
    #   A list of `DataQualityRulesetEvaluationRunDescription` objects
    #   representing data quality ruleset runs.
    #   @return [Array<Types::DataQualityRulesetEvaluationRunDescription>]
    #
    # @!attribute [rw] next_token
    #   A pagination token, if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityRulesetEvaluationRunsResponse AWS API Documentation
    #
    class ListDataQualityRulesetEvaluationRunsResponse < Struct.new(
      :runs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A paginated token to offset the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   The filter criteria.
    #   @return [Types::DataQualityRulesetFilterCriteria]
    #
    # @!attribute [rw] tags
    #   A list of key-value pair tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityRulesetsRequest AWS API Documentation
    #
    class ListDataQualityRulesetsRequest < Struct.new(
      :next_token,
      :max_results,
      :filter,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rulesets
    #   A paginated list of rulesets for the specified list of Glue tables.
    #   @return [Array<Types::DataQualityRulesetListDetails>]
    #
    # @!attribute [rw] next_token
    #   A pagination token, if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityRulesetsResponse AWS API Documentation
    #
    class ListDataQualityRulesetsResponse < Struct.new(
      :rulesets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statistic_id
    #   The Statistic ID.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The Profile ID.
    #   @return [String]
    #
    # @!attribute [rw] timestamp_filter
    #   A timestamp filter.
    #   @return [Types::TimestampFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityStatisticAnnotationsRequest AWS API Documentation
    #
    class ListDataQualityStatisticAnnotationsRequest < Struct.new(
      :statistic_id,
      :profile_id,
      :timestamp_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] annotations
    #   A list of `StatisticAnnotation` applied to the Statistic
    #   @return [Array<Types::StatisticAnnotation>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityStatisticAnnotationsResponse AWS API Documentation
    #
    class ListDataQualityStatisticAnnotationsResponse < Struct.new(
      :annotations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statistic_id
    #   The Statistic ID.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The Profile ID.
    #   @return [String]
    #
    # @!attribute [rw] timestamp_filter
    #   A timestamp filter.
    #   @return [Types::TimestampFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityStatisticsRequest AWS API Documentation
    #
    class ListDataQualityStatisticsRequest < Struct.new(
      :statistic_id,
      :profile_id,
      :timestamp_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statistics
    #   A `StatisticSummaryList`.
    #   @return [Array<Types::StatisticSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityStatisticsResponse AWS API Documentation
    #
    class ListDataQualityStatisticsResponse < Struct.new(
      :statistics,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Specifies to return only these tagged resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDevEndpointsRequest AWS API Documentation
    #
    class ListDevEndpointsRequest < Struct.new(
      :next_token,
      :max_results,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dev_endpoint_names
    #   The names of all the `DevEndpoint`s in the account, or the
    #   `DevEndpoint`s with the specified tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list does not contain the last
    #   metric available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDevEndpointsResponse AWS API Documentation
    #
    class ListDevEndpointsResponse < Struct.new(
      :dev_endpoint_names,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_name
    #   A name for the connection that has required credentials to query any
    #   connection type.
    #   @return [String]
    #
    # @!attribute [rw] catalog_id
    #   The catalog ID of the catalog that contains the connection. This can
    #   be null, By default, the Amazon Web Services Account ID is the
    #   catalog ID.
    #   @return [String]
    #
    # @!attribute [rw] parent_entity_name
    #   Name of the parent entity for which you want to list the children.
    #   This parameter takes a fully-qualified path of the entity in order
    #   to list the child entities.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, included if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] data_store_api_version
    #   The API version of the SaaS connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListEntitiesRequest AWS API Documentation
    #
    class ListEntitiesRequest < Struct.new(
      :connection_name,
      :catalog_id,
      :parent_entity_name,
      :next_token,
      :data_store_api_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   A list of `Entity` objects.
    #   @return [Array<Types::Entity>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, present if the current segment is not the
    #   last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListEntitiesResponse AWS API Documentation
    #
    class ListEntitiesResponse < Struct.new(
      :entities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Specifies to return only these tagged resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListJobsRequest AWS API Documentation
    #
    class ListJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_names
    #   The names of all jobs in the account, or the jobs with the specified
    #   tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list does not contain the last
    #   metric available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListJobsResponse AWS API Documentation
    #
    class ListJobsResponse < Struct.new(
      :job_names,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   A `TransformFilterCriteria` used to filter the machine learning
    #   transforms.
    #   @return [Types::TransformFilterCriteria]
    #
    # @!attribute [rw] sort
    #   A `TransformSortCriteria` used to sort the machine learning
    #   transforms.
    #   @return [Types::TransformSortCriteria]
    #
    # @!attribute [rw] tags
    #   Specifies to return only these tagged resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListMLTransformsRequest AWS API Documentation
    #
    class ListMLTransformsRequest < Struct.new(
      :next_token,
      :max_results,
      :filter,
      :sort,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_ids
    #   The identifiers of all the machine learning transforms in the
    #   account, or the machine learning transforms with the specified tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list does not contain the last
    #   metric available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListMLTransformsResponse AWS API Documentation
    #
    class ListMLTransformsResponse < Struct.new(
      :transform_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of results required per page. If the value is not
    #   supplied, this will be defaulted to 25 per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListRegistriesInput AWS API Documentation
    #
    class ListRegistriesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registries
    #   An array of `RegistryDetailedListItem` objects containing minimal
    #   details of each registry.
    #   @return [Array<Types::RegistryListItem>]
    #
    # @!attribute [rw] next_token
    #   A continuation token for paginating the returned list of tokens,
    #   returned if the current segment of the list is not the last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListRegistriesResponse AWS API Documentation
    #
    class ListRegistriesResponse < Struct.new(
      :registries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_id
    #   This is a wrapper structure to contain schema identity fields. The
    #   structure contains:
    #
    #   * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    #     Either `SchemaArn` or `SchemaName` and `RegistryName` has to be
    #     provided.
    #
    #   * SchemaId$SchemaName: The name of the schema. Either `SchemaArn` or
    #     `SchemaName` and `RegistryName` has to be provided.
    #   @return [Types::SchemaId]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results required per page. If the value is not
    #   supplied, this will be defaulted to 25 per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListSchemaVersionsInput AWS API Documentation
    #
    class ListSchemaVersionsInput < Struct.new(
      :schema_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schemas
    #   An array of `SchemaVersionList` objects containing details of each
    #   schema version.
    #   @return [Array<Types::SchemaVersionListItem>]
    #
    # @!attribute [rw] next_token
    #   A continuation token for paginating the returned list of tokens,
    #   returned if the current segment of the list is not the last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListSchemaVersionsResponse AWS API Documentation
    #
    class ListSchemaVersionsResponse < Struct.new(
      :schemas,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   A wrapper structure that may contain the registry name and Amazon
    #   Resource Name (ARN).
    #   @return [Types::RegistryId]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results required per page. If the value is not
    #   supplied, this will be defaulted to 25 per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListSchemasInput AWS API Documentation
    #
    class ListSchemasInput < Struct.new(
      :registry_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schemas
    #   An array of `SchemaListItem` objects containing details of each
    #   schema.
    #   @return [Array<Types::SchemaListItem>]
    #
    # @!attribute [rw] next_token
    #   A continuation token for paginating the returned list of tokens,
    #   returned if the current segment of the list is not the last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListSchemasResponse AWS API Documentation
    #
    class ListSchemasResponse < Struct.new(
      :schemas,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   result.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Tags belonging to the session.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_origin
    #   The origin of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListSessionsRequest AWS API Documentation
    #
    class ListSessionsRequest < Struct.new(
      :next_token,
      :max_results,
      :tags,
      :request_origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   Returns the ID of the session.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sessions
    #   Returns the session object.
    #   @return [Array<Types::Session>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListSessionsResponse AWS API Documentation
    #
    class ListSessionsResponse < Struct.new(
      :ids,
      :sessions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The Session ID of the statements.
    #   @return [String]
    #
    # @!attribute [rw] request_origin
    #   The origin of the request to list statements.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListStatementsRequest AWS API Documentation
    #
    class ListStatementsRequest < Struct.new(
      :session_id,
      :request_origin,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statements
    #   Returns the list of statements.
    #   @return [Array<Types::Statement>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all statements have yet been returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListStatementsResponse AWS API Documentation
    #
    class ListStatementsResponse < Struct.new(
      :statements,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The Catalog ID of the table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database in the catalog in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of table optimizer.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of optimizer runs to return on each call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListTableOptimizerRunsRequest AWS API Documentation
    #
    class ListTableOptimizerRunsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The Catalog ID of the table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database in the catalog in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token for paginating the returned list of optimizer
    #   runs, returned if the current segment of the list is not the last.
    #   @return [String]
    #
    # @!attribute [rw] table_optimizer_runs
    #   A list of the optimizer runs associated with a table.
    #   @return [Array<Types::TableOptimizerRun>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListTableOptimizerRunsResponse AWS API Documentation
    #
    class ListTableOptimizerRunsResponse < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :next_token,
      :table_optimizer_runs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] dependent_job_name
    #   The name of the job for which to retrieve triggers. The trigger that
    #   can start this job is returned. If there is no such trigger, all
    #   triggers are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Specifies to return only these tagged resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListTriggersRequest AWS API Documentation
    #
    class ListTriggersRequest < Struct.new(
      :next_token,
      :dependent_job_name,
      :max_results,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trigger_names
    #   The names of all triggers in the account, or the triggers with the
    #   specified tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list does not contain the last
    #   metric available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListTriggersResponse AWS API Documentation
    #
    class ListTriggersResponse < Struct.new(
      :trigger_names,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, included if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of usage profiles to return in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListUsageProfilesRequest AWS API Documentation
    #
    class ListUsageProfilesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profiles
    #   A list of usage profile (`UsageProfileDefinition`) objects.
    #   @return [Array<Types::UsageProfileDefinition>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, present if the current list segment is not the
    #   last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListUsageProfilesResponse AWS API Documentation
    #
    class ListUsageProfilesResponse < Struct.new(
      :profiles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListWorkflowsRequest AWS API Documentation
    #
    class ListWorkflowsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflows
    #   List of names of workflows in the account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all workflow names have been returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListWorkflowsResponse AWS API Documentation
    #
    class ListWorkflowsResponse < Struct.new(
      :workflows,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of resources.
    #
    # @!attribute [rw] jdbc
    #   A JDBC location.
    #   @return [Array<Types::CodeGenNodeArg>]
    #
    # @!attribute [rw] s3
    #   An Amazon Simple Storage Service (Amazon S3) location.
    #   @return [Array<Types::CodeGenNodeArg>]
    #
    # @!attribute [rw] dynamo_db
    #   An Amazon DynamoDB table location.
    #   @return [Array<Types::CodeGenNodeArg>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Location AWS API Documentation
    #
    class Location < Struct.new(
      :jdbc,
      :s3,
      :dynamo_db)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines column statistics supported for integer data columns.
    #
    # @!attribute [rw] minimum_value
    #   The lowest value in the column.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_value
    #   The highest value in the column.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_nulls
    #   The number of null values in the column.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_distinct_values
    #   The number of distinct values in a column.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/LongColumnStatisticsData AWS API Documentation
    #
    class LongColumnStatisticsData < Struct.new(
      :minimum_value,
      :maximum_value,
      :number_of_nulls,
      :number_of_distinct_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for a machine learning transform.
    #
    # @!attribute [rw] transform_id
    #   The unique transform ID that is generated for the machine learning
    #   transform. The ID is guaranteed to be unique and does not change.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A user-defined name for the machine learning transform. Names are
    #   not guaranteed unique and can be changed at any time.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-defined, long-form description text for the machine learning
    #   transform. Descriptions are not guaranteed to be unique and can be
    #   changed at any time.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] created_on
    #   A timestamp. The time and date that this machine learning transform
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   A timestamp. The last point in time when this machine learning
    #   transform was modified.
    #   @return [Time]
    #
    # @!attribute [rw] input_record_tables
    #   A list of Glue table definitions used by the transform.
    #   @return [Array<Types::GlueTable>]
    #
    # @!attribute [rw] parameters
    #   A `TransformParameters` object. You can use parameters to tune
    #   (customize) the behavior of the machine learning transform by
    #   specifying what data it learns from and your preference on various
    #   tradeoffs (such as precious vs. recall, or accuracy vs. cost).
    #   @return [Types::TransformParameters]
    #
    # @!attribute [rw] evaluation_metrics
    #   An `EvaluationMetrics` object. Evaluation metrics provide an
    #   estimate of the quality of your machine learning transform.
    #   @return [Types::EvaluationMetrics]
    #
    # @!attribute [rw] label_count
    #   A count identifier for the labeling files generated by Glue for this
    #   transform. As you create a better transform, you can iteratively
    #   download, label, and upload the labeling file.
    #   @return [Integer]
    #
    # @!attribute [rw] schema
    #   A map of key-value pairs representing the columns and data types
    #   that this transform can run against. Has an upper bound of 100
    #   columns.
    #   @return [Array<Types::SchemaColumn>]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role with the
    #   required permissions. The required permissions include both Glue
    #   service role permissions to Glue resources, and Amazon S3
    #   permissions required by the transform.
    #
    #   * This role needs Glue service role permissions to allow access to
    #     resources in Glue. See [Attach a Policy to IAM Users That Access
    #     Glue][1].
    #
    #   * This role needs permission to your Amazon Simple Storage Service
    #     (Amazon S3) sources, targets, temporary directory, scripts, and
    #     any libraries used by the task run for this transform.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   This value determines which version of Glue this machine learning
    #   transform is compatible with. Glue 1.0 is recommended for most
    #   customers. If the value is not set, the Glue compatibility defaults
    #   to Glue 0.9. For more information, see [Glue Versions][1] in the
    #   developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The number of Glue data processing units (DPUs) that are allocated
    #   to task runs for this transform. You can allocate from 2 to 100
    #   DPUs; the default is 10. A DPU is a relative measure of processing
    #   power that consists of 4 vCPUs of compute capacity and 16 GB of
    #   memory. For more information, see the [Glue pricing page][1].
    #
    #   `MaxCapacity` is a mutually exclusive option with `NumberOfWorkers`
    #   and `WorkerType`.
    #
    #   * If either `NumberOfWorkers` or `WorkerType` is set, then
    #     `MaxCapacity` cannot be set.
    #
    #   * If `MaxCapacity` is set then neither `NumberOfWorkers` or
    #     `WorkerType` can be set.
    #
    #   * If `WorkerType` is set, then `NumberOfWorkers` is required (and
    #     vice versa).
    #
    #   * `MaxCapacity` and `NumberOfWorkers` must both be at least 1.
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #
    #
    #   [1]: http://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when a task of this
    #   transform runs. Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #
    #   `MaxCapacity` is a mutually exclusive option with `NumberOfWorkers`
    #   and `WorkerType`.
    #
    #   * If either `NumberOfWorkers` or `WorkerType` is set, then
    #     `MaxCapacity` cannot be set.
    #
    #   * If `MaxCapacity` is set then neither `NumberOfWorkers` or
    #     `WorkerType` can be set.
    #
    #   * If `WorkerType` is set, then `NumberOfWorkers` is required (and
    #     vice versa).
    #
    #   * `MaxCapacity` and `NumberOfWorkers` must both be at least 1.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a task of the transform runs.
    #
    #   If `WorkerType` is set, then `NumberOfWorkers` is required (and vice
    #   versa).
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The timeout in minutes of the machine learning transform.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry after an `MLTaskRun` of the
    #   machine learning transform fails.
    #   @return [Integer]
    #
    # @!attribute [rw] transform_encryption
    #   The encryption-at-rest settings of the transform that apply to
    #   accessing user data. Machine learning transforms can access user
    #   data encrypted in Amazon S3 using KMS.
    #   @return [Types::TransformEncryption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MLTransform AWS API Documentation
    #
    class MLTransform < Struct.new(
      :transform_id,
      :name,
      :description,
      :status,
      :created_on,
      :last_modified_on,
      :input_record_tables,
      :parameters,
      :evaluation_metrics,
      :label_count,
      :schema,
      :role,
      :glue_version,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :timeout,
      :max_retries,
      :transform_encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # The machine learning transform is not ready to run.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MLTransformNotReadyException AWS API Documentation
    #
    class MLTransformNotReadyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption-at-rest settings of the transform that apply to
    # accessing user data.
    #
    # @!attribute [rw] ml_user_data_encryption_mode
    #   The encryption mode applied to user data. Valid values are:
    #
    #   * DISABLED: encryption is disabled
    #
    #   * SSEKMS: use of server-side encryption with Key Management Service
    #     (SSE-KMS) for user data stored in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID for the customer-provided KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MLUserDataEncryption AWS API Documentation
    #
    class MLUserDataEncryption < Struct.new(
      :ml_user_data_encryption_mode,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the mapping of data property keys.
    #
    # @!attribute [rw] to_key
    #   After the apply mapping, what the name of the column should be. Can
    #   be the same as `FromPath`.
    #   @return [String]
    #
    # @!attribute [rw] from_path
    #   The table or column to be modified.
    #   @return [Array<String>]
    #
    # @!attribute [rw] from_type
    #   The type of the data to be modified.
    #   @return [String]
    #
    # @!attribute [rw] to_type
    #   The data type that the data is to be modified to.
    #   @return [String]
    #
    # @!attribute [rw] dropped
    #   If true, then the column is removed.
    #   @return [Boolean]
    #
    # @!attribute [rw] children
    #   Only applicable to nested data structures. If you want to change the
    #   parent structure, but also one of its children, you can fill out
    #   this data strucutre. It is also `Mapping`, but its `FromPath` will
    #   be the parent's `FromPath` plus the `FromPath` from this structure.
    #
    #   For the children part, suppose you have the structure:
    #
    #   `{ "FromPath": "OuterStructure", "ToKey": "OuterStructure",
    #   "ToType": "Struct", "Dropped": false, "Chidlren": [{ "FromPath":
    #   "inner", "ToKey": "inner", "ToType": "Double", "Dropped": false, }]
    #   }`
    #
    #   You can specify a `Mapping` that looks like:
    #
    #   `{ "FromPath": "OuterStructure", "ToKey": "OuterStructure",
    #   "ToType": "Struct", "Dropped": false, "Chidlren": [{ "FromPath":
    #   "inner", "ToKey": "inner", "ToType": "Double", "Dropped": false, }]
    #   }`
    #   @return [Array<Types::Mapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Mapping AWS API Documentation
    #
    class Mapping < Struct.new(
      :to_key,
      :from_path,
      :from_type,
      :to_type,
      :dropped,
      :children)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a mapping.
    #
    # @!attribute [rw] source_table
    #   The name of the source table.
    #   @return [String]
    #
    # @!attribute [rw] source_path
    #   The source path.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The source type.
    #   @return [String]
    #
    # @!attribute [rw] target_table
    #   The target table.
    #   @return [String]
    #
    # @!attribute [rw] target_path
    #   The target path.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The target type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MappingEntry AWS API Documentation
    #
    class MappingEntry < Struct.new(
      :source_table,
      :source_path,
      :source_type,
      :target_table,
      :target_path,
      :target_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that merges a `DynamicFrame` with a staging
    # `DynamicFrame` based on the specified primary keys to identify
    # records. Duplicate records (records with the same primary keys) are
    # not de-duplicated.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source
    #   The source `DynamicFrame` that will be merged with a staging
    #   `DynamicFrame`.
    #   @return [String]
    #
    # @!attribute [rw] primary_keys
    #   The list of primary key fields to match records from the source and
    #   staging dynamic frames.
    #   @return [Array<Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Merge AWS API Documentation
    #
    class Merge < Struct.new(
      :name,
      :inputs,
      :source,
      :primary_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing metadata information for a schema version.
    #
    # @!attribute [rw] metadata_value
    #   The metadata key’s corresponding value.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time at which the entry was created.
    #   @return [String]
    #
    # @!attribute [rw] other_metadata_value_list
    #   Other metadata belonging to the same metadata key.
    #   @return [Array<Types::OtherMetadataValueListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MetadataInfo AWS API Documentation
    #
    class MetadataInfo < Struct.new(
      :metadata_value,
      :created_time,
      :other_metadata_value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing a key value pair for metadata.
    #
    # @!attribute [rw] metadata_key
    #   A metadata key.
    #   @return [String]
    #
    # @!attribute [rw] metadata_value
    #   A metadata key’s corresponding value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MetadataKeyValuePair AWS API Documentation
    #
    class MetadataKeyValuePair < Struct.new(
      :metadata_key,
      :metadata_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the metric based observation generated based on evaluated
    # data quality metrics.
    #
    # @!attribute [rw] metric_name
    #   The name of the data quality metric used for generating the
    #   observation.
    #   @return [String]
    #
    # @!attribute [rw] statistic_id
    #   The Statistic ID.
    #   @return [String]
    #
    # @!attribute [rw] metric_values
    #   An object of type `DataQualityMetricValues` representing the
    #   analysis of the data quality metric value.
    #   @return [Types::DataQualityMetricValues]
    #
    # @!attribute [rw] new_rules
    #   A list of new data quality rules generated as part of the
    #   observation based on the data quality metric value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MetricBasedObservation AWS API Documentation
    #
    class MetricBasedObservation < Struct.new(
      :metric_name,
      :statistic_id,
      :metric_values,
      :new_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a Microsoft SQL server data source in the Glue Data Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to read from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MicrosoftSQLServerCatalogSource AWS API Documentation
    #
    class MicrosoftSQLServerCatalogSource < Struct.new(
      :name,
      :database,
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target that uses Microsoft SQL.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] database
    #   The name of the database to write to.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to write to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MicrosoftSQLServerCatalogTarget AWS API Documentation
    #
    class MicrosoftSQLServerCatalogTarget < Struct.new(
      :name,
      :inputs,
      :database,
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_identifier
    #   The Amazon Resource Name (ARN) for the integration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the integration.
    #   @return [String]
    #
    # @!attribute [rw] data_filter
    #   Selects source tables for the integration using Maxwell filter
    #   syntax.
    #   @return [String]
    #
    # @!attribute [rw] integration_name
    #   A unique name for an integration in Glue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ModifyIntegrationRequest AWS API Documentation
    #
    class ModifyIntegrationRequest < Struct.new(
      :integration_identifier,
      :description,
      :data_filter,
      :integration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_arn
    #   The ARN of the source for the integration.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN of the target for the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_name
    #   A unique name for an integration in Glue.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) for the integration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN of a KMS key used for encrypting the channel.
    #   @return [String]
    #
    # @!attribute [rw] additional_encryption_context
    #   An optional set of non-secret key–value pairs that contains
    #   additional contextual information for encryption.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Metadata assigned to the resource consisting of a list of key-value
    #   pairs.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] status
    #   The status of the integration being modified.
    #
    #   The possible statuses are:
    #
    #   * CREATING: The integration is being created.
    #
    #   * ACTIVE: The integration creation succeeds.
    #
    #   * MODIFYING: The integration is being modified.
    #
    #   * FAILED: The integration creation fails.
    #
    #   * DELETING: The integration is deleted.
    #
    #   * SYNCING: The integration is synchronizing.
    #
    #   * NEEDS\_ATTENTION: The integration needs attention, such as
    #     synchronization.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the integration was created, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] errors
    #   A list of errors associated with the integration modification.
    #   @return [Array<Types::IntegrationError>]
    #
    # @!attribute [rw] data_filter
    #   Selects source tables for the integration using Maxwell filter
    #   syntax.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ModifyIntegrationResponse AWS API Documentation
    #
    class ModifyIntegrationResponse < Struct.new(
      :source_arn,
      :target_arn,
      :integration_name,
      :description,
      :integration_arn,
      :kms_key_id,
      :additional_encryption_context,
      :tags,
      :status,
      :create_time,
      :errors,
      :data_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Amazon DocumentDB or MongoDB data store to crawl.
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to use to connect to the Amazon
    #   DocumentDB or MongoDB target.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path of the Amazon DocumentDB or MongoDB target
    #   (database/collection).
    #   @return [String]
    #
    # @!attribute [rw] scan_all
    #   Indicates whether to scan all the records, or to sample rows from
    #   the table. Scanning all the records can take a long time when the
    #   table is not a high throughput table.
    #
    #   A value of `true` means to scan all records, while a value of
    #   `false` means to sample the records. If no value is specified, the
    #   value defaults to `true`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MongoDBTarget AWS API Documentation
    #
    class MongoDBTarget < Struct.new(
      :connection_name,
      :path,
      :scan_all)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a MySQL data source in the Glue Data Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to read from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MySQLCatalogSource AWS API Documentation
    #
    class MySQLCatalogSource < Struct.new(
      :name,
      :database,
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target that uses MySQL.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] database
    #   The name of the database to write to.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to write to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MySQLCatalogTarget AWS API Documentation
    #
    class MySQLCatalogTarget < Struct.new(
      :name,
      :inputs,
      :database,
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is no applicable schedule.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/NoScheduleException AWS API Documentation
    #
    class NoScheduleException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A node represents an Glue component (trigger, crawler, or job) on a
    # workflow graph.
    #
    # @!attribute [rw] type
    #   The type of Glue component represented by the node.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Glue component represented by the node.
    #   @return [String]
    #
    # @!attribute [rw] unique_id
    #   The unique Id assigned to the node within the workflow.
    #   @return [String]
    #
    # @!attribute [rw] trigger_details
    #   Details of the Trigger when the node represents a Trigger.
    #   @return [Types::TriggerNodeDetails]
    #
    # @!attribute [rw] job_details
    #   Details of the Job when the node represents a Job.
    #   @return [Types::JobNodeDetails]
    #
    # @!attribute [rw] crawler_details
    #   Details of the crawler when the node represents a crawler.
    #   @return [Types::CrawlerNodeDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Node AWS API Documentation
    #
    class Node < Struct.new(
      :type,
      :name,
      :unique_id,
      :trigger_details,
      :job_details,
      :crawler_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration properties of a notification.
    #
    # @!attribute [rw] notify_delay_after
    #   After a job run starts, the number of minutes to wait before sending
    #   a job run delay notification.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/NotificationProperty AWS API Documentation
    #
    class NotificationProperty < Struct.new(
      :notify_delay_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents whether certain values are recognized as null values for
    # removal.
    #
    # @!attribute [rw] is_empty
    #   Specifies that an empty string is considered as a null value.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_null_string
    #   Specifies that a value spelling out the word 'null' is considered
    #   as a null value.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_neg_one
    #   Specifies that an integer value of -1 is considered as a null value.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/NullCheckBoxList AWS API Documentation
    #
    class NullCheckBoxList < Struct.new(
      :is_empty,
      :is_null_string,
      :is_neg_one)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a custom null value such as a zeros or other value being
    # used as a null placeholder unique to the dataset.
    #
    # @!attribute [rw] value
    #   The value of the null placeholder.
    #   @return [String]
    #
    # @!attribute [rw] datatype
    #   The datatype of the value.
    #   @return [Types::Datatype]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/NullValueField AWS API Documentation
    #
    class NullValueField < Struct.new(
      :value,
      :datatype)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OAuth2 client app used for the connection.
    #
    # @!attribute [rw] user_managed_client_application_client_id
    #   The client application clientID if the ClientAppType is
    #   `USER_MANAGED`.
    #   @return [String]
    #
    # @!attribute [rw] aws_managed_client_application_reference
    #   The reference to the SaaS-side client app that is Amazon Web
    #   Services managed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/OAuth2ClientApplication AWS API Documentation
    #
    class OAuth2ClientApplication < Struct.new(
      :user_managed_client_application_client_id,
      :aws_managed_client_application_reference)
      SENSITIVE = []
      include Aws::Structure
    end

    # The credentials used when the authentication type is OAuth2
    # authentication.
    #
    # @!attribute [rw] user_managed_client_application_client_secret
    #   The client application client secret if the client application is
    #   user managed.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The access token used when the authentication type is OAuth2.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   The refresh token used when the authentication type is OAuth2.
    #   @return [String]
    #
    # @!attribute [rw] jwt_token
    #   The JSON Web Token (JWT) used when the authentication type is
    #   OAuth2.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/OAuth2Credentials AWS API Documentation
    #
    class OAuth2Credentials < Struct.new(
      :user_managed_client_application_client_secret,
      :access_token,
      :refresh_token,
      :jwt_token)
      SENSITIVE = [:user_managed_client_application_client_secret, :access_token, :refresh_token, :jwt_token]
      include Aws::Structure
    end

    # A structure containing properties for OAuth2 authentication.
    #
    # @!attribute [rw] o_auth_2_grant_type
    #   The OAuth2 grant type. For example, `AUTHORIZATION_CODE`,
    #   `JWT_BEARER`, or `CLIENT_CREDENTIALS`.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_2_client_application
    #   The client application type. For example, AWS\_MANAGED or
    #   USER\_MANAGED.
    #   @return [Types::OAuth2ClientApplication]
    #
    # @!attribute [rw] token_url
    #   The URL of the provider's authentication server, to exchange an
    #   authorization code for an access token.
    #   @return [String]
    #
    # @!attribute [rw] token_url_parameters_map
    #   A map of parameters that are added to the token `GET` request.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/OAuth2Properties AWS API Documentation
    #
    class OAuth2Properties < Struct.new(
      :o_auth_2_grant_type,
      :o_auth_2_client_application,
      :token_url,
      :token_url_parameters_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing properties for OAuth2 in the CreateConnection
    # request.
    #
    # @!attribute [rw] o_auth_2_grant_type
    #   The OAuth2 grant type in the CreateConnection request. For example,
    #   `AUTHORIZATION_CODE`, `JWT_BEARER`, or `CLIENT_CREDENTIALS`.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_2_client_application
    #   The client application type in the CreateConnection request. For
    #   example, `AWS_MANAGED` or `USER_MANAGED`.
    #   @return [Types::OAuth2ClientApplication]
    #
    # @!attribute [rw] token_url
    #   The URL of the provider's authentication server, to exchange an
    #   authorization code for an access token.
    #   @return [String]
    #
    # @!attribute [rw] token_url_parameters_map
    #   A map of parameters that are added to the token `GET` request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authorization_code_properties
    #   The set of properties required for the the OAuth2
    #   `AUTHORIZATION_CODE` grant type.
    #   @return [Types::AuthorizationCodeProperties]
    #
    # @!attribute [rw] o_auth_2_credentials
    #   The credentials used when the authentication type is OAuth2
    #   authentication.
    #   @return [Types::OAuth2Credentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/OAuth2PropertiesInput AWS API Documentation
    #
    class OAuth2PropertiesInput < Struct.new(
      :o_auth_2_grant_type,
      :o_auth_2_client_application,
      :token_url,
      :token_url_parameters_map,
      :authorization_code_properties,
      :o_auth_2_credentials)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure representing an open format table.
    #
    # @!attribute [rw] iceberg_input
    #   Specifies an `IcebergInput` structure that defines an Apache Iceberg
    #   metadata table.
    #   @return [Types::IcebergInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/OpenTableFormatInput AWS API Documentation
    #
    class OpenTableFormatInput < Struct.new(
      :iceberg_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation is not available in the region.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/OperationNotSupportedException AWS API Documentation
    #
    class OperationNotSupportedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation timed out.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/OperationTimeoutException AWS API Documentation
    #
    class OperationTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an option value.
    #
    # @!attribute [rw] value
    #   Specifies the value of the option.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   Specifies the label of the option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Specifies the description of the option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Option AWS API Documentation
    #
    class Option < Struct.new(
      :value,
      :label,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Oracle data source in the Glue Data Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to read from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/OracleSQLCatalogSource AWS API Documentation
    #
    class OracleSQLCatalogSource < Struct.new(
      :name,
      :database,
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target that uses Oracle SQL.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] database
    #   The name of the database to write to.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to write to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/OracleSQLCatalogTarget AWS API Documentation
    #
    class OracleSQLCatalogTarget < Struct.new(
      :name,
      :inputs,
      :database,
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the sort order of a sorted column.
    #
    # @!attribute [rw] column
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Indicates that the column is sorted in ascending order (`== 1`), or
    #   in descending order (`==0`).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Order AWS API Documentation
    #
    class Order < Struct.new(
      :column,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an orphan file deletion optimizer.
    #
    # @!attribute [rw] iceberg_configuration
    #   The configuration for an Iceberg orphan file deletion optimizer.
    #   @return [Types::IcebergOrphanFileDeletionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/OrphanFileDeletionConfiguration AWS API Documentation
    #
    class OrphanFileDeletionConfiguration < Struct.new(
      :iceberg_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains orphan file deletion metrics for the
    # optimizer run.
    #
    # @!attribute [rw] iceberg_metrics
    #   A structure containing the Iceberg orphan file deletion metrics for
    #   the optimizer run.
    #   @return [Types::IcebergOrphanFileDeletionMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/OrphanFileDeletionMetrics AWS API Documentation
    #
    class OrphanFileDeletionMetrics < Struct.new(
      :iceberg_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing other metadata for a schema version belonging
    # to the same metadata key.
    #
    # @!attribute [rw] metadata_value
    #   The metadata key’s corresponding value for the other metadata
    #   belonging to the same metadata key.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time at which the entry was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/OtherMetadataValueListItem AWS API Documentation
    #
    class OtherMetadataValueListItem < Struct.new(
      :metadata_value,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that identifies, removes or masks PII data.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The node ID inputs to the transform.
    #   @return [Array<String>]
    #
    # @!attribute [rw] pii_type
    #   Indicates the type of PIIDetection transform.
    #   @return [String]
    #
    # @!attribute [rw] entity_types_to_detect
    #   Indicates the types of entities the PIIDetection transform will
    #   identify as PII data.
    #
    #   PII type entities include: PERSON\_NAME, DATE, USA\_SNN, EMAIL,
    #   USA\_ITIN, USA\_PASSPORT\_NUMBER, PHONE\_NUMBER, BANK\_ACCOUNT,
    #   IP\_ADDRESS, MAC\_ADDRESS, USA\_CPT\_CODE, USA\_HCPCS\_CODE,
    #   USA\_NATIONAL\_DRUG\_CODE, USA\_MEDICARE\_BENEFICIARY\_IDENTIFIER,
    #   USA\_HEALTH\_INSURANCE\_CLAIM\_NUMBER,CREDIT\_CARD,USA\_NATIONAL\_PROVIDER\_IDENTIFIER,USA\_DEA\_NUMBER,USA\_DRIVING\_LICENSE
    #   @return [Array<String>]
    #
    # @!attribute [rw] output_column_name
    #   Indicates the output column name that will contain any entity type
    #   detected in that row.
    #   @return [String]
    #
    # @!attribute [rw] sample_fraction
    #   Indicates the fraction of the data to sample when scanning for PII
    #   entities.
    #   @return [Float]
    #
    # @!attribute [rw] threshold_fraction
    #   Indicates the fraction of the data that must be met in order for a
    #   column to be identified as PII data.
    #   @return [Float]
    #
    # @!attribute [rw] mask_value
    #   Indicates the value that will replace the detected entity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PIIDetection AWS API Documentation
    #
    class PIIDetection < Struct.new(
      :name,
      :inputs,
      :pii_type,
      :entity_types_to_detect,
      :output_column_name,
      :sample_fraction,
      :threshold_fraction,
      :mask_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a slice of table data.
    #
    # @!attribute [rw] values
    #   The values of the partition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which to create the partition.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the database table in which to create the partition.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the partition was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_access_time
    #   The last time at which the partition was accessed.
    #   @return [Time]
    #
    # @!attribute [rw] storage_descriptor
    #   Provides information about the physical location where the partition
    #   is stored.
    #   @return [Types::StorageDescriptor]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define partition parameters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_analyzed_time
    #   The last time at which column statistics were computed for this
    #   partition.
    #   @return [Time]
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the partition resides.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Partition AWS API Documentation
    #
    class Partition < Struct.new(
      :values,
      :database_name,
      :table_name,
      :creation_time,
      :last_access_time,
      :storage_descriptor,
      :parameters,
      :last_analyzed_time,
      :catalog_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a partition error.
    #
    # @!attribute [rw] partition_values
    #   The values that define the partition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] error_detail
    #   The details about the partition error.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PartitionError AWS API Documentation
    #
    class PartitionError < Struct.new(
      :partition_values,
      :error_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for a partition index.
    #
    # @!attribute [rw] keys
    #   The keys for the partition index.
    #   @return [Array<String>]
    #
    # @!attribute [rw] index_name
    #   The name of the partition index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PartitionIndex AWS API Documentation
    #
    class PartitionIndex < Struct.new(
      :keys,
      :index_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A descriptor for a partition index in a table.
    #
    # @!attribute [rw] index_name
    #   The name of the partition index.
    #   @return [String]
    #
    # @!attribute [rw] keys
    #   A list of one or more keys, as `KeySchemaElement` structures, for
    #   the partition index.
    #   @return [Array<Types::KeySchemaElement>]
    #
    # @!attribute [rw] index_status
    #   The status of the partition index.
    #
    #   The possible statuses are:
    #
    #   * CREATING: The index is being created. When an index is in a
    #     CREATING state, the index or its table cannot be deleted.
    #
    #   * ACTIVE: The index creation succeeds.
    #
    #   * FAILED: The index creation fails.
    #
    #   * DELETING: The index is deleted from the list of indexes.
    #   @return [String]
    #
    # @!attribute [rw] backfill_errors
    #   A list of errors that can occur when registering partition indexes
    #   for an existing table.
    #   @return [Array<Types::BackfillError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PartitionIndexDescriptor AWS API Documentation
    #
    class PartitionIndexDescriptor < Struct.new(
      :index_name,
      :keys,
      :index_status,
      :backfill_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure used to create and update a partition.
    #
    # @!attribute [rw] values
    #   The values of the partition. Although this parameter is not required
    #   by the SDK, you must specify this parameter for a valid input.
    #
    #   The values for the keys for the new partition must be passed as an
    #   array of String objects that must be ordered in the same order as
    #   the partition keys appearing in the Amazon S3 prefix. Otherwise Glue
    #   will add the values to the wrong keys.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_access_time
    #   The last time at which the partition was accessed.
    #   @return [Time]
    #
    # @!attribute [rw] storage_descriptor
    #   Provides information about the physical location where the partition
    #   is stored.
    #   @return [Types::StorageDescriptor]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define partition parameters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_analyzed_time
    #   The last time at which column statistics were computed for this
    #   partition.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PartitionInput AWS API Documentation
    #
    class PartitionInput < Struct.new(
      :values,
      :last_access_time,
      :storage_descriptor,
      :parameters,
      :last_analyzed_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a list of values defining partitions.
    #
    # @!attribute [rw] values
    #   The list of values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PartitionValueList AWS API Documentation
    #
    class PartitionValueList < Struct.new(
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation timed out.
    #
    # @!attribute [rw] message
    #   There is a mismatch between the SupportedPermissionType used in the
    #   query request and the permissions defined on the target table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PermissionTypeMismatchException AWS API Documentation
    #
    class PermissionTypeMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OAuth client app in GetConnection response.
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID used by the connection.
    #   @return [String]
    #
    # @!attribute [rw] security_group_id_list
    #   The security group ID list used by the connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The connection's Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PhysicalConnectionRequirements AWS API Documentation
    #
    class PhysicalConnectionRequirements < Struct.new(
      :subnet_id,
      :security_group_id_list,
      :availability_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a PostgresSQL data source in the Glue Data Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to read from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PostgreSQLCatalogSource AWS API Documentation
    #
    class PostgreSQLCatalogSource < Struct.new(
      :name,
      :database,
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target that uses Postgres SQL.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] database
    #   The name of the database to write to.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to write to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PostgreSQLCatalogTarget AWS API Documentation
    #
    class PostgreSQLCatalogTarget < Struct.new(
      :name,
      :inputs,
      :database,
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # A job run that was used in the predicate of a conditional trigger that
    # triggered this job run.
    #
    # @!attribute [rw] job_name
    #   The name of the job definition used by the predecessor job run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The job-run ID of the predecessor job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Predecessor AWS API Documentation
    #
    class Predecessor < Struct.new(
      :job_name,
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the predicate of the trigger, which determines when it fires.
    #
    # @!attribute [rw] logical
    #   An optional field if only one condition is listed. If multiple
    #   conditions are listed, then this field is required.
    #   @return [String]
    #
    # @!attribute [rw] conditions
    #   A list of the conditions that determine when the trigger will fire.
    #   @return [Array<Types::Condition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Predicate AWS API Documentation
    #
    class Predicate < Struct.new(
      :logical,
      :conditions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Permissions granted to a principal.
    #
    # @!attribute [rw] principal
    #   The principal who is granted permissions.
    #   @return [Types::DataLakePrincipal]
    #
    # @!attribute [rw] permissions
    #   The permissions that are granted to the principal.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PrincipalPermissions AWS API Documentation
    #
    class PrincipalPermissions < Struct.new(
      :principal,
      :permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the job and session values that an admin configures in an
    # Glue usage profile.
    #
    # @!attribute [rw] session_configuration
    #   A key-value map of configuration parameters for Glue sessions.
    #   @return [Hash<String,Types::ConfigurationObject>]
    #
    # @!attribute [rw] job_configuration
    #   A key-value map of configuration parameters for Glue jobs.
    #   @return [Hash<String,Types::ConfigurationObject>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ProfileConfiguration AWS API Documentation
    #
    class ProfileConfiguration < Struct.new(
      :session_configuration,
      :job_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines a connection type for a compute environment.
    #
    # @!attribute [rw] name
    #   The name of the property.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the property.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   Indicates whether the property is required.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_value
    #   The default value for the property.
    #   @return [String]
    #
    # @!attribute [rw] property_types
    #   Describes the type of property.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_values
    #   A list of `AllowedValue` objects representing the values allowed for
    #   the property.
    #   @return [Array<Types::AllowedValue>]
    #
    # @!attribute [rw] data_operation_scopes
    #   Indicates which data operations are applicable to the property.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Property AWS API Documentation
    #
    class Property < Struct.new(
      :name,
      :description,
      :required,
      :default_value,
      :property_types,
      :allowed_values,
      :data_operation_scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a property predicate.
    #
    # @!attribute [rw] key
    #   The key of the property.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the property.
    #   @return [String]
    #
    # @!attribute [rw] comparator
    #   The comparator used to compare this property to others.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PropertyPredicate AWS API Documentation
    #
    class PropertyPredicate < Struct.new(
      :key,
      :value,
      :comparator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog to set the security configuration for. If
    #   none is provided, the Amazon Web Services account ID is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] data_catalog_encryption_settings
    #   The security configuration to set.
    #   @return [Types::DataCatalogEncryptionSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutDataCatalogEncryptionSettingsRequest AWS API Documentation
    #
    class PutDataCatalogEncryptionSettingsRequest < Struct.new(
      :catalog_id,
      :data_catalog_encryption_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutDataCatalogEncryptionSettingsResponse AWS API Documentation
    #
    class PutDataCatalogEncryptionSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] profile_id
    #   The ID of the data quality monitoring profile to annotate.
    #   @return [String]
    #
    # @!attribute [rw] inclusion_annotation
    #   The inclusion annotation value to apply to the profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutDataQualityProfileAnnotationRequest AWS API Documentation
    #
    class PutDataQualityProfileAnnotationRequest < Struct.new(
      :profile_id,
      :inclusion_annotation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Left blank.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutDataQualityProfileAnnotationResponse AWS API Documentation
    #
    class PutDataQualityProfileAnnotationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] policy_in_json
    #   Contains the policy document to set, in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   Do not use. For internal use only.
    #   @return [String]
    #
    # @!attribute [rw] policy_hash_condition
    #   The hash value returned when the previous policy was set using
    #   `PutResourcePolicy`. Its purpose is to prevent concurrent
    #   modifications of a policy. Do not use this parameter if no previous
    #   policy has been set.
    #   @return [String]
    #
    # @!attribute [rw] policy_exists_condition
    #   A value of `MUST_EXIST` is used to update a policy. A value of
    #   `NOT_EXIST` is used to create a new policy. If a value of `NONE` or
    #   a null value is used, the call does not depend on the existence of a
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] enable_hybrid
    #   If `'TRUE'`, indicates that you are using both methods to grant
    #   cross-account access to Data Catalog resources:
    #
    #   * By directly updating the resource policy with `PutResourePolicy`
    #
    #   * By using the **Grant permissions** command on the Amazon Web
    #     Services Management Console.
    #
    #   Must be set to `'TRUE'` if you have already used the Management
    #   Console to grant cross-account access, otherwise the call fails.
    #   Default is 'FALSE'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :policy_in_json,
      :resource_arn,
      :policy_hash_condition,
      :policy_exists_condition,
      :enable_hybrid)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_hash
    #   A hash of the policy that has just been set. This must be included
    #   in a subsequent call that overwrites or updates this policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :policy_hash)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_id
    #   The unique ID for the schema.
    #   @return [Types::SchemaId]
    #
    # @!attribute [rw] schema_version_number
    #   The version number of the schema.
    #   @return [Types::SchemaVersionNumber]
    #
    # @!attribute [rw] schema_version_id
    #   The unique version ID of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] metadata_key_value
    #   The metadata key's corresponding value.
    #   @return [Types::MetadataKeyValuePair]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutSchemaVersionMetadataInput AWS API Documentation
    #
    class PutSchemaVersionMetadataInput < Struct.new(
      :schema_id,
      :schema_version_number,
      :schema_version_id,
      :metadata_key_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) for the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name for the schema.
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   The name for the registry.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The latest version of the schema.
    #   @return [Boolean]
    #
    # @!attribute [rw] version_number
    #   The version number of the schema.
    #   @return [Integer]
    #
    # @!attribute [rw] schema_version_id
    #   The unique version ID of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] metadata_key
    #   The metadata key.
    #   @return [String]
    #
    # @!attribute [rw] metadata_value
    #   The value of the metadata key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutSchemaVersionMetadataResponse AWS API Documentation
    #
    class PutSchemaVersionMetadataResponse < Struct.new(
      :schema_arn,
      :schema_name,
      :registry_name,
      :latest_version,
      :version_number,
      :schema_version_id,
      :metadata_key,
      :metadata_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of the workflow which was run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The ID of the workflow run for which the run properties should be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] run_properties
    #   The properties to put for the specified run.
    #
    #   Run properties may be logged. Do not pass plaintext secrets as
    #   properties. Retrieve secrets from a Glue Connection, Amazon Web
    #   Services Secrets Manager or other secret management mechanism if you
    #   intend to use them within the workflow run.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutWorkflowRunPropertiesRequest AWS API Documentation
    #
    class PutWorkflowRunPropertiesRequest < Struct.new(
      :name,
      :run_id,
      :run_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutWorkflowRunPropertiesResponse AWS API Documentation
    #
    class PutWorkflowRunPropertiesResponse < Aws::EmptyStructure; end

    # @!attribute [rw] schema_id
    #   A wrapper structure that may contain the schema name and Amazon
    #   Resource Name (ARN).
    #   @return [Types::SchemaId]
    #
    # @!attribute [rw] schema_version_number
    #   The version number of the schema.
    #   @return [Types::SchemaVersionNumber]
    #
    # @!attribute [rw] schema_version_id
    #   The unique version ID of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] metadata_list
    #   Search key-value pairs for metadata, if they are not provided all
    #   the metadata information will be fetched.
    #   @return [Array<Types::MetadataKeyValuePair>]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results required per page. If the value is not
    #   supplied, this will be defaulted to 25 per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/QuerySchemaVersionMetadataInput AWS API Documentation
    #
    class QuerySchemaVersionMetadataInput < Struct.new(
      :schema_id,
      :schema_version_number,
      :schema_version_id,
      :metadata_list,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metadata_info_map
    #   A map of a metadata key and associated values.
    #   @return [Hash<String,Types::MetadataInfo>]
    #
    # @!attribute [rw] schema_version_id
    #   The unique version ID of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token for paginating the returned list of tokens,
    #   returned if the current segment of the list is not the last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/QuerySchemaVersionMetadataResponse AWS API Documentation
    #
    class QuerySchemaVersionMetadataResponse < Struct.new(
      :metadata_info_map,
      :schema_version_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure used as a protocol between query engines and Lake
    # Formation or Glue. Contains both a Lake Formation generated
    # authorization identifier and information from the request's
    # authorization context.
    #
    # @!attribute [rw] query_id
    #   A unique identifier generated by the query engine for the query.
    #   @return [String]
    #
    # @!attribute [rw] query_start_time
    #   A timestamp provided by the query engine for when the query started.
    #   @return [Time]
    #
    # @!attribute [rw] cluster_id
    #   An identifier string for the consumer cluster.
    #   @return [String]
    #
    # @!attribute [rw] query_authorization_id
    #   A cryptographically generated query identifier generated by Glue or
    #   Lake Formation.
    #   @return [String]
    #
    # @!attribute [rw] additional_context
    #   An opaque string-string map passed by the query engine.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/QuerySessionContext AWS API Documentation
    #
    class QuerySessionContext < Struct.new(
      :query_id,
      :query_start_time,
      :cluster_id,
      :query_authorization_id,
      :additional_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Glue Studio node that uses a Glue DataBrew recipe in Glue jobs.
    #
    # @!attribute [rw] name
    #   The name of the Glue Studio node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the recipe node, identified by id.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recipe_reference
    #   A reference to the DataBrew recipe used by the node.
    #   @return [Types::RecipeReference]
    #
    # @!attribute [rw] recipe_steps
    #   Transform steps used in the recipe node.
    #   @return [Array<Types::RecipeStep>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Recipe AWS API Documentation
    #
    class Recipe < Struct.new(
      :name,
      :inputs,
      :recipe_reference,
      :recipe_steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Actions defined in the Glue Studio data preparation recipe node.
    #
    # @!attribute [rw] operation
    #   The operation of the recipe action.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters of the recipe action.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RecipeAction AWS API Documentation
    #
    class RecipeAction < Struct.new(
      :operation,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to a Glue DataBrew recipe.
    #
    # @!attribute [rw] recipe_arn
    #   The ARN of the DataBrew recipe.
    #   @return [String]
    #
    # @!attribute [rw] recipe_version
    #   The RecipeVersion of the DataBrew recipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RecipeReference AWS API Documentation
    #
    class RecipeReference < Struct.new(
      :recipe_arn,
      :recipe_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A recipe step used in a Glue Studio data preparation recipe node.
    #
    # @!attribute [rw] action
    #   The transformation action of the recipe step.
    #   @return [Types::RecipeAction]
    #
    # @!attribute [rw] condition_expressions
    #   The condition expressions for the recipe step.
    #   @return [Array<Types::ConditionExpression>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RecipeStep AWS API Documentation
    #
    class RecipeStep < Struct.new(
      :action,
      :condition_expressions)
      SENSITIVE = []
      include Aws::Structure
    end

    # When crawling an Amazon S3 data source after the first crawl is
    # complete, specifies whether to crawl the entire dataset again or to
    # crawl only folders that were added since the last crawler run. For
    # more information, see [Incremental Crawls in Glue][1] in the developer
    # guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/incremental-crawls.html
    #
    # @!attribute [rw] recrawl_behavior
    #   Specifies whether to crawl the entire dataset again or to crawl only
    #   folders that were added since the last crawler run.
    #
    #   A value of `CRAWL_EVERYTHING` specifies crawling the entire dataset
    #   again.
    #
    #   A value of `CRAWL_NEW_FOLDERS_ONLY` specifies crawling only folders
    #   that were added since the last crawler run.
    #
    #   A value of `CRAWL_EVENT_MODE` specifies crawling only the changes
    #   identified by Amazon S3 events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RecrawlPolicy AWS API Documentation
    #
    class RecrawlPolicy < Struct.new(
      :recrawl_behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Amazon Redshift data store.
    #
    # @!attribute [rw] name
    #   The name of the Amazon Redshift data store.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The database to read from.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The database table to read from.
    #   @return [String]
    #
    # @!attribute [rw] redshift_tmp_dir
    #   The Amazon S3 path where temporary data can be staged when copying
    #   out of the database.
    #   @return [String]
    #
    # @!attribute [rw] tmp_dir_iam_role
    #   The IAM role with permissions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RedshiftSource AWS API Documentation
    #
    class RedshiftSource < Struct.new(
      :name,
      :database,
      :table,
      :redshift_tmp_dir,
      :tmp_dir_iam_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target that uses Amazon Redshift.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] database
    #   The name of the database to write to.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to write to.
    #   @return [String]
    #
    # @!attribute [rw] redshift_tmp_dir
    #   The Amazon S3 path where temporary data can be staged when copying
    #   out of the database.
    #   @return [String]
    #
    # @!attribute [rw] tmp_dir_iam_role
    #   The IAM role with permissions.
    #   @return [String]
    #
    # @!attribute [rw] upsert_redshift_options
    #   The set of options to configure an upsert operation when writing to
    #   a Redshift target.
    #   @return [Types::UpsertRedshiftTargetOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RedshiftTarget AWS API Documentation
    #
    class RedshiftTarget < Struct.new(
      :name,
      :inputs,
      :database,
      :table,
      :redshift_tmp_dir,
      :tmp_dir_iam_role,
      :upsert_redshift_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_id
    #   This is a wrapper structure to contain schema identity fields. The
    #   structure contains:
    #
    #   * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    #     Either `SchemaArn` or `SchemaName` and `RegistryName` has to be
    #     provided.
    #
    #   * SchemaId$SchemaName: The name of the schema. Either `SchemaArn` or
    #     `SchemaName` and `RegistryName` has to be provided.
    #   @return [Types::SchemaId]
    #
    # @!attribute [rw] schema_definition
    #   The schema definition using the `DataFormat` setting for the
    #   `SchemaName`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RegisterSchemaVersionInput AWS API Documentation
    #
    class RegisterSchemaVersionInput < Struct.new(
      :schema_id,
      :schema_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_version_id
    #   The unique ID that represents the version of this schema.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version of this schema (for sync flow only, in case this is the
    #   first version).
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the schema version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RegisterSchemaVersionResponse AWS API Documentation
    #
    class RegisterSchemaVersionResponse < Struct.new(
      :schema_version_id,
      :version_number,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A wrapper structure that may contain the registry name and Amazon
    # Resource Name (ARN).
    #
    # @!attribute [rw] registry_name
    #   Name of the registry. Used only for lookup. One of `RegistryArn` or
    #   `RegistryName` has to be provided.
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   Arn of the registry to be updated. One of `RegistryArn` or
    #   `RegistryName` has to be provided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RegistryId AWS API Documentation
    #
    class RegistryId < Struct.new(
      :registry_name,
      :registry_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the details for a registry.
    #
    # @!attribute [rw] registry_name
    #   The name of the registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the registry.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the registry.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the registry.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The data the registry was created.
    #   @return [String]
    #
    # @!attribute [rw] updated_time
    #   The date the registry was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RegistryListItem AWS API Documentation
    #
    class RegistryListItem < Struct.new(
      :registry_name,
      :registry_arn,
      :description,
      :status,
      :created_time,
      :updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a Relational database data source in the Glue Data Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to read from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RelationalCatalogSource AWS API Documentation
    #
    class RelationalCatalogSource < Struct.new(
      :name,
      :database,
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_id
    #   A wrapper structure that may contain the schema name and Amazon
    #   Resource Name (ARN).
    #   @return [Types::SchemaId]
    #
    # @!attribute [rw] schema_version_number
    #   The version number of the schema.
    #   @return [Types::SchemaVersionNumber]
    #
    # @!attribute [rw] schema_version_id
    #   The unique version ID of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] metadata_key_value
    #   The value of the metadata key.
    #   @return [Types::MetadataKeyValuePair]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RemoveSchemaVersionMetadataInput AWS API Documentation
    #
    class RemoveSchemaVersionMetadataInput < Struct.new(
      :schema_id,
      :schema_version_number,
      :schema_version_id,
      :metadata_key_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   The name of the registry.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The latest version of the schema.
    #   @return [Boolean]
    #
    # @!attribute [rw] version_number
    #   The version number of the schema.
    #   @return [Integer]
    #
    # @!attribute [rw] schema_version_id
    #   The version ID for the schema version.
    #   @return [String]
    #
    # @!attribute [rw] metadata_key
    #   The metadata key.
    #   @return [String]
    #
    # @!attribute [rw] metadata_value
    #   The value of the metadata key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RemoveSchemaVersionMetadataResponse AWS API Documentation
    #
    class RemoveSchemaVersionMetadataResponse < Struct.new(
      :schema_arn,
      :schema_name,
      :registry_name,
      :latest_version,
      :version_number,
      :schema_version_id,
      :metadata_key,
      :metadata_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that renames a single data property key.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_path
    #   A JSON path to a variable in the data structure for the source data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_path
    #   A JSON path to a variable in the data structure for the target data.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RenameField AWS API Documentation
    #
    class RenameField < Struct.new(
      :name,
      :inputs,
      :source_path,
      :target_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the job in question.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique run identifier associated with this job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResetJobBookmarkRequest AWS API Documentation
    #
    class ResetJobBookmarkRequest < Struct.new(
      :job_name,
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_bookmark_entry
    #   The reset bookmark entry.
    #   @return [Types::JobBookmarkEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResetJobBookmarkResponse AWS API Documentation
    #
    class ResetJobBookmarkResponse < Struct.new(
      :job_bookmark_entry)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource could not be found.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource was not ready for a transaction.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResourceNotReadyException AWS API Documentation
    #
    class ResourceNotReadyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource numerical limit was exceeded.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResourceNumberLimitExceededException AWS API Documentation
    #
    class ResourceNumberLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The URIs for function resources.
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI for accessing the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResourceUri AWS API Documentation
    #
    class ResourceUri < Struct.new(
      :resource_type,
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workflow to resume.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The ID of the workflow run to resume.
    #   @return [String]
    #
    # @!attribute [rw] node_ids
    #   A list of the node IDs for the nodes you want to restart. The nodes
    #   that are to be restarted must have a run attempt in the original
    #   run.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResumeWorkflowRunRequest AWS API Documentation
    #
    class ResumeWorkflowRunRequest < Struct.new(
      :name,
      :run_id,
      :node_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] run_id
    #   The new ID assigned to the resumed workflow run. Each resume of a
    #   workflow run will have a new run ID.
    #   @return [String]
    #
    # @!attribute [rw] node_ids
    #   A list of the node IDs for the nodes that were actually restarted.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResumeWorkflowRunResponse AWS API Documentation
    #
    class ResumeWorkflowRunResponse < Struct.new(
      :run_id,
      :node_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a snapshot retention optimizer.
    #
    # @!attribute [rw] iceberg_configuration
    #   The configuration for an Iceberg snapshot retention optimizer.
    #   @return [Types::IcebergRetentionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RetentionConfiguration AWS API Documentation
    #
    class RetentionConfiguration < Struct.new(
      :iceberg_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains retention metrics for the optimizer run.
    #
    # @!attribute [rw] iceberg_metrics
    #   A structure containing the Iceberg retention metrics for the
    #   optimizer run.
    #   @return [Types::IcebergRetentionMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RetentionMetrics AWS API Documentation
    #
    class RetentionMetrics < Struct.new(
      :iceberg_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # A run identifier.
    #
    # @!attribute [rw] run_id
    #   The Run ID.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The Job Run ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RunIdentifier AWS API Documentation
    #
    class RunIdentifier < Struct.new(
      :run_id,
      :job_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metrics for the optimizer run.
    #
    # This structure is deprecated. See the individual metric members for
    # compaction, retention, and orphan file deletion.
    #
    # @!attribute [rw] number_of_bytes_compacted
    #   The number of bytes removed by the compaction job run.
    #   @return [String]
    #
    # @!attribute [rw] number_of_files_compacted
    #   The number of files removed by the compaction job run.
    #   @return [String]
    #
    # @!attribute [rw] number_of_dpus
    #   The number of DPUs consumed by the job, rounded up to the nearest
    #   whole number.
    #   @return [String]
    #
    # @!attribute [rw] job_duration_in_hour
    #   The duration of the job in hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RunMetrics AWS API Documentation
    #
    class RunMetrics < Struct.new(
      :number_of_bytes_compacted,
      :number_of_files_compacted,
      :number_of_dpus,
      :job_duration_in_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The Session Id of the statement to be run.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The statement code to be run.
    #   @return [String]
    #
    # @!attribute [rw] request_origin
    #   The origin of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RunStatementRequest AWS API Documentation
    #
    class RunStatementRequest < Struct.new(
      :session_id,
      :code,
      :request_origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Returns the Id of the statement that was run.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RunStatementResponse AWS API Documentation
    #
    class RunStatementResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a Delta Lake data source that is registered in the Glue Data
    # Catalog. The data source must be stored in Amazon S3.
    #
    # @!attribute [rw] name
    #   The name of the Delta Lake data source.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] additional_delta_options
    #   Specifies additional connection options.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the Delta Lake source.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3CatalogDeltaSource AWS API Documentation
    #
    class S3CatalogDeltaSource < Struct.new(
      :name,
      :database,
      :table,
      :additional_delta_options,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a Hudi data source that is registered in the Glue Data
    # Catalog. The Hudi data source must be stored in Amazon S3.
    #
    # @!attribute [rw] name
    #   The name of the Hudi data source.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to read from.
    #   @return [String]
    #
    # @!attribute [rw] additional_hudi_options
    #   Specifies additional connection options.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the Hudi source.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3CatalogHudiSource AWS API Documentation
    #
    class S3CatalogHudiSource < Struct.new(
      :name,
      :database,
      :table,
      :additional_hudi_options,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Amazon S3 data store in the Glue Data Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data store.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The database to read from.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The database table to read from.
    #   @return [String]
    #
    # @!attribute [rw] partition_predicate
    #   Partitions satisfying this predicate are deleted. Files within the
    #   retention period in these partitions are not deleted. Set to `""` –
    #   empty by default.
    #   @return [String]
    #
    # @!attribute [rw] additional_options
    #   Specifies additional connection options.
    #   @return [Types::S3SourceAdditionalOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3CatalogSource AWS API Documentation
    #
    class S3CatalogSource < Struct.new(
      :name,
      :database,
      :table,
      :partition_predicate,
      :additional_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a data target that writes to Amazon S3 using the Glue Data
    # Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_keys
    #   Specifies native partitioning using a sequence of keys.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to write to.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to write to.
    #   @return [String]
    #
    # @!attribute [rw] schema_change_policy
    #   A policy that specifies update behavior for the crawler.
    #   @return [Types::CatalogSchemaChangePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3CatalogTarget AWS API Documentation
    #
    class S3CatalogTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :table,
      :database,
      :schema_change_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a command-separated value (CSV) data store stored in Amazon
    # S3.
    #
    # @!attribute [rw] name
    #   The name of the data store.
    #   @return [String]
    #
    # @!attribute [rw] paths
    #   A list of the Amazon S3 paths to read from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compression_type
    #   Specifies how the data is compressed. This is generally not
    #   necessary if the data has a standard file extension. Possible values
    #   are `"gzip"` and `"bzip"`).
    #   @return [String]
    #
    # @!attribute [rw] exclusions
    #   A string containing a JSON list of Unix-style glob patterns to
    #   exclude. For example, "\[\\"**.pdf\\"\]" excludes all PDF
    #   files.
    #   @return [Array<String>]
    #
    # @!attribute [rw] group_size
    #   The target group size in bytes. The default is computed based on the
    #   input data size and the size of your cluster. When there are fewer
    #   than 50,000 input files, `"groupFiles"` must be set to
    #   `"inPartition"` for this to take effect.
    #   @return [String]
    #
    # @!attribute [rw] group_files
    #   Grouping files is turned on by default when the input contains more
    #   than 50,000 files. To turn on grouping with fewer than 50,000 files,
    #   set this parameter to "inPartition". To disable grouping when
    #   there are more than 50,000 files, set this parameter to `"none"`.
    #   @return [String]
    #
    # @!attribute [rw] recurse
    #   If set to true, recursively reads files in all subdirectories under
    #   the specified paths.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_band
    #   This option controls the duration in milliseconds after which the s3
    #   listing is likely to be consistent. Files with modification
    #   timestamps falling within the last maxBand milliseconds are tracked
    #   specially when using JobBookmarks to account for Amazon S3 eventual
    #   consistency. Most users don't need to set this option. The default
    #   is 900000 milliseconds, or 15 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] max_files_in_band
    #   This option specifies the maximum number of files to save from the
    #   last maxBand seconds. If this number is exceeded, extra files are
    #   skipped and only processed in the next job run.
    #   @return [Integer]
    #
    # @!attribute [rw] additional_options
    #   Specifies additional connection options.
    #   @return [Types::S3DirectSourceAdditionalOptions]
    #
    # @!attribute [rw] separator
    #   Specifies the delimiter character. The default is a comma: ",",
    #   but any other character can be specified.
    #   @return [String]
    #
    # @!attribute [rw] escaper
    #   Specifies a character to use for escaping. This option is used only
    #   when reading CSV files. The default value is `none`. If enabled, the
    #   character which immediately follows is used as-is, except for a
    #   small set of well-known escapes (`\n`, `\r`, `\t`, and `\0`).
    #   @return [String]
    #
    # @!attribute [rw] quote_char
    #   Specifies the character to use for quoting. The default is a double
    #   quote: `'"'`. Set this to `-1` to turn off quoting entirely.
    #   @return [String]
    #
    # @!attribute [rw] multiline
    #   A Boolean value that specifies whether a single record can span
    #   multiple lines. This can occur when a field contains a quoted
    #   new-line character. You must set this option to True if any record
    #   spans multiple lines. The default value is `False`, which allows for
    #   more aggressive file-splitting during parsing.
    #   @return [Boolean]
    #
    # @!attribute [rw] with_header
    #   A Boolean value that specifies whether to treat the first line as a
    #   header. The default value is `False`.
    #   @return [Boolean]
    #
    # @!attribute [rw] write_header
    #   A Boolean value that specifies whether to write the header to
    #   output. The default value is `True`.
    #   @return [Boolean]
    #
    # @!attribute [rw] skip_first
    #   A Boolean value that specifies whether to skip the first data line.
    #   The default value is `False`.
    #   @return [Boolean]
    #
    # @!attribute [rw] optimize_performance
    #   A Boolean value that specifies whether to use the advanced SIMD CSV
    #   reader along with Apache Arrow based columnar memory formats. Only
    #   available in Glue version 3.0.
    #   @return [Boolean]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the S3 CSV source.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3CsvSource AWS API Documentation
    #
    class S3CsvSource < Struct.new(
      :name,
      :paths,
      :compression_type,
      :exclusions,
      :group_size,
      :group_files,
      :recurse,
      :max_band,
      :max_files_in_band,
      :additional_options,
      :separator,
      :escaper,
      :quote_char,
      :multiline,
      :with_header,
      :write_header,
      :skip_first,
      :optimize_performance,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target that writes to a Delta Lake data source in the Glue
    # Data Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_keys
    #   Specifies native partitioning using a sequence of keys.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to write to.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to write to.
    #   @return [String]
    #
    # @!attribute [rw] additional_options
    #   Specifies additional connection options for the connector.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] schema_change_policy
    #   A policy that specifies update behavior for the crawler.
    #   @return [Types::CatalogSchemaChangePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3DeltaCatalogTarget AWS API Documentation
    #
    class S3DeltaCatalogTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :table,
      :database,
      :additional_options,
      :schema_change_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target that writes to a Delta Lake data source in Amazon
    # S3.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_keys
    #   Specifies native partitioning using a sequence of keys.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] path
    #   The Amazon S3 path of your Delta Lake data source to write to.
    #   @return [String]
    #
    # @!attribute [rw] compression
    #   Specifies how the data is compressed. This is generally not
    #   necessary if the data has a standard file extension. Possible values
    #   are `"gzip"` and `"bzip"`).
    #   @return [String]
    #
    # @!attribute [rw] number_target_partitions
    #   Specifies the number of target partitions for distributing Delta
    #   Lake dataset files across Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Specifies the data output format for the target.
    #   @return [String]
    #
    # @!attribute [rw] additional_options
    #   Specifies additional connection options for the connector.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] schema_change_policy
    #   A policy that specifies update behavior for the crawler.
    #   @return [Types::DirectSchemaChangePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3DeltaDirectTarget AWS API Documentation
    #
    class S3DeltaDirectTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :path,
      :compression,
      :number_target_partitions,
      :format,
      :additional_options,
      :schema_change_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a Delta Lake data source stored in Amazon S3.
    #
    # @!attribute [rw] name
    #   The name of the Delta Lake source.
    #   @return [String]
    #
    # @!attribute [rw] paths
    #   A list of the Amazon S3 paths to read from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_delta_options
    #   Specifies additional connection options.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] additional_options
    #   Specifies additional options for the connector.
    #   @return [Types::S3DirectSourceAdditionalOptions]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the Delta Lake source.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3DeltaSource AWS API Documentation
    #
    class S3DeltaSource < Struct.new(
      :name,
      :paths,
      :additional_delta_options,
      :additional_options,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies additional connection options for the Amazon S3 data store.
    #
    # @!attribute [rw] bounded_size
    #   Sets the upper limit for the target size of the dataset in bytes
    #   that will be processed.
    #   @return [Integer]
    #
    # @!attribute [rw] bounded_files
    #   Sets the upper limit for the target number of files that will be
    #   processed.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_sample_path
    #   Sets option to enable a sample path.
    #   @return [Boolean]
    #
    # @!attribute [rw] sample_path
    #   If enabled, specifies the sample path.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3DirectSourceAdditionalOptions AWS API Documentation
    #
    class S3DirectSourceAdditionalOptions < Struct.new(
      :bounded_size,
      :bounded_files,
      :enable_sample_path,
      :sample_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a data target that writes to Amazon S3.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_keys
    #   Specifies native partitioning using a sequence of keys.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] path
    #   A single Amazon S3 path to write to.
    #   @return [String]
    #
    # @!attribute [rw] compression
    #   Specifies how the data is compressed. This is generally not
    #   necessary if the data has a standard file extension. Possible values
    #   are `"gzip"` and `"bzip"`).
    #   @return [String]
    #
    # @!attribute [rw] number_target_partitions
    #   Specifies the number of target partitions when writing data directly
    #   to Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Specifies the data output format for the target.
    #   @return [String]
    #
    # @!attribute [rw] schema_change_policy
    #   A policy that specifies update behavior for the crawler.
    #   @return [Types::DirectSchemaChangePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3DirectTarget AWS API Documentation
    #
    class S3DirectTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :path,
      :compression,
      :number_target_partitions,
      :format,
      :schema_change_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how Amazon Simple Storage Service (Amazon S3) data should be
    # encrypted.
    #
    # @!attribute [rw] s3_encryption_mode
    #   The encryption mode to use for Amazon S3 data.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to be used to encrypt
    #   the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3Encryption AWS API Documentation
    #
    class S3Encryption < Struct.new(
      :s3_encryption_mode,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an S3 Excel data source.
    #
    # @!attribute [rw] name
    #   The name of the S3 Excel data source.
    #   @return [String]
    #
    # @!attribute [rw] paths
    #   The S3 paths where the Excel files are located.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compression_type
    #   The compression format used for the Excel files.
    #   @return [String]
    #
    # @!attribute [rw] exclusions
    #   Patterns to exclude specific files or paths from processing.
    #   @return [Array<String>]
    #
    # @!attribute [rw] group_size
    #   Defines the size of file groups for batch processing.
    #   @return [String]
    #
    # @!attribute [rw] group_files
    #   Specifies how files should be grouped for processing.
    #   @return [String]
    #
    # @!attribute [rw] recurse
    #   Indicates whether to recursively process subdirectories.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_band
    #   The maximum number of processing bands to use.
    #   @return [Integer]
    #
    # @!attribute [rw] max_files_in_band
    #   The maximum number of files to process in each band.
    #   @return [Integer]
    #
    # @!attribute [rw] additional_options
    #   Additional configuration options for S3 direct source processing.
    #   @return [Types::S3DirectSourceAdditionalOptions]
    #
    # @!attribute [rw] number_rows
    #   The number of rows to process from each Excel file.
    #   @return [Integer]
    #
    # @!attribute [rw] skip_footer
    #   The number of rows to skip at the end of each Excel file.
    #   @return [Integer]
    #
    # @!attribute [rw] output_schemas
    #   The AWS Glue schemas to apply to the processed data.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3ExcelSource AWS API Documentation
    #
    class S3ExcelSource < Struct.new(
      :name,
      :paths,
      :compression_type,
      :exclusions,
      :group_size,
      :group_files,
      :recurse,
      :max_band,
      :max_files_in_band,
      :additional_options,
      :number_rows,
      :skip_footer,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a data target that writes to Amazon S3 in Apache Parquet
    # columnar storage.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_keys
    #   Specifies native partitioning using a sequence of keys.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] path
    #   A single Amazon S3 path to write to.
    #   @return [String]
    #
    # @!attribute [rw] compression
    #   Specifies how the data is compressed. This is generally not
    #   necessary if the data has a standard file extension. Possible values
    #   are `"gzip"` and `"bzip"`).
    #   @return [String]
    #
    # @!attribute [rw] number_target_partitions
    #   Specifies the number of target partitions for Parquet files when
    #   writing to Amazon S3 using AWS Glue.
    #   @return [String]
    #
    # @!attribute [rw] schema_change_policy
    #   A policy that specifies update behavior for the crawler.
    #   @return [Types::DirectSchemaChangePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3GlueParquetTarget AWS API Documentation
    #
    class S3GlueParquetTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :path,
      :compression,
      :number_target_partitions,
      :schema_change_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target that writes to a Hudi data source in the Glue Data
    # Catalog.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_keys
    #   Specifies native partitioning using a sequence of keys.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] table
    #   The name of the table in the database to write to.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database to write to.
    #   @return [String]
    #
    # @!attribute [rw] additional_options
    #   Specifies additional connection options for the connector.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] schema_change_policy
    #   A policy that specifies update behavior for the crawler.
    #   @return [Types::CatalogSchemaChangePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3HudiCatalogTarget AWS API Documentation
    #
    class S3HudiCatalogTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :table,
      :database,
      :additional_options,
      :schema_change_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target that writes to a Hudi data source in Amazon S3.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] path
    #   The Amazon S3 path of your Hudi data source to write to.
    #   @return [String]
    #
    # @!attribute [rw] compression
    #   Specifies how the data is compressed. This is generally not
    #   necessary if the data has a standard file extension. Possible values
    #   are `"gzip"` and `"bzip"`).
    #   @return [String]
    #
    # @!attribute [rw] number_target_partitions
    #   Specifies the number of target partitions for distributing Hudi
    #   dataset files across Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] partition_keys
    #   Specifies native partitioning using a sequence of keys.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] format
    #   Specifies the data output format for the target.
    #   @return [String]
    #
    # @!attribute [rw] additional_options
    #   Specifies additional connection options for the connector.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] schema_change_policy
    #   A policy that specifies update behavior for the crawler.
    #   @return [Types::DirectSchemaChangePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3HudiDirectTarget AWS API Documentation
    #
    class S3HudiDirectTarget < Struct.new(
      :name,
      :inputs,
      :path,
      :compression,
      :number_target_partitions,
      :partition_keys,
      :format,
      :additional_options,
      :schema_change_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a Hudi data source stored in Amazon S3.
    #
    # @!attribute [rw] name
    #   The name of the Hudi source.
    #   @return [String]
    #
    # @!attribute [rw] paths
    #   A list of the Amazon S3 paths to read from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_hudi_options
    #   Specifies additional connection options.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] additional_options
    #   Specifies additional options for the connector.
    #   @return [Types::S3DirectSourceAdditionalOptions]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the Hudi source.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3HudiSource AWS API Documentation
    #
    class S3HudiSource < Struct.new(
      :name,
      :paths,
      :additional_hudi_options,
      :additional_options,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a HyperDirect data target that writes to Amazon S3.
    #
    # @!attribute [rw] name
    #   The unique identifier for the HyperDirect target node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   Specifies the input source for the HyperDirect target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_keys
    #   Defines the partitioning strategy for the output data.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] path
    #   The S3 location where the output data will be written.
    #   @return [String]
    #
    # @!attribute [rw] compression
    #   The compression type to apply to the output data.
    #   @return [String]
    #
    # @!attribute [rw] schema_change_policy
    #   Defines how schema changes are handled during write operations.
    #   @return [Types::DirectSchemaChangePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3HyperDirectTarget AWS API Documentation
    #
    class S3HyperDirectTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :path,
      :compression,
      :schema_change_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target that writes to an Iceberg data source in Amazon S3.
    #
    # @!attribute [rw] name
    #   Specifies the unique identifier for the Iceberg target node in your
    #   data pipeline.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   Defines the single input source that provides data to this Iceberg
    #   target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_keys
    #   Specifies the columns used to partition the Iceberg table data in
    #   S3.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] path
    #   Defines the S3 location where the Iceberg table data will be stored.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Specifies the file format used for storing Iceberg table data (e.g.,
    #   Parquet, ORC).
    #   @return [String]
    #
    # @!attribute [rw] additional_options
    #   Provides additional configuration options for customizing the
    #   Iceberg table behavior.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] schema_change_policy
    #   Defines how schema changes are handled when writing data to the
    #   Iceberg table.
    #   @return [Types::DirectSchemaChangePolicy]
    #
    # @!attribute [rw] compression
    #   Specifies the compression codec used for Iceberg table files in S3.
    #   @return [String]
    #
    # @!attribute [rw] number_target_partitions
    #   Sets the number of target partitions for distributing Iceberg table
    #   files across S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3IcebergDirectTarget AWS API Documentation
    #
    class S3IcebergDirectTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :path,
      :format,
      :additional_options,
      :schema_change_policy,
      :compression,
      :number_target_partitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a JSON data store stored in Amazon S3.
    #
    # @!attribute [rw] name
    #   The name of the data store.
    #   @return [String]
    #
    # @!attribute [rw] paths
    #   A list of the Amazon S3 paths to read from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compression_type
    #   Specifies how the data is compressed. This is generally not
    #   necessary if the data has a standard file extension. Possible values
    #   are `"gzip"` and `"bzip"`).
    #   @return [String]
    #
    # @!attribute [rw] exclusions
    #   A string containing a JSON list of Unix-style glob patterns to
    #   exclude. For example, "\[\\"**.pdf\\"\]" excludes all PDF
    #   files.
    #   @return [Array<String>]
    #
    # @!attribute [rw] group_size
    #   The target group size in bytes. The default is computed based on the
    #   input data size and the size of your cluster. When there are fewer
    #   than 50,000 input files, `"groupFiles"` must be set to
    #   `"inPartition"` for this to take effect.
    #   @return [String]
    #
    # @!attribute [rw] group_files
    #   Grouping files is turned on by default when the input contains more
    #   than 50,000 files. To turn on grouping with fewer than 50,000 files,
    #   set this parameter to "inPartition". To disable grouping when
    #   there are more than 50,000 files, set this parameter to `"none"`.
    #   @return [String]
    #
    # @!attribute [rw] recurse
    #   If set to true, recursively reads files in all subdirectories under
    #   the specified paths.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_band
    #   This option controls the duration in milliseconds after which the s3
    #   listing is likely to be consistent. Files with modification
    #   timestamps falling within the last maxBand milliseconds are tracked
    #   specially when using JobBookmarks to account for Amazon S3 eventual
    #   consistency. Most users don't need to set this option. The default
    #   is 900000 milliseconds, or 15 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] max_files_in_band
    #   This option specifies the maximum number of files to save from the
    #   last maxBand seconds. If this number is exceeded, extra files are
    #   skipped and only processed in the next job run.
    #   @return [Integer]
    #
    # @!attribute [rw] additional_options
    #   Specifies additional connection options.
    #   @return [Types::S3DirectSourceAdditionalOptions]
    #
    # @!attribute [rw] json_path
    #   A JsonPath string defining the JSON data.
    #   @return [String]
    #
    # @!attribute [rw] multiline
    #   A Boolean value that specifies whether a single record can span
    #   multiple lines. This can occur when a field contains a quoted
    #   new-line character. You must set this option to True if any record
    #   spans multiple lines. The default value is `False`, which allows for
    #   more aggressive file-splitting during parsing.
    #   @return [Boolean]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the S3 JSON source.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3JsonSource AWS API Documentation
    #
    class S3JsonSource < Struct.new(
      :name,
      :paths,
      :compression_type,
      :exclusions,
      :group_size,
      :group_files,
      :recurse,
      :max_band,
      :max_files_in_band,
      :additional_options,
      :json_path,
      :multiline,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Apache Parquet data store stored in Amazon S3.
    #
    # @!attribute [rw] name
    #   The name of the data store.
    #   @return [String]
    #
    # @!attribute [rw] paths
    #   A list of the Amazon S3 paths to read from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compression_type
    #   Specifies how the data is compressed. This is generally not
    #   necessary if the data has a standard file extension. Possible values
    #   are `"gzip"` and `"bzip"`).
    #   @return [String]
    #
    # @!attribute [rw] exclusions
    #   A string containing a JSON list of Unix-style glob patterns to
    #   exclude. For example, "\[\\"**.pdf\\"\]" excludes all PDF
    #   files.
    #   @return [Array<String>]
    #
    # @!attribute [rw] group_size
    #   The target group size in bytes. The default is computed based on the
    #   input data size and the size of your cluster. When there are fewer
    #   than 50,000 input files, `"groupFiles"` must be set to
    #   `"inPartition"` for this to take effect.
    #   @return [String]
    #
    # @!attribute [rw] group_files
    #   Grouping files is turned on by default when the input contains more
    #   than 50,000 files. To turn on grouping with fewer than 50,000 files,
    #   set this parameter to "inPartition". To disable grouping when
    #   there are more than 50,000 files, set this parameter to `"none"`.
    #   @return [String]
    #
    # @!attribute [rw] recurse
    #   If set to true, recursively reads files in all subdirectories under
    #   the specified paths.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_band
    #   This option controls the duration in milliseconds after which the s3
    #   listing is likely to be consistent. Files with modification
    #   timestamps falling within the last maxBand milliseconds are tracked
    #   specially when using JobBookmarks to account for Amazon S3 eventual
    #   consistency. Most users don't need to set this option. The default
    #   is 900000 milliseconds, or 15 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] max_files_in_band
    #   This option specifies the maximum number of files to save from the
    #   last maxBand seconds. If this number is exceeded, extra files are
    #   skipped and only processed in the next job run.
    #   @return [Integer]
    #
    # @!attribute [rw] additional_options
    #   Specifies additional connection options.
    #   @return [Types::S3DirectSourceAdditionalOptions]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the S3 Parquet source.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3ParquetSource AWS API Documentation
    #
    class S3ParquetSource < Struct.new(
      :name,
      :paths,
      :compression_type,
      :exclusions,
      :group_size,
      :group_files,
      :recurse,
      :max_band,
      :max_files_in_band,
      :additional_options,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies additional connection options for the Amazon S3 data store.
    #
    # @!attribute [rw] bounded_size
    #   Sets the upper limit for the target size of the dataset in bytes
    #   that will be processed.
    #   @return [Integer]
    #
    # @!attribute [rw] bounded_files
    #   Sets the upper limit for the target number of files that will be
    #   processed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3SourceAdditionalOptions AWS API Documentation
    #
    class S3SourceAdditionalOptions < Struct.new(
      :bounded_size,
      :bounded_files)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a data store in Amazon Simple Storage Service (Amazon S3).
    #
    # @!attribute [rw] path
    #   The path to the Amazon S3 target.
    #   @return [String]
    #
    # @!attribute [rw] exclusions
    #   A list of glob patterns used to exclude from the crawl. For more
    #   information, see [Catalog Tables with a Crawler][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_name
    #   The name of a connection which allows a job or crawler to access
    #   data in Amazon S3 within an Amazon Virtual Private Cloud environment
    #   (Amazon VPC).
    #   @return [String]
    #
    # @!attribute [rw] sample_size
    #   Sets the number of files in each leaf folder to be crawled when
    #   crawling sample files in a dataset. If not set, all the files are
    #   crawled. A valid value is an integer between 1 and 249.
    #   @return [Integer]
    #
    # @!attribute [rw] event_queue_arn
    #   A valid Amazon SQS ARN. For example,
    #   `arn:aws:sqs:region:account:sqs`.
    #   @return [String]
    #
    # @!attribute [rw] dlq_event_queue_arn
    #   A valid Amazon dead-letter SQS ARN. For example,
    #   `arn:aws:sqs:region:account:deadLetterQueue`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3Target AWS API Documentation
    #
    class S3Target < Struct.new(
      :path,
      :exclusions,
      :connection_name,
      :sample_size,
      :event_queue_arn,
      :dlq_event_queue_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A scheduling object using a `cron` statement to schedule an event.
    #
    # @!attribute [rw] schedule_expression
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :schedule_expression,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified scheduler is not running.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchedulerNotRunningException AWS API Documentation
    #
    class SchedulerNotRunningException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified scheduler is already running.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchedulerRunningException AWS API Documentation
    #
    class SchedulerRunningException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified scheduler is transitioning.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchedulerTransitioningException AWS API Documentation
    #
    class SchedulerTransitioningException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A policy that specifies update and deletion behaviors for the crawler.
    #
    # @!attribute [rw] update_behavior
    #   The update behavior when the crawler finds a changed schema.
    #   @return [String]
    #
    # @!attribute [rw] delete_behavior
    #   The deletion behavior when the crawler finds a deleted object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchemaChangePolicy AWS API Documentation
    #
    class SchemaChangePolicy < Struct.new(
      :update_behavior,
      :delete_behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair representing a column and data type that this
    # transform can run against. The `Schema` parameter of the `MLTransform`
    # may contain up to 100 of these structures.
    #
    # @!attribute [rw] name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The type of data in the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchemaColumn AWS API Documentation
    #
    class SchemaColumn < Struct.new(
      :name,
      :data_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The unique ID of the schema in the Glue schema registry.
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema. One of `SchemaArn` or
    #   `SchemaName` has to be provided.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema. One of `SchemaArn` or `SchemaName` has to be
    #   provided.
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   The name of the schema registry that contains the schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchemaId AWS API Documentation
    #
    class SchemaId < Struct.new(
      :schema_arn,
      :schema_name,
      :registry_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains minimal details for a schema.
    #
    # @!attribute [rw] registry_name
    #   the name of the registry where the schema resides.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) for the schema.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_status
    #   The status of the schema.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that a schema was created.
    #   @return [String]
    #
    # @!attribute [rw] updated_time
    #   The date and time that a schema was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchemaListItem AWS API Documentation
    #
    class SchemaListItem < Struct.new(
      :registry_name,
      :schema_name,
      :schema_arn,
      :description,
      :schema_status,
      :created_time,
      :updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that references a schema stored in the Glue Schema Registry.
    #
    # @!attribute [rw] schema_id
    #   A structure that contains schema identity fields. Either this or the
    #   `SchemaVersionId` has to be provided.
    #   @return [Types::SchemaId]
    #
    # @!attribute [rw] schema_version_id
    #   The unique ID assigned to a version of the schema. Either this or
    #   the `SchemaId` has to be provided.
    #   @return [String]
    #
    # @!attribute [rw] schema_version_number
    #   The version number of the schema.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchemaReference AWS API Documentation
    #
    class SchemaReference < Struct.new(
      :schema_id,
      :schema_version_id,
      :schema_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the error details for an operation on a schema
    # version.
    #
    # @!attribute [rw] version_number
    #   The version number of the schema.
    #   @return [Integer]
    #
    # @!attribute [rw] error_details
    #   The details of the error for the schema version.
    #   @return [Types::ErrorDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchemaVersionErrorItem AWS API Documentation
    #
    class SchemaVersionErrorItem < Struct.new(
      :version_number,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing the details about a schema version.
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_version_id
    #   The unique identifier of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the schema.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the schema version.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time the schema version was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchemaVersionListItem AWS API Documentation
    #
    class SchemaVersionListItem < Struct.new(
      :schema_arn,
      :schema_version_id,
      :version_number,
      :status,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the schema version information.
    #
    # @!attribute [rw] latest_version
    #   The latest version available for the schema.
    #   @return [Boolean]
    #
    # @!attribute [rw] version_number
    #   The version number of the schema.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchemaVersionNumber AWS API Documentation
    #
    class SchemaVersionNumber < Struct.new(
      :latest_version,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   A unique identifier, consisting of ` account_id `.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, included if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A list of key-value pairs, and a comparator used to filter the
    #   search results. Returns all entities matching the predicate.
    #
    #   The `Comparator` member of the `PropertyPredicate` struct is used
    #   only for time fields, and can be omitted for other field types.
    #   Also, when comparing string values, such as when `Key=Name`, a fuzzy
    #   match algorithm is used. The `Key` field (for example, the value of
    #   the `Name` field) is split on certain punctuation characters, for
    #   example, -, :, #, etc. into tokens. Then each token is exact-match
    #   compared with the `Value` member of `PropertyPredicate`. For
    #   example, if `Key=Name` and `Value=link`, tables named
    #   `customer-link` and `xx-link-yy` are returned, but `xxlinkyy` is not
    #   returned.
    #   @return [Array<Types::PropertyPredicate>]
    #
    # @!attribute [rw] search_text
    #   A string used for a text search.
    #
    #   Specifying a value in quotes filters based on an exact match to the
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] sort_criteria
    #   A list of criteria for sorting the results by a field name, in an
    #   ascending or descending order.
    #   @return [Array<Types::SortCriterion>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of tables to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_share_type
    #   Allows you to specify that you want to search the tables shared with
    #   your account. The allowable values are `FOREIGN` or `ALL`.
    #
    #   * If set to `FOREIGN`, will search the tables shared with your
    #     account.
    #
    #   * If set to `ALL`, will search the tables shared with your account,
    #     as well as the tables in yor local account.
    #   @return [String]
    #
    # @!attribute [rw] include_status_details
    #   Specifies whether to include status details related to a request to
    #   create or update an Glue Data Catalog view.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SearchTablesRequest AWS API Documentation
    #
    class SearchTablesRequest < Struct.new(
      :catalog_id,
      :next_token,
      :filters,
      :search_text,
      :sort_criteria,
      :max_results,
      :resource_share_type,
      :include_status_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, present if the current list segment is not the
    #   last.
    #   @return [String]
    #
    # @!attribute [rw] table_list
    #   A list of the requested `Table` objects. The `SearchTables` response
    #   returns only the tables that you have access to.
    #   @return [Array<Types::Table>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SearchTablesResponse AWS API Documentation
    #
    class SearchTablesResponse < Struct.new(
      :next_token,
      :table_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a security configuration.
    #
    # @!attribute [rw] name
    #   The name of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_time_stamp
    #   The time at which this security configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration associated with this security
    #   configuration.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SecurityConfiguration AWS API Documentation
    #
    class SecurityConfiguration < Struct.new(
      :name,
      :created_time_stamp,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a non-overlapping region of a table's partitions, allowing
    # multiple requests to be run in parallel.
    #
    # @!attribute [rw] segment_number
    #   The zero-based index number of the segment. For example, if the
    #   total number of segments is 4, `SegmentNumber` values range from 0
    #   through 3.
    #   @return [Integer]
    #
    # @!attribute [rw] total_segments
    #   The total number of segments.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Segment AWS API Documentation
    #
    class Segment < Struct.new(
      :segment_number,
      :total_segments)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that chooses the data property keys that you
    # want to keep.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] paths
    #   A JSON path to a variable in the data structure.
    #   @return [Array<Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SelectFields AWS API Documentation
    #
    class SelectFields < Struct.new(
      :name,
      :inputs,
      :paths)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that chooses one `DynamicFrame` from a
    # collection of `DynamicFrames`. The output is the selected
    # `DynamicFrame`
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] index
    #   The index for the DynamicFrame to be selected.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SelectFromCollection AWS API Documentation
    #
    class SelectFromCollection < Struct.new(
      :name,
      :inputs,
      :index)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a serialization/deserialization program (SerDe) that
    # serves as an extractor and loader.
    #
    # @!attribute [rw] name
    #   Name of the SerDe.
    #   @return [String]
    #
    # @!attribute [rw] serialization_library
    #   Usually the class that implements the SerDe. An example is
    #   `org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe`.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define initialization parameters for the
    #   SerDe.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SerDeInfo AWS API Documentation
    #
    class SerDeInfo < Struct.new(
      :name,
      :serialization_library,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The period in which a remote Spark runtime environment is running.
    #
    # @!attribute [rw] id
    #   The ID of the session.
    #   @return [String]
    #
    # @!attribute [rw] created_on
    #   The time and date when the session was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The session status.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message displayed during the session.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the session.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role associated
    #   with the Session.
    #   @return [String]
    #
    # @!attribute [rw] command
    #   The command object.See SessionCommand.
    #   @return [Types::SessionCommand]
    #
    # @!attribute [rw] default_arguments
    #   A map array of key-value pairs. Max is 75 pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connections
    #   The number of connections used for the session.
    #   @return [Types::ConnectionsList]
    #
    # @!attribute [rw] progress
    #   The code execution progress of the session.
    #   @return [Float]
    #
    # @!attribute [rw] max_capacity
    #   The number of Glue data processing units (DPUs) that can be
    #   allocated when the job runs. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB memory.
    #   @return [Float]
    #
    # @!attribute [rw] security_configuration
    #   The name of the SecurityConfiguration structure to be used with the
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   The Glue version determines the versions of Apache Spark and Python
    #   that Glue supports. The GlueVersion must be greater than 2.0.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `WorkerType` to use for the
    #   session.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when a session runs.
    #   Accepts a value of `G.1X`, `G.2X`, `G.4X`, or `G.8X` for Spark
    #   sessions. Accepts the value `Z.2X` for Ray sessions.
    #   @return [String]
    #
    # @!attribute [rw] completed_on
    #   The date and time that this session is completed.
    #   @return [Time]
    #
    # @!attribute [rw] execution_time
    #   The total time the session ran for.
    #   @return [Float]
    #
    # @!attribute [rw] dpu_seconds
    #   The DPUs consumed by the session (formula: ExecutionTime *
    #   MaxCapacity).
    #   @return [Float]
    #
    # @!attribute [rw] idle_timeout
    #   The number of minutes when idle before the session times out.
    #   @return [Integer]
    #
    # @!attribute [rw] profile_name
    #   The name of an Glue usage profile associated with the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Session AWS API Documentation
    #
    class Session < Struct.new(
      :id,
      :created_on,
      :status,
      :error_message,
      :description,
      :role,
      :command,
      :default_arguments,
      :connections,
      :progress,
      :max_capacity,
      :security_configuration,
      :glue_version,
      :number_of_workers,
      :worker_type,
      :completed_on,
      :execution_time,
      :dpu_seconds,
      :idle_timeout,
      :profile_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `SessionCommand` that runs the job.
    #
    # @!attribute [rw] name
    #   Specifies the name of the SessionCommand. Can be 'glueetl' or
    #   'gluestreaming'.
    #   @return [String]
    #
    # @!attribute [rw] python_version
    #   Specifies the Python version. The Python version indicates the
    #   version supported for jobs of type Spark.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SessionCommand AWS API Documentation
    #
    class SessionCommand < Struct.new(
      :name,
      :python_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies skewed values in a table. Skewed values are those that occur
    # with very high frequency.
    #
    # @!attribute [rw] skewed_column_names
    #   A list of names of columns that contain skewed values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] skewed_column_values
    #   A list of values that appear so frequently as to be considered
    #   skewed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] skewed_column_value_location_maps
    #   A mapping of skewed values to the columns that contain them.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SkewedInfo AWS API Documentation
    #
    class SkewedInfo < Struct.new(
      :skewed_column_names,
      :skewed_column_values,
      :skewed_column_value_location_maps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration for Snowflake nodes in Glue Studio.
    #
    # @!attribute [rw] source_type
    #   Specifies how retrieved data is specified. Valid values: `"table"`,
    #   ` "query"`.
    #   @return [String]
    #
    # @!attribute [rw] connection
    #   Specifies a Glue Data Catalog Connection to a Snowflake endpoint.
    #   @return [Types::Option]
    #
    # @!attribute [rw] schema
    #   Specifies a Snowflake database schema for your node to use.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   Specifies a Snowflake table for your node to use.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   Specifies a Snowflake database for your node to use.
    #   @return [String]
    #
    # @!attribute [rw] temp_dir
    #   Not currently used.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   Not currently used.
    #   @return [Types::Option]
    #
    # @!attribute [rw] additional_options
    #   Specifies additional options passed to the Snowflake connector. If
    #   options are specified elsewhere in this node, this will take
    #   precedence.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] sample_query
    #   A SQL string used to retrieve data with the `query` sourcetype.
    #   @return [String]
    #
    # @!attribute [rw] pre_action
    #   A SQL string run before the Snowflake connector performs its
    #   standard actions.
    #   @return [String]
    #
    # @!attribute [rw] post_action
    #   A SQL string run after the Snowflake connector performs its standard
    #   actions.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Specifies what action to take when writing to a table with
    #   preexisting data. Valid values: ` append`, `merge`, `truncate`,
    #   `drop`.
    #   @return [String]
    #
    # @!attribute [rw] upsert
    #   Used when Action is `append`. Specifies the resolution behavior when
    #   a row already exists. If true, preexisting rows will be updated. If
    #   false, those rows will be inserted.
    #   @return [Boolean]
    #
    # @!attribute [rw] merge_action
    #   Specifies a merge action. Valid values: `simple`, `custom`. If
    #   simple, merge behavior is defined by `MergeWhenMatched` and `
    #   MergeWhenNotMatched`. If custom, defined by `MergeClause`.
    #   @return [String]
    #
    # @!attribute [rw] merge_when_matched
    #   Specifies how to resolve records that match preexisting data when
    #   merging. Valid values: ` update`, `delete`.
    #   @return [String]
    #
    # @!attribute [rw] merge_when_not_matched
    #   Specifies how to process records that do not match preexisting data
    #   when merging. Valid values: `insert`, `none`.
    #   @return [String]
    #
    # @!attribute [rw] merge_clause
    #   A SQL statement that specifies a custom merge behavior.
    #   @return [String]
    #
    # @!attribute [rw] staging_table
    #   The name of a staging table used when performing `merge` or upsert
    #   `append` actions. Data is written to this table, then moved to
    #   `table` by a generated postaction.
    #   @return [String]
    #
    # @!attribute [rw] selected_columns
    #   Specifies the columns combined to identify a record when detecting
    #   matches for merges and upserts. A list of structures with `value`,
    #   `label` and ` description` keys. Each structure describes a column.
    #   @return [Array<Types::Option>]
    #
    # @!attribute [rw] auto_pushdown
    #   Specifies whether automatic query pushdown is enabled. If pushdown
    #   is enabled, then when a query is run on Spark, if part of the query
    #   can be "pushed down" to the Snowflake server, it is pushed down.
    #   This improves performance of some queries.
    #   @return [Boolean]
    #
    # @!attribute [rw] table_schema
    #   Manually defines the target schema for the node. A list of
    #   structures with `value` , `label` and `description` keys. Each
    #   structure defines a column.
    #   @return [Array<Types::Option>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SnowflakeNodeData AWS API Documentation
    #
    class SnowflakeNodeData < Struct.new(
      :source_type,
      :connection,
      :schema,
      :table,
      :database,
      :temp_dir,
      :iam_role,
      :additional_options,
      :sample_query,
      :pre_action,
      :post_action,
      :action,
      :upsert,
      :merge_action,
      :merge_when_matched,
      :merge_when_not_matched,
      :merge_clause,
      :staging_table,
      :selected_columns,
      :auto_pushdown,
      :table_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a Snowflake data source.
    #
    # @!attribute [rw] name
    #   The name of the Snowflake data source.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Configuration for the Snowflake data source.
    #   @return [Types::SnowflakeNodeData]
    #
    # @!attribute [rw] output_schemas
    #   Specifies user-defined schemas for your output data.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SnowflakeSource AWS API Documentation
    #
    class SnowflakeSource < Struct.new(
      :name,
      :data,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a Snowflake target.
    #
    # @!attribute [rw] name
    #   The name of the Snowflake target.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Specifies the data of the Snowflake target node.
    #   @return [Types::SnowflakeNodeData]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SnowflakeTarget AWS API Documentation
    #
    class SnowflakeTarget < Struct.new(
      :name,
      :data,
      :inputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a field to sort by and a sort order.
    #
    # @!attribute [rw] field_name
    #   The name of the field on which to sort.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   An ascending or descending sort.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SortCriterion AWS API Documentation
    #
    class SortCriterion < Struct.new(
      :field_name,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for a source control configuration for a job, allowing
    # synchronization of job artifacts to or from a remote repository.
    #
    # @!attribute [rw] provider
    #   The provider for the remote repository.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the remote repository that contains the job artifacts.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the remote repository that contains the job artifacts.
    #   @return [String]
    #
    # @!attribute [rw] branch
    #   An optional branch in the remote repository.
    #   @return [String]
    #
    # @!attribute [rw] folder
    #   An optional folder in the remote repository.
    #   @return [String]
    #
    # @!attribute [rw] last_commit_id
    #   The last commit ID for a commit in the remote repository.
    #   @return [String]
    #
    # @!attribute [rw] auth_strategy
    #   The type of authentication, which can be an authentication token
    #   stored in Amazon Web Services Secrets Manager, or a personal access
    #   token.
    #   @return [String]
    #
    # @!attribute [rw] auth_token
    #   The value of an authorization token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SourceControlDetails AWS API Documentation
    #
    class SourceControlDetails < Struct.new(
      :provider,
      :repository,
      :owner,
      :branch,
      :folder,
      :last_commit_id,
      :auth_strategy,
      :auth_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource properties associated with the integration source.
    #
    # @!attribute [rw] role_arn
    #   The IAM role to access the Glue connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SourceProcessingProperties AWS API Documentation
    #
    class SourceProcessingProperties < Struct.new(
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties used by the source leg to process data from the source.
    #
    # @!attribute [rw] fields
    #   A list of fields used for column-level filtering. Currently
    #   unsupported.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filter_predicate
    #   A condition clause used for row-level filtering. Currently
    #   unsupported.
    #   @return [String]
    #
    # @!attribute [rw] primary_key
    #   Provide the primary key set for this table. Currently supported
    #   specifically for SAP `EntityOf` entities upon request. Contact
    #   Amazon Web Services Support to make this feature available.
    #   @return [Array<String>]
    #
    # @!attribute [rw] record_update_field
    #   Incremental pull timestamp-based field. Currently unsupported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SourceTableConfig AWS API Documentation
    #
    class SourceTableConfig < Struct.new(
      :fields,
      :filter_predicate,
      :primary_key,
      :record_update_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a connector to an Apache Spark data source.
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection that is associated with the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_name
    #   The name of a connector that assists with accessing the data store
    #   in Glue Studio.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection, such as marketplace.spark or custom.spark,
    #   designating a connection to an Apache Spark data store.
    #   @return [String]
    #
    # @!attribute [rw] additional_options
    #   Additional connection options for the connector.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] output_schemas
    #   Specifies data schema for the custom spark source.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SparkConnectorSource AWS API Documentation
    #
    class SparkConnectorSource < Struct.new(
      :name,
      :connection_name,
      :connector_name,
      :connection_type,
      :additional_options,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a target that uses an Apache Spark connector.
    #
    # @!attribute [rw] name
    #   The name of the data target.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The nodes that are inputs to the data target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_name
    #   The name of a connection for an Apache Spark connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_name
    #   The name of an Apache Spark connector.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of connection, such as marketplace.spark or custom.spark,
    #   designating a connection to an Apache Spark data store.
    #   @return [String]
    #
    # @!attribute [rw] additional_options
    #   Additional connection options for the connector.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the custom spark target.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SparkConnectorTarget AWS API Documentation
    #
    class SparkConnectorTarget < Struct.new(
      :name,
      :inputs,
      :connection_name,
      :connector_name,
      :connection_type,
      :additional_options,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform where you enter a SQL query using Spark SQL
    # syntax to transform the data. The output is a single `DynamicFrame`.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names. You can associate a
    #   table name with each input node to use in the SQL query. The name
    #   you choose must meet the Spark SQL naming restrictions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sql_query
    #   A SQL query that must use Spark SQL syntax and return a single data
    #   set.
    #   @return [String]
    #
    # @!attribute [rw] sql_aliases
    #   A list of aliases. An alias allows you to specify what name to use
    #   in the SQL for a given input. For example, you have a datasource
    #   named "MyDataSource". If you specify `From` as MyDataSource, and
    #   `Alias` as SqlName, then in your SQL you can do:
    #
    #   `select * from SqlName`
    #
    #   and that gets data from MyDataSource.
    #   @return [Array<Types::SqlAlias>]
    #
    # @!attribute [rw] output_schemas
    #   Specifies the data schema for the SparkSQL transform.
    #   @return [Array<Types::GlueSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SparkSQL AWS API Documentation
    #
    class SparkSQL < Struct.new(
      :name,
      :inputs,
      :sql_query,
      :sql_aliases,
      :output_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that writes samples of the data to an Amazon S3
    # bucket.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] path
    #   A path in Amazon S3 where the transform will write a subset of
    #   records from the dataset to a JSON file in an Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] topk
    #   Specifies a number of records to write starting from the beginning
    #   of the dataset.
    #   @return [Integer]
    #
    # @!attribute [rw] prob
    #   The probability (a decimal value with a maximum value of 1) of
    #   picking any given record. A value of 1 indicates that each row read
    #   from the dataset should be included in the sample output.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Spigot AWS API Documentation
    #
    class Spigot < Struct.new(
      :name,
      :inputs,
      :path,
      :topk,
      :prob)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that splits data property keys into two
    # `DynamicFrames`. The output is a collection of `DynamicFrames`: one
    # with selected data property keys, and one with the remaining data
    # property keys.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The data inputs identified by their node names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] paths
    #   A JSON path to a variable in the data structure.
    #   @return [Array<Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SplitFields AWS API Documentation
    #
    class SplitFields < Struct.new(
      :name,
      :inputs,
      :paths)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single entry in the list of values for `SqlAliases`.
    #
    # @!attribute [rw] from
    #   A table, or a column in a table.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   A temporary name given to a table, or a column in a table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SqlAlias AWS API Documentation
    #
    class SqlAlias < Struct.new(
      :from,
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint_name
    #   The name of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Specifies the parameters as a `BlueprintParameters` object.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Specifies the IAM role used to create the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartBlueprintRunRequest AWS API Documentation
    #
    class StartBlueprintRunRequest < Struct.new(
      :blueprint_name,
      :parameters,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] run_id
    #   The run ID for this blueprint run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartBlueprintRunResponse AWS API Documentation
    #
    class StartBlueprintRunResponse < Struct.new(
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the database where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table to generate statistics.
    #   @return [String]
    #
    # @!attribute [rw] column_name_list
    #   A list of the column names to generate statistics. If none is
    #   supplied, all column names for the table will be used by default.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role
    #   The IAM role that the service assumes to generate statistics.
    #   @return [String]
    #
    # @!attribute [rw] sample_size
    #   The percentage of rows used to generate statistics. If none is
    #   supplied, the entire table will be used to generate stats.
    #   @return [Float]
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the table reside. If none is
    #   supplied, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] security_configuration
    #   Name of the security configuration that is used to encrypt
    #   CloudWatch logs for the column stats task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartColumnStatisticsTaskRunRequest AWS API Documentation
    #
    class StartColumnStatisticsTaskRunRequest < Struct.new(
      :database_name,
      :table_name,
      :column_name_list,
      :role,
      :sample_size,
      :catalog_id,
      :security_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] column_statistics_task_run_id
    #   The identifier for the column statistics task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartColumnStatisticsTaskRunResponse AWS API Documentation
    #
    class StartColumnStatisticsTaskRunResponse < Struct.new(
      :column_statistics_task_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the database where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table for which to start a column statistic task run
    #   schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartColumnStatisticsTaskRunScheduleRequest AWS API Documentation
    #
    class StartColumnStatisticsTaskRunScheduleRequest < Struct.new(
      :database_name,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartColumnStatisticsTaskRunScheduleResponse AWS API Documentation
    #
    class StartColumnStatisticsTaskRunScheduleResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   Name of the crawler to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerRequest AWS API Documentation
    #
    class StartCrawlerRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerResponse AWS API Documentation
    #
    class StartCrawlerResponse < Aws::EmptyStructure; end

    # @!attribute [rw] crawler_name
    #   Name of the crawler to schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerScheduleRequest AWS API Documentation
    #
    class StartCrawlerScheduleRequest < Struct.new(
      :crawler_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerScheduleResponse AWS API Documentation
    #
    class StartCrawlerScheduleResponse < Aws::EmptyStructure; end

    # The request of the Data Quality rule recommendation request.
    #
    # @!attribute [rw] data_source
    #   The data source (Glue table) associated with this run.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] role
    #   An IAM role supplied to encrypt the results of the run.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of `G.1X` workers to be used in the run. The default is
    #   5.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The timeout for a run in minutes. This is the maximum time that a
    #   run can consume resources before it is terminated and enters
    #   `TIMEOUT` status. The default is 2,880 minutes (48 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] created_ruleset_name
    #   A name for the ruleset.
    #   @return [String]
    #
    # @!attribute [rw] data_quality_security_configuration
    #   The name of the security configuration created with the data quality
    #   encryption option.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Used for idempotency and is recommended to be set to a random ID
    #   (such as a UUID) to avoid creating or starting multiple instances of
    #   the same resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartDataQualityRuleRecommendationRunRequest AWS API Documentation
    #
    class StartDataQualityRuleRecommendationRunRequest < Struct.new(
      :data_source,
      :role,
      :number_of_workers,
      :timeout,
      :created_ruleset_name,
      :data_quality_security_configuration,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] run_id
    #   The unique run identifier associated with this run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartDataQualityRuleRecommendationRunResponse AWS API Documentation
    #
    class StartDataQualityRuleRecommendationRunResponse < Struct.new(
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   The data source (Glue table) associated with this run.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] role
    #   An IAM role supplied to encrypt the results of the run.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of `G.1X` workers to be used in the run. The default is
    #   5.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The timeout for a run in minutes. This is the maximum time that a
    #   run can consume resources before it is terminated and enters
    #   `TIMEOUT` status. The default is 2,880 minutes (48 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   Used for idempotency and is recommended to be set to a random ID
    #   (such as a UUID) to avoid creating or starting multiple instances of
    #   the same resource.
    #   @return [String]
    #
    # @!attribute [rw] additional_run_options
    #   Additional run options you can specify for an evaluation run.
    #   @return [Types::DataQualityEvaluationRunAdditionalRunOptions]
    #
    # @!attribute [rw] ruleset_names
    #   A list of ruleset names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_data_sources
    #   A map of reference strings to additional data sources you can
    #   specify for an evaluation run.
    #   @return [Hash<String,Types::DataSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartDataQualityRulesetEvaluationRunRequest AWS API Documentation
    #
    class StartDataQualityRulesetEvaluationRunRequest < Struct.new(
      :data_source,
      :role,
      :number_of_workers,
      :timeout,
      :client_token,
      :additional_run_options,
      :ruleset_names,
      :additional_data_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] run_id
    #   The unique run identifier associated with this run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartDataQualityRulesetEvaluationRunResponse AWS API Documentation
    #
    class StartDataQualityRulesetEvaluationRunResponse < Struct.new(
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_path
    #   The Amazon S3 path where you export the labels.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartExportLabelsTaskRunRequest AWS API Documentation
    #
    class StartExportLabelsTaskRunRequest < Struct.new(
      :transform_id,
      :output_s3_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_run_id
    #   The unique identifier for the task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartExportLabelsTaskRunResponse AWS API Documentation
    #
    class StartExportLabelsTaskRunResponse < Struct.new(
      :task_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] input_s3_path
    #   The Amazon Simple Storage Service (Amazon S3) path from where you
    #   import the labels.
    #   @return [String]
    #
    # @!attribute [rw] replace_all_labels
    #   Indicates whether to overwrite your existing labels.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartImportLabelsTaskRunRequest AWS API Documentation
    #
    class StartImportLabelsTaskRunRequest < Struct.new(
      :transform_id,
      :input_s3_path,
      :replace_all_labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_run_id
    #   The unique identifier for the task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartImportLabelsTaskRunResponse AWS API Documentation
    #
    class StartImportLabelsTaskRunResponse < Struct.new(
      :task_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the job definition to use.
    #   @return [String]
    #
    # @!attribute [rw] job_run_queuing_enabled
    #   Specifies whether job run queuing is enabled for the job run.
    #
    #   A value of true means job run queuing is enabled for the job run. If
    #   false or not populated, the job run will not be considered for
    #   queueing.
    #   @return [Boolean]
    #
    # @!attribute [rw] job_run_id
    #   The ID of a previous `JobRun` to retry.
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   The job arguments associated with this run. For this job run, they
    #   replace the default arguments set in the job definition itself.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that Glue itself consumes.
    #
    #   Job arguments may be logged. Do not pass plaintext secrets as
    #   arguments. Retrieve secrets from a Glue Connection, Secrets Manager
    #   or other secret management mechanism if you intend to keep them
    #   within the Job.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the arguments you can provide to this field
    #   when configuring Spark jobs, see the [Special Parameters Used by
    #   Glue][2] topic in the developer guide.
    #
    #   For information about the arguments you can provide to this field
    #   when configuring Ray jobs, see [Using job parameters in Ray jobs][3]
    #   in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #   [3]: https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] allocated_capacity
    #   This field is deprecated. Use `MaxCapacity` instead.
    #
    #   The number of Glue data processing units (DPUs) to allocate to this
    #   JobRun. You can allocate a minimum of 2 DPUs; the default is 10. A
    #   DPU is a relative measure of processing power that consists of 4
    #   vCPUs of compute capacity and 16 GB of memory. For more information,
    #   see the [Glue pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The `JobRun` timeout in minutes. This is the maximum time that a job
    #   run can consume resources before it is terminated and enters
    #   `TIMEOUT` status. This value overrides the timeout value set in the
    #   parent job.
    #
    #   Jobs must have timeout values less than 7 days or 10080 minutes.
    #   Otherwise, the jobs will throw an exception.
    #
    #   When the value is left blank, the timeout is defaulted to 2880
    #   minutes.
    #
    #   Any existing Glue jobs that had a timeout value greater than 7 days
    #   will be defaulted to 7 days. For instance if you have specified a
    #   timeout of 20 days for a batch job, it will be stopped on the 7th
    #   day.
    #
    #   For streaming jobs, if you have set up a maintenance window, it will
    #   be restarted during the maintenance window after 7 days.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   For Glue version 1.0 or earlier jobs, using the standard worker
    #   type, the number of Glue data processing units (DPUs) that can be
    #   allocated when this job runs. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [ Glue pricing page][1].
    #
    #   For Glue version 2.0+ jobs, you cannot specify a `Maximum capacity`.
    #   Instead, you should specify a `Worker type` and the `Number of
    #   workers`.
    #
    #   Do not set `MaxCapacity` if using `WorkerType` and
    #   `NumberOfWorkers`.
    #
    #   The value that can be allocated for `MaxCapacity` depends on whether
    #   you are running a Python shell job, an Apache Spark ETL job, or an
    #   Apache Spark streaming ETL job:
    #
    #   * When you specify a Python shell job
    #     (`JobCommand.Name`="pythonshell"), you can allocate either
    #     0.0625 or 1 DPU. The default is 0.0625 DPU.
    #
    #   * When you specify an Apache Spark ETL job
    #     (`JobCommand.Name`="glueetl") or Apache Spark streaming ETL job
    #     (`JobCommand.Name`="gluestreaming"), you can allocate from 2 to
    #     100 DPUs. The default is 10 DPUs. This job type cannot have a
    #     fractional DPU allocation.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this job run.
    #   @return [String]
    #
    # @!attribute [rw] notification_property
    #   Specifies configuration properties of a job run notification.
    #   @return [Types::NotificationProperty]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of G.1X, G.2X, G.4X, G.8X or G.025X for Spark jobs.
    #   Accepts the value Z.2X for Ray jobs.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPUs, 16
    #     GB of memory) with 94GB disk, and provides 1 executor per worker.
    #     We recommend this worker type for workloads such as data
    #     transforms, joins, and queries, to offers a scalable and cost
    #     effective way to run most jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPUs, 32
    #     GB of memory) with 138GB disk, and provides 1 executor per worker.
    #     We recommend this worker type for workloads such as data
    #     transforms, joins, and queries, to offers a scalable and cost
    #     effective way to run most jobs.
    #
    #   * For the `G.4X` worker type, each worker maps to 4 DPU (16 vCPUs,
    #     64 GB of memory) with 256GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for jobs whose workloads
    #     contain your most demanding transforms, aggregations, joins, and
    #     queries. This worker type is available only for Glue version 3.0
    #     or later Spark ETL jobs in the following Amazon Web Services
    #     Regions: US East (Ohio), US East (N. Virginia), US West (Oregon),
    #     Asia Pacific (Singapore), Asia Pacific (Sydney), Asia Pacific
    #     (Tokyo), Canada (Central), Europe (Frankfurt), Europe (Ireland),
    #     and Europe (Stockholm).
    #
    #   * For the `G.8X` worker type, each worker maps to 8 DPU (32 vCPUs,
    #     128 GB of memory) with 512GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for jobs whose workloads
    #     contain your most demanding transforms, aggregations, joins, and
    #     queries. This worker type is available only for Glue version 3.0
    #     or later Spark ETL jobs, in the same Amazon Web Services Regions
    #     as supported for the `G.4X` worker type.
    #
    #   * For the `G.025X` worker type, each worker maps to 0.25 DPU (2
    #     vCPUs, 4 GB of memory) with 84GB disk, and provides 1 executor per
    #     worker. We recommend this worker type for low volume streaming
    #     jobs. This worker type is only available for Glue version 3.0 or
    #     later streaming jobs.
    #
    #   * For the `Z.2X` worker type, each worker maps to 2 M-DPU (8vCPUs,
    #     64 GB of memory) with 128 GB disk, and provides up to 8 Ray
    #     workers based on the autoscaler.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a job runs.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_class
    #   Indicates whether the job is run with a standard or flexible
    #   execution class. The standard execution-class is ideal for
    #   time-sensitive workloads that require fast job startup and dedicated
    #   resources.
    #
    #   The flexible execution class is appropriate for time-insensitive
    #   jobs whose start and completion times may vary.
    #
    #   Only jobs with Glue version 3.0 and above and command type `glueetl`
    #   will be allowed to set `ExecutionClass` to `FLEX`. The flexible
    #   execution class is available for Spark jobs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartJobRunRequest AWS API Documentation
    #
    class StartJobRunRequest < Struct.new(
      :job_name,
      :job_run_queuing_enabled,
      :job_run_id,
      :arguments,
      :allocated_capacity,
      :timeout,
      :max_capacity,
      :security_configuration,
      :notification_property,
      :worker_type,
      :number_of_workers,
      :execution_class)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_run_id
    #   The ID assigned to this job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartJobRunResponse AWS API Documentation
    #
    class StartJobRunResponse < Struct.new(
      :job_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartMLEvaluationTaskRunRequest AWS API Documentation
    #
    class StartMLEvaluationTaskRunRequest < Struct.new(
      :transform_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_run_id
    #   The unique identifier associated with this run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartMLEvaluationTaskRunResponse AWS API Documentation
    #
    class StartMLEvaluationTaskRunResponse < Struct.new(
      :task_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_path
    #   The Amazon Simple Storage Service (Amazon S3) path where you
    #   generate the labeling set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartMLLabelingSetGenerationTaskRunRequest AWS API Documentation
    #
    class StartMLLabelingSetGenerationTaskRunRequest < Struct.new(
      :transform_id,
      :output_s3_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_run_id
    #   The unique run identifier that is associated with this task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartMLLabelingSetGenerationTaskRunResponse AWS API Documentation
    #
    class StartMLLabelingSetGenerationTaskRunResponse < Struct.new(
      :task_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trigger to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartTriggerRequest AWS API Documentation
    #
    class StartTriggerRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trigger that was started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartTriggerResponse AWS API Documentation
    #
    class StartTriggerResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workflow to start.
    #   @return [String]
    #
    # @!attribute [rw] run_properties
    #   The workflow run properties for the new workflow run.
    #
    #   Run properties may be logged. Do not pass plaintext secrets as
    #   properties. Retrieve secrets from a Glue Connection, Amazon Web
    #   Services Secrets Manager or other secret management mechanism if you
    #   intend to use them within the workflow run.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartWorkflowRunRequest AWS API Documentation
    #
    class StartWorkflowRunRequest < Struct.new(
      :name,
      :run_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] run_id
    #   An Id for the new run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartWorkflowRunResponse AWS API Documentation
    #
    class StartWorkflowRunResponse < Struct.new(
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The batch condition that started the workflow run. Either the number
    # of events in the batch size arrived, in which case the BatchSize
    # member is non-zero, or the batch window expired, in which case the
    # BatchWindow member is non-zero.
    #
    # @!attribute [rw] batch_size
    #   Number of events in the batch.
    #   @return [Integer]
    #
    # @!attribute [rw] batch_window
    #   Duration of the batch window in seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartingEventBatchCondition AWS API Documentation
    #
    class StartingEventBatchCondition < Struct.new(
      :batch_size,
      :batch_window)
      SENSITIVE = []
      include Aws::Structure
    end

    # The statement or request for a particular action to occur in a
    # session.
    #
    # @!attribute [rw] id
    #   The ID of the statement.
    #   @return [Integer]
    #
    # @!attribute [rw] code
    #   The execution code of the statement.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state while request is actioned.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The output in JSON.
    #   @return [Types::StatementOutput]
    #
    # @!attribute [rw] progress
    #   The code execution progress.
    #   @return [Float]
    #
    # @!attribute [rw] started_on
    #   The unix time and date that the job definition was started.
    #   @return [Integer]
    #
    # @!attribute [rw] completed_on
    #   The unix time and date that the job definition was completed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Statement AWS API Documentation
    #
    class Statement < Struct.new(
      :id,
      :code,
      :state,
      :output,
      :progress,
      :started_on,
      :completed_on)
      SENSITIVE = []
      include Aws::Structure
    end

    # The code execution output in JSON format.
    #
    # @!attribute [rw] data
    #   The code execution output.
    #   @return [Types::StatementOutputData]
    #
    # @!attribute [rw] execution_count
    #   The execution count of the output.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the code execution output.
    #   @return [String]
    #
    # @!attribute [rw] error_name
    #   The name of the error in the output.
    #   @return [String]
    #
    # @!attribute [rw] error_value
    #   The error value of the output.
    #   @return [String]
    #
    # @!attribute [rw] traceback
    #   The traceback of the output.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StatementOutput AWS API Documentation
    #
    class StatementOutput < Struct.new(
      :data,
      :execution_count,
      :status,
      :error_name,
      :error_value,
      :traceback)
      SENSITIVE = []
      include Aws::Structure
    end

    # The code execution output in JSON format.
    #
    # @!attribute [rw] text_plain
    #   The code execution output in text format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StatementOutputData AWS API Documentation
    #
    class StatementOutputData < Struct.new(
      :text_plain)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Statistic Annotation.
    #
    # @!attribute [rw] profile_id
    #   The Profile ID.
    #   @return [String]
    #
    # @!attribute [rw] statistic_id
    #   The Statistic ID.
    #   @return [String]
    #
    # @!attribute [rw] statistic_recorded_on
    #   The timestamp when the annotated statistic was recorded.
    #   @return [Time]
    #
    # @!attribute [rw] inclusion_annotation
    #   The inclusion annotation applied to the statistic.
    #   @return [Types::TimestampedInclusionAnnotation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StatisticAnnotation AWS API Documentation
    #
    class StatisticAnnotation < Struct.new(
      :profile_id,
      :statistic_id,
      :statistic_recorded_on,
      :inclusion_annotation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The statistic model result.
    #
    # @!attribute [rw] lower_bound
    #   The lower bound.
    #   @return [Float]
    #
    # @!attribute [rw] upper_bound
    #   The upper bound.
    #   @return [Float]
    #
    # @!attribute [rw] predicted_value
    #   The predicted value.
    #   @return [Float]
    #
    # @!attribute [rw] actual_value
    #   The actual value.
    #   @return [Float]
    #
    # @!attribute [rw] date
    #   The date.
    #   @return [Time]
    #
    # @!attribute [rw] inclusion_annotation
    #   The inclusion annotation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StatisticModelResult AWS API Documentation
    #
    class StatisticModelResult < Struct.new(
      :lower_bound,
      :upper_bound,
      :predicted_value,
      :actual_value,
      :date,
      :inclusion_annotation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a statistic.
    #
    # @!attribute [rw] statistic_id
    #   The Statistic ID.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The Profile ID.
    #   @return [String]
    #
    # @!attribute [rw] run_identifier
    #   The Run Identifier
    #   @return [Types::RunIdentifier]
    #
    # @!attribute [rw] statistic_name
    #   The name of the statistic.
    #   @return [String]
    #
    # @!attribute [rw] double_value
    #   The value of the statistic.
    #   @return [Float]
    #
    # @!attribute [rw] evaluation_level
    #   The evaluation level of the statistic. Possible values: `Dataset`,
    #   `Column`, `Multicolumn`.
    #   @return [String]
    #
    # @!attribute [rw] columns_referenced
    #   The list of columns referenced by the statistic.
    #   @return [Array<String>]
    #
    # @!attribute [rw] referenced_datasets
    #   The list of datasets referenced by the statistic.
    #   @return [Array<String>]
    #
    # @!attribute [rw] statistic_properties
    #   A `StatisticPropertiesMap`, which contains a `NameString` and
    #   `DescriptionString`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] recorded_on
    #   The timestamp when the statistic was recorded.
    #   @return [Time]
    #
    # @!attribute [rw] inclusion_annotation
    #   The inclusion annotation for the statistic.
    #   @return [Types::TimestampedInclusionAnnotation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StatisticSummary AWS API Documentation
    #
    class StatisticSummary < Struct.new(
      :statistic_id,
      :profile_id,
      :run_identifier,
      :statistic_name,
      :double_value,
      :evaluation_level,
      :columns_referenced,
      :referenced_datasets,
      :statistic_properties,
      :recorded_on,
      :inclusion_annotation)
      SENSITIVE = [:statistic_properties]
      include Aws::Structure
    end

    # A structure containing information about an asynchronous change to a
    # table.
    #
    # @!attribute [rw] requested_change
    #   A `Table` object representing the requested changes.
    #   @return [Types::Table]
    #
    # @!attribute [rw] view_validations
    #   A list of `ViewValidation` objects that contain information for an
    #   analytical engine to validate a view.
    #   @return [Array<Types::ViewValidation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StatusDetails AWS API Documentation
    #
    class StatusDetails < Struct.new(
      :requested_change,
      :view_validations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the database where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopColumnStatisticsTaskRunRequest AWS API Documentation
    #
    class StopColumnStatisticsTaskRunRequest < Struct.new(
      :database_name,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopColumnStatisticsTaskRunResponse AWS API Documentation
    #
    class StopColumnStatisticsTaskRunResponse < Aws::EmptyStructure; end

    # @!attribute [rw] database_name
    #   The name of the database where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table for which to stop a column statistic task run
    #   schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopColumnStatisticsTaskRunScheduleRequest AWS API Documentation
    #
    class StopColumnStatisticsTaskRunScheduleRequest < Struct.new(
      :database_name,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopColumnStatisticsTaskRunScheduleResponse AWS API Documentation
    #
    class StopColumnStatisticsTaskRunScheduleResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   Name of the crawler to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerRequest AWS API Documentation
    #
    class StopCrawlerRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerResponse AWS API Documentation
    #
    class StopCrawlerResponse < Aws::EmptyStructure; end

    # @!attribute [rw] crawler_name
    #   Name of the crawler whose schedule state to set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerScheduleRequest AWS API Documentation
    #
    class StopCrawlerScheduleRequest < Struct.new(
      :crawler_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerScheduleResponse AWS API Documentation
    #
    class StopCrawlerScheduleResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the session to be stopped.
    #   @return [String]
    #
    # @!attribute [rw] request_origin
    #   The origin of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopSessionRequest AWS API Documentation
    #
    class StopSessionRequest < Struct.new(
      :id,
      :request_origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Returns the Id of the stopped session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopSessionResponse AWS API Documentation
    #
    class StopSessionResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trigger to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopTriggerRequest AWS API Documentation
    #
    class StopTriggerRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trigger that was stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopTriggerResponse AWS API Documentation
    #
    class StopTriggerResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workflow to stop.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The ID of the workflow run to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopWorkflowRunRequest AWS API Documentation
    #
    class StopWorkflowRunRequest < Struct.new(
      :name,
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopWorkflowRunResponse AWS API Documentation
    #
    class StopWorkflowRunResponse < Aws::EmptyStructure; end

    # Describes the physical storage of table data.
    #
    # @!attribute [rw] columns
    #   A list of the `Columns` in the table.
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] location
    #   The physical location of the table. By default, this takes the form
    #   of the warehouse location, followed by the database location in the
    #   warehouse, followed by the table name.
    #   @return [String]
    #
    # @!attribute [rw] additional_locations
    #   A list of locations that point to the path where a Delta table is
    #   located.
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_format
    #   The input format: `SequenceFileInputFormat` (binary), or
    #   `TextInputFormat`, or a custom format.
    #   @return [String]
    #
    # @!attribute [rw] output_format
    #   The output format: `SequenceFileOutputFormat` (binary), or
    #   `IgnoreKeyTextOutputFormat`, or a custom format.
    #   @return [String]
    #
    # @!attribute [rw] compressed
    #   `True` if the data in the table is compressed, or `False` if not.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_buckets
    #   Must be specified if the table contains any dimension columns.
    #   @return [Integer]
    #
    # @!attribute [rw] serde_info
    #   The serialization/deserialization (SerDe) information.
    #   @return [Types::SerDeInfo]
    #
    # @!attribute [rw] bucket_columns
    #   A list of reducer grouping columns, clustering columns, and
    #   bucketing columns in the table.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sort_columns
    #   A list specifying the sort order of each bucket in the table.
    #   @return [Array<Types::Order>]
    #
    # @!attribute [rw] parameters
    #   The user-supplied properties in key-value form.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] skewed_info
    #   The information about values that appear frequently in a column
    #   (skewed values).
    #   @return [Types::SkewedInfo]
    #
    # @!attribute [rw] stored_as_sub_directories
    #   `True` if the table data is stored in subdirectories, or `False` if
    #   not.
    #   @return [Boolean]
    #
    # @!attribute [rw] schema_reference
    #   An object that references a schema stored in the Glue Schema
    #   Registry.
    #
    #   When creating a table, you can pass an empty list of columns for the
    #   schema, and instead use a schema reference.
    #   @return [Types::SchemaReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StorageDescriptor AWS API Documentation
    #
    class StorageDescriptor < Struct.new(
      :columns,
      :location,
      :additional_locations,
      :input_format,
      :output_format,
      :compressed,
      :number_of_buckets,
      :serde_info,
      :bucket_columns,
      :sort_columns,
      :parameters,
      :skewed_info,
      :stored_as_sub_directories,
      :schema_reference)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies options related to data preview for viewing a sample of your
    # data.
    #
    # @!attribute [rw] polling_time
    #   The polling time in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] record_polling_limit
    #   The limit to the number of records polled.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StreamingDataPreviewOptions AWS API Documentation
    #
    class StreamingDataPreviewOptions < Struct.new(
      :polling_time,
      :record_polling_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines column statistics supported for character sequence data
    # values.
    #
    # @!attribute [rw] maximum_length
    #   The size of the longest string in the column.
    #   @return [Integer]
    #
    # @!attribute [rw] average_length
    #   The average string length in the column.
    #   @return [Float]
    #
    # @!attribute [rw] number_of_nulls
    #   The number of null values in the column.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_distinct_values
    #   The number of distinct values in a column.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StringColumnStatisticsData AWS API Documentation
    #
    class StringColumnStatisticsData < Struct.new(
      :maximum_length,
      :average_length,
      :number_of_nulls,
      :number_of_distinct_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure specifying the dialect and dialect version used by the
    # query engine.
    #
    # @!attribute [rw] dialect
    #   The dialect of the query engine.
    #   @return [String]
    #
    # @!attribute [rw] dialect_version
    #   The version of the dialect of the query engine. For example, 3.0.0.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SupportedDialect AWS API Documentation
    #
    class SupportedDialect < Struct.new(
      :dialect,
      :dialect_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of related data organized in columns and rows.
    #
    # @!attribute [rw] name
    #   The table name. For Hive compatibility, this must be entirely
    #   lowercase.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database where the table metadata resides. For Hive
    #   compatibility, this must be all lowercase.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the table.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the table.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the table definition was created in the Data Catalog.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The last time that the table was updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_access_time
    #   The last time that the table was accessed. This is usually taken
    #   from HDFS, and might not be reliable.
    #   @return [Time]
    #
    # @!attribute [rw] last_analyzed_time
    #   The last time that column statistics were computed for this table.
    #   @return [Time]
    #
    # @!attribute [rw] retention
    #   The retention time for this table.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_descriptor
    #   A storage descriptor containing information about the physical
    #   storage of this table.
    #   @return [Types::StorageDescriptor]
    #
    # @!attribute [rw] partition_keys
    #   A list of columns by which the table is partitioned. Only primitive
    #   types are supported as partition keys.
    #
    #   When you create a table used by Amazon Athena, and you do not
    #   specify any `partitionKeys`, you must at least set the value of
    #   `partitionKeys` to an empty list. For example:
    #
    #   `"PartitionKeys": []`
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] view_original_text
    #   Included for Apache Hive compatibility. Not used in the normal
    #   course of Glue operations. If the table is a `VIRTUAL_VIEW`, certain
    #   Athena configuration encoded in base64.
    #   @return [String]
    #
    # @!attribute [rw] view_expanded_text
    #   Included for Apache Hive compatibility. Not used in the normal
    #   course of Glue operations.
    #   @return [String]
    #
    # @!attribute [rw] table_type
    #   The type of this table. Glue will create tables with the
    #   `EXTERNAL_TABLE` type. Other services, such as Athena, may create
    #   tables with additional table types.
    #
    #   Glue related table types:
    #
    #   EXTERNAL\_TABLE
    #
    #   : Hive compatible attribute - indicates a non-Hive managed table.
    #
    #   GOVERNED
    #
    #   : Used by Lake Formation. The Glue Data Catalog understands
    #     `GOVERNED`.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define properties associated with the table.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_by
    #   The person or entity who created the table.
    #   @return [String]
    #
    # @!attribute [rw] is_registered_with_lake_formation
    #   Indicates whether the table has been registered with Lake Formation.
    #   @return [Boolean]
    #
    # @!attribute [rw] target_table
    #   A `TableIdentifier` structure that describes a target table for
    #   resource linking.
    #   @return [Types::TableIdentifier]
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of the table version.
    #   @return [String]
    #
    # @!attribute [rw] federated_table
    #   A `FederatedTable` structure that references an entity outside the
    #   Glue Data Catalog.
    #   @return [Types::FederatedTable]
    #
    # @!attribute [rw] view_definition
    #   A structure that contains all the information that defines the view,
    #   including the dialect or dialects for the view, and the query.
    #   @return [Types::ViewDefinition]
    #
    # @!attribute [rw] is_multi_dialect_view
    #   Specifies whether the view supports the SQL dialects of one or more
    #   different query engines and can therefore be read by those engines.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   A structure containing information about the state of an
    #   asynchronous change to a table.
    #   @return [Types::TableStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Table AWS API Documentation
    #
    class Table < Struct.new(
      :name,
      :database_name,
      :description,
      :owner,
      :create_time,
      :update_time,
      :last_access_time,
      :last_analyzed_time,
      :retention,
      :storage_descriptor,
      :partition_keys,
      :view_original_text,
      :view_expanded_text,
      :table_type,
      :parameters,
      :created_by,
      :is_registered_with_lake_formation,
      :target_table,
      :catalog_id,
      :version_id,
      :federated_table,
      :view_definition,
      :is_multi_dialect_view,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error record for table operations.
    #
    # @!attribute [rw] table_name
    #   The name of the table. For Hive compatibility, this must be entirely
    #   lowercase.
    #   @return [String]
    #
    # @!attribute [rw] error_detail
    #   The details about the error.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableError AWS API Documentation
    #
    class TableError < Struct.new(
      :table_name,
      :error_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes a target table for resource linking.
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database that contains the target table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the target table.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Region of the target table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableIdentifier AWS API Documentation
    #
    class TableIdentifier < Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure used to define a table.
    #
    # @!attribute [rw] name
    #   The table name. For Hive compatibility, this is folded to lowercase
    #   when it is stored.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the table.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The table owner. Included for Apache Hive compatibility. Not used in
    #   the normal course of Glue operations.
    #   @return [String]
    #
    # @!attribute [rw] last_access_time
    #   The last time that the table was accessed.
    #   @return [Time]
    #
    # @!attribute [rw] last_analyzed_time
    #   The last time that column statistics were computed for this table.
    #   @return [Time]
    #
    # @!attribute [rw] retention
    #   The retention time for this table.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_descriptor
    #   A storage descriptor containing information about the physical
    #   storage of this table.
    #   @return [Types::StorageDescriptor]
    #
    # @!attribute [rw] partition_keys
    #   A list of columns by which the table is partitioned. Only primitive
    #   types are supported as partition keys.
    #
    #   When you create a table used by Amazon Athena, and you do not
    #   specify any `partitionKeys`, you must at least set the value of
    #   `partitionKeys` to an empty list. For example:
    #
    #   `"PartitionKeys": []`
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] view_original_text
    #   Included for Apache Hive compatibility. Not used in the normal
    #   course of Glue operations. If the table is a `VIRTUAL_VIEW`, certain
    #   Athena configuration encoded in base64.
    #   @return [String]
    #
    # @!attribute [rw] view_expanded_text
    #   Included for Apache Hive compatibility. Not used in the normal
    #   course of Glue operations.
    #   @return [String]
    #
    # @!attribute [rw] table_type
    #   The type of this table. Glue will create tables with the
    #   `EXTERNAL_TABLE` type. Other services, such as Athena, may create
    #   tables with additional table types.
    #
    #   Glue related table types:
    #
    #   EXTERNAL\_TABLE
    #
    #   : Hive compatible attribute - indicates a non-Hive managed table.
    #
    #   GOVERNED
    #
    #   : Used by Lake Formation. The Glue Data Catalog understands
    #     `GOVERNED`.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define properties associated with the table.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] target_table
    #   A `TableIdentifier` structure that describes a target table for
    #   resource linking.
    #   @return [Types::TableIdentifier]
    #
    # @!attribute [rw] view_definition
    #   A structure that contains all the information that defines the view,
    #   including the dialect or dialects for the view, and the query.
    #   @return [Types::ViewDefinitionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableInput AWS API Documentation
    #
    class TableInput < Struct.new(
      :name,
      :description,
      :owner,
      :last_access_time,
      :last_analyzed_time,
      :retention,
      :storage_descriptor,
      :partition_keys,
      :view_original_text,
      :view_expanded_text,
      :table_type,
      :parameters,
      :target_table,
      :view_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an optimizer associated with a table.
    #
    # @!attribute [rw] type
    #   The type of table optimizer. The valid values are:
    #
    #   * `compaction`: for managing compaction with a table optimizer.
    #
    #   * `retention`: for managing the retention of snapshot with a table
    #     optimizer.
    #
    #   * `orphan_file_deletion`: for managing the deletion of orphan files
    #     with a table optimizer.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   A `TableOptimizerConfiguration` object that was specified when
    #   creating or updating a table optimizer.
    #   @return [Types::TableOptimizerConfiguration]
    #
    # @!attribute [rw] last_run
    #   A `TableOptimizerRun` object representing the last run of the table
    #   optimizer.
    #   @return [Types::TableOptimizerRun]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableOptimizer AWS API Documentation
    #
    class TableOptimizer < Struct.new(
      :type,
      :configuration,
      :last_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details on the configuration of a table optimizer. You pass
    # this configuration when creating or updating a table optimizer.
    #
    # @!attribute [rw] role_arn
    #   A role passed by the caller which gives the service permission to
    #   update the resources associated with the optimizer on the caller's
    #   behalf.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether table optimization is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_configuration
    #   A `TableOptimizerVpcConfiguration` object representing the VPC
    #   configuration for a table optimizer.
    #
    #   This configuration is necessary to perform optimization on tables
    #   that are in a customer VPC.
    #   @return [Types::TableOptimizerVpcConfiguration]
    #
    # @!attribute [rw] compaction_configuration
    #   The configuration for a compaction optimizer. This configuration
    #   defines how data files in your table will be compacted to improve
    #   query performance and reduce storage costs.
    #   @return [Types::CompactionConfiguration]
    #
    # @!attribute [rw] retention_configuration
    #   The configuration for a snapshot retention optimizer.
    #   @return [Types::RetentionConfiguration]
    #
    # @!attribute [rw] orphan_file_deletion_configuration
    #   The configuration for an orphan file deletion optimizer.
    #   @return [Types::OrphanFileDeletionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableOptimizerConfiguration AWS API Documentation
    #
    class TableOptimizerConfiguration < Struct.new(
      :role_arn,
      :enabled,
      :vpc_configuration,
      :compaction_configuration,
      :retention_configuration,
      :orphan_file_deletion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details for a table optimizer run.
    #
    # @!attribute [rw] event_type
    #   An event type representing the status of the table optimizer run.
    #   @return [String]
    #
    # @!attribute [rw] start_timestamp
    #   Represents the epoch timestamp at which the compaction job was
    #   started within Lake Formation.
    #   @return [Time]
    #
    # @!attribute [rw] end_timestamp
    #   Represents the epoch timestamp at which the compaction job ended.
    #   @return [Time]
    #
    # @!attribute [rw] metrics
    #   A `RunMetrics` object containing metrics for the optimizer run.
    #
    #   This member is deprecated. See the individual metric members for
    #   compaction, retention, and orphan file deletion.
    #   @return [Types::RunMetrics]
    #
    # @!attribute [rw] error
    #   An error that occured during the optimizer run.
    #   @return [String]
    #
    # @!attribute [rw] compaction_metrics
    #   A `CompactionMetrics` object containing metrics for the optimizer
    #   run.
    #   @return [Types::CompactionMetrics]
    #
    # @!attribute [rw] compaction_strategy
    #   The strategy used for the compaction run. Indicates which algorithm
    #   was applied to determine how files were selected and combined during
    #   the compaction process. Valid values are:
    #
    #   * `binpack`: Combines small files into larger files, typically
    #     targeting sizes over 100MB, while applying any pending deletes.
    #     This is the recommended compaction strategy for most use cases.
    #
    #   * `sort`: Organizes data based on specified columns which are sorted
    #     hierarchically during compaction, improving query performance for
    #     filtered operations. This strategy is recommended when your
    #     queries frequently filter on specific columns. To use this
    #     strategy, you must first define a sort order in your Iceberg table
    #     properties using the `sort_order` table property.
    #
    #   * `z-order`: Optimizes data organization by blending multiple
    #     attributes into a single scalar value that can be used for
    #     sorting, allowing efficient querying across multiple dimensions.
    #     This strategy is recommended when you need to query data across
    #     multiple dimensions simultaneously. To use this strategy, you must
    #     first define a sort order in your Iceberg table properties using
    #     the `sort_order` table property.
    #   @return [String]
    #
    # @!attribute [rw] retention_metrics
    #   A `RetentionMetrics` object containing metrics for the optimizer
    #   run.
    #   @return [Types::RetentionMetrics]
    #
    # @!attribute [rw] orphan_file_deletion_metrics
    #   An `OrphanFileDeletionMetrics` object containing metrics for the
    #   optimizer run.
    #   @return [Types::OrphanFileDeletionMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableOptimizerRun AWS API Documentation
    #
    class TableOptimizerRun < Struct.new(
      :event_type,
      :start_timestamp,
      :end_timestamp,
      :metrics,
      :error,
      :compaction_metrics,
      :compaction_strategy,
      :retention_metrics,
      :orphan_file_deletion_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes the VPC configuration for a table optimizer.
    #
    # This configuration is necessary to perform optimization on tables that
    # are in a customer VPC.
    #
    # @note TableOptimizerVpcConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TableOptimizerVpcConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TableOptimizerVpcConfiguration corresponding to the set member.
    #
    # @!attribute [rw] glue_connection_name
    #   The name of the Glue connection used for the VPC for the table
    #   optimizer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableOptimizerVpcConfiguration AWS API Documentation
    #
    class TableOptimizerVpcConfiguration < Struct.new(
      :glue_connection_name,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GlueConnectionName < TableOptimizerVpcConfiguration; end
      class Unknown < TableOptimizerVpcConfiguration; end
    end

    # A structure containing information about the state of an asynchronous
    # change to a table.
    #
    # @!attribute [rw] requested_by
    #   The ARN of the user who requested the asynchronous change.
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   The ARN of the user to last manually alter the asynchronous change
    #   (requesting cancellation, etc).
    #   @return [String]
    #
    # @!attribute [rw] request_time
    #   An ISO 8601 formatted date string indicating the time that the
    #   change was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   An ISO 8601 formatted date string indicating the time that the state
    #   was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] action
    #   Indicates which action was called on the table, currently only
    #   `CREATE` or `UPDATE`.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   A generic status for the change in progress, such as QUEUED,
    #   IN\_PROGRESS, SUCCESS, or FAILED.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   An error that will only appear when the state is "FAILED". This is
    #   a parent level exception message, there may be different `Error`s
    #   for each dialect.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] details
    #   A `StatusDetails` object with information about the requested
    #   change.
    #   @return [Types::StatusDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableStatus AWS API Documentation
    #
    class TableStatus < Struct.new(
      :requested_by,
      :updated_by,
      :request_time,
      :update_time,
      :action,
      :state,
      :error,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a version of a table.
    #
    # @!attribute [rw] table
    #   The table in question.
    #   @return [Types::Table]
    #
    # @!attribute [rw] version_id
    #   The ID value that identifies this table version. A `VersionId` is a
    #   string representation of an integer. Each version is incremented by
    #   1.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableVersion AWS API Documentation
    #
    class TableVersion < Struct.new(
      :table,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error record for table-version operations.
    #
    # @!attribute [rw] table_name
    #   The name of the table in question.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID value of the version in question. A `VersionID` is a string
    #   representation of an integer. Each version is incremented by 1.
    #   @return [String]
    #
    # @!attribute [rw] error_detail
    #   The details about the error.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableVersionError AWS API Documentation
    #
    class TableVersionError < Struct.new(
      :table_name,
      :version_id,
      :error_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `Tag` object represents a label that you can assign to an Amazon
    # Web Services resource. Each tag consists of a key and an optional
    # value, both of which you define.
    #
    # For more information about tags, and controlling access to resources
    # in Glue, see [Amazon Web Services Tags in Glue][1] and [Specifying
    # Glue Resource ARNs][2] in the developer guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    # [2]: https://docs.aws.amazon.com/glue/latest/dg/glue-specifying-resource-arns.html
    #
    # @!attribute [rw] key
    #   The tag key. The key is required when you create a tag on an object.
    #   The key is case-sensitive, and must not contain the prefix aws.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value. The value is optional when you create a tag on an
    #   object. The value is case-sensitive, and must not contain the prefix
    #   aws.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the Glue resource to which to add the tags. For more
    #   information about Glue resource ARNs, see the [Glue ARN string
    #   pattern][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id
    #   @return [String]
    #
    # @!attribute [rw] tags_to_add
    #   Tags to add to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags_to_add)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The resource properties associated with the integration target.
    #
    # @!attribute [rw] role_arn
    #   The IAM role to access the Glue database.
    #   @return [String]
    #
    # @!attribute [rw] kms_arn
    #   The ARN of the KMS key used for encryption.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The Glue network connection to configure the Glue job running in the
    #   customer VPC.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_arn
    #   The ARN of an Eventbridge event bus to receive the integration
    #   status notification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TargetProcessingProperties AWS API Documentation
    #
    class TargetProcessingProperties < Struct.new(
      :role_arn,
      :kms_arn,
      :connection_name,
      :event_bus_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes a target catalog for resource linking.
    #
    # @!attribute [rw] catalog_arn
    #   The Amazon Resource Name (ARN) of the catalog resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TargetRedshiftCatalog AWS API Documentation
    #
    class TargetRedshiftCatalog < Struct.new(
      :catalog_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target resource could not be found.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TargetResourceNotFound AWS API Documentation
    #
    class TargetResourceNotFound < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties used by the target leg to partition the data on the target.
    #
    # @!attribute [rw] unnest_spec
    #   Specifies how nested objects are flattened to top-level elements.
    #   Valid values are: "TOPLEVEL", "FULL", or "NOUNNEST".
    #   @return [String]
    #
    # @!attribute [rw] partition_spec
    #   Determines the file layout on the target.
    #   @return [Array<Types::IntegrationPartition>]
    #
    # @!attribute [rw] target_table_name
    #   The optional name of a target table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TargetTableConfig AWS API Documentation
    #
    class TargetTableConfig < Struct.new(
      :unnest_spec,
      :partition_spec,
      :target_table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sampling parameters that are associated with the machine learning
    # transform.
    #
    # @!attribute [rw] transform_id
    #   The unique identifier for the transform.
    #   @return [String]
    #
    # @!attribute [rw] task_run_id
    #   The unique identifier for this task run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the requested task run.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The names of the log group for secure logging, associated with this
    #   task run.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   Specifies configuration properties associated with this task run.
    #   @return [Types::TaskRunProperties]
    #
    # @!attribute [rw] error_string
    #   The list of error strings associated with this task run.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time that this task run started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The last point in time that the requested task run was updated.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The last point in time that the requested task run was completed.
    #   @return [Time]
    #
    # @!attribute [rw] execution_time
    #   The amount of time (in seconds) that the task run consumed
    #   resources.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TaskRun AWS API Documentation
    #
    class TaskRun < Struct.new(
      :transform_id,
      :task_run_id,
      :status,
      :log_group_name,
      :properties,
      :error_string,
      :started_on,
      :last_modified_on,
      :completed_on,
      :execution_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The criteria that are used to filter the task runs for the machine
    # learning transform.
    #
    # @!attribute [rw] task_run_type
    #   The type of task run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the task run.
    #   @return [String]
    #
    # @!attribute [rw] started_before
    #   Filter on task runs started before this date.
    #   @return [Time]
    #
    # @!attribute [rw] started_after
    #   Filter on task runs started after this date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TaskRunFilterCriteria AWS API Documentation
    #
    class TaskRunFilterCriteria < Struct.new(
      :task_run_type,
      :status,
      :started_before,
      :started_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration properties for the task run.
    #
    # @!attribute [rw] task_type
    #   The type of task run.
    #   @return [String]
    #
    # @!attribute [rw] import_labels_task_run_properties
    #   The configuration properties for an importing labels task run.
    #   @return [Types::ImportLabelsTaskRunProperties]
    #
    # @!attribute [rw] export_labels_task_run_properties
    #   The configuration properties for an exporting labels task run.
    #   @return [Types::ExportLabelsTaskRunProperties]
    #
    # @!attribute [rw] labeling_set_generation_task_run_properties
    #   The configuration properties for a labeling set generation task run.
    #   @return [Types::LabelingSetGenerationTaskRunProperties]
    #
    # @!attribute [rw] find_matches_task_run_properties
    #   The configuration properties for a find matches task run.
    #   @return [Types::FindMatchesTaskRunProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TaskRunProperties AWS API Documentation
    #
    class TaskRunProperties < Struct.new(
      :task_type,
      :import_labels_task_run_properties,
      :export_labels_task_run_properties,
      :labeling_set_generation_task_run_properties,
      :find_matches_task_run_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sorting criteria that are used to sort the list of task runs for
    # the machine learning transform.
    #
    # @!attribute [rw] column
    #   The column to be used to sort the list of task runs for the machine
    #   learning transform.
    #   @return [String]
    #
    # @!attribute [rw] sort_direction
    #   The sort direction to be used to sort the list of task runs for the
    #   machine learning transform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TaskRunSortCriteria AWS API Documentation
    #
    class TaskRunSortCriteria < Struct.new(
      :column,
      :sort_direction)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that is used to specify testing a connection to a service.
    #
    # @!attribute [rw] connection_type
    #   The type of connection to test. This operation is only available for
    #   the `JDBC` or `SALESFORCE` connection types.
    #   @return [String]
    #
    # @!attribute [rw] connection_properties
    #   The key-value pairs that define parameters for the connection.
    #
    #   JDBC connections use the following connection properties:
    #
    #   * Required: All of (`HOST`, `PORT`, `JDBC_ENGINE`) or
    #     `JDBC_CONNECTION_URL`.
    #
    #   * Required: All of (`USERNAME`, `PASSWORD`) or `SECRET_ID`.
    #
    #   * Optional: `JDBC_ENFORCE_SSL`, `CUSTOM_JDBC_CERT`,
    #     `CUSTOM_JDBC_CERT_STRING`, `SKIP_CUSTOM_JDBC_CERT_VALIDATION`.
    #     These parameters are used to configure SSL with JDBC.
    #
    #   SALESFORCE connections require the `AuthenticationConfiguration`
    #   member to be configured.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authentication_configuration
    #   A structure containing the authentication configuration in the
    #   TestConnection request. Required for a connection to Salesforce
    #   using OAuth authentication.
    #   @return [Types::AuthenticationConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TestConnectionInput AWS API Documentation
    #
    class TestConnectionInput < Struct.new(
      :connection_type,
      :connection_properties,
      :authentication_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_name
    #   Optional. The name of the connection to test. If only name is
    #   provided, the operation will get the connection and use that for
    #   testing.
    #   @return [String]
    #
    # @!attribute [rw] catalog_id
    #   The catalog ID where the connection resides.
    #   @return [String]
    #
    # @!attribute [rw] test_connection_input
    #   A structure that is used to specify testing a connection to a
    #   service.
    #   @return [Types::TestConnectionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TestConnectionRequest AWS API Documentation
    #
    class TestConnectionRequest < Struct.new(
      :connection_name,
      :catalog_id,
      :test_connection_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TestConnectionResponse AWS API Documentation
    #
    class TestConnectionResponse < Aws::EmptyStructure; end

    # The throttling threshhold was exceeded.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A timestamp filter.
    #
    # @!attribute [rw] recorded_before
    #   The timestamp before which statistics should be included in the
    #   results.
    #   @return [Time]
    #
    # @!attribute [rw] recorded_after
    #   The timestamp after which statistics should be included in the
    #   results.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TimestampFilter AWS API Documentation
    #
    class TimestampFilter < Struct.new(
      :recorded_before,
      :recorded_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # A timestamped inclusion annotation.
    #
    # @!attribute [rw] value
    #   The inclusion annotation value.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_on
    #   The timestamp when the inclusion annotation was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TimestampedInclusionAnnotation AWS API Documentation
    #
    class TimestampedInclusionAnnotation < Struct.new(
      :value,
      :last_modified_on)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the parameters in the config file of the dynamic transform.
    #
    # @!attribute [rw] name
    #   Specifies the name of the parameter in the config file of the
    #   dynamic transform.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies the parameter type in the config file of the dynamic
    #   transform.
    #   @return [String]
    #
    # @!attribute [rw] validation_rule
    #   Specifies the validation rule in the config file of the dynamic
    #   transform.
    #   @return [String]
    #
    # @!attribute [rw] validation_message
    #   Specifies the validation message in the config file of the dynamic
    #   transform.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Specifies the value of the parameter in the config file of the
    #   dynamic transform.
    #   @return [Array<String>]
    #
    # @!attribute [rw] list_type
    #   Specifies the list type of the parameter in the config file of the
    #   dynamic transform.
    #   @return [String]
    #
    # @!attribute [rw] is_optional
    #   Specifies whether the parameter is optional or not in the config
    #   file of the dynamic transform.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TransformConfigParameter AWS API Documentation
    #
    class TransformConfigParameter < Struct.new(
      :name,
      :type,
      :validation_rule,
      :validation_message,
      :value,
      :list_type,
      :is_optional)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption-at-rest settings of the transform that apply to
    # accessing user data. Machine learning transforms can access user data
    # encrypted in Amazon S3 using KMS.
    #
    # Additionally, imported labels and trained transforms can now be
    # encrypted using a customer provided KMS key.
    #
    # @!attribute [rw] ml_user_data_encryption
    #   An `MLUserDataEncryption` object containing the encryption mode and
    #   customer-provided KMS key ID.
    #   @return [Types::MLUserDataEncryption]
    #
    # @!attribute [rw] task_run_security_configuration_name
    #   The name of the security configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TransformEncryption AWS API Documentation
    #
    class TransformEncryption < Struct.new(
      :ml_user_data_encryption,
      :task_run_security_configuration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The criteria used to filter the machine learning transforms.
    #
    # @!attribute [rw] name
    #   A unique transform name that is used to filter the machine learning
    #   transforms.
    #   @return [String]
    #
    # @!attribute [rw] transform_type
    #   The type of machine learning transform that is used to filter the
    #   machine learning transforms.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filters the list of machine learning transforms by the last known
    #   status of the transforms (to indicate whether a transform can be
    #   used or not). One of "NOT\_READY", "READY", or "DELETING".
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   This value determines which version of Glue this machine learning
    #   transform is compatible with. Glue 1.0 is recommended for most
    #   customers. If the value is not set, the Glue compatibility defaults
    #   to Glue 0.9. For more information, see [Glue Versions][1] in the
    #   developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions
    #   @return [String]
    #
    # @!attribute [rw] created_before
    #   The time and date before which the transforms were created.
    #   @return [Time]
    #
    # @!attribute [rw] created_after
    #   The time and date after which the transforms were created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_before
    #   Filter on transforms last modified before this date.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_after
    #   Filter on transforms last modified after this date.
    #   @return [Time]
    #
    # @!attribute [rw] schema
    #   Filters on datasets with a specific schema. The `Map<Column, Type>`
    #   object is an array of key-value pairs representing the schema this
    #   transform accepts, where `Column` is the name of a column, and
    #   `Type` is the type of the data such as an integer or string. Has an
    #   upper bound of 100 columns.
    #   @return [Array<Types::SchemaColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TransformFilterCriteria AWS API Documentation
    #
    class TransformFilterCriteria < Struct.new(
      :name,
      :transform_type,
      :status,
      :glue_version,
      :created_before,
      :created_after,
      :last_modified_before,
      :last_modified_after,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # The algorithm-specific parameters that are associated with the machine
    # learning transform.
    #
    # @!attribute [rw] transform_type
    #   The type of machine learning transform.
    #
    #   For information about the types of machine learning transforms, see
    #   [Creating Machine Learning Transforms][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job-machine-learning-transform.html
    #   @return [String]
    #
    # @!attribute [rw] find_matches_parameters
    #   The parameters for the find matches algorithm.
    #   @return [Types::FindMatchesParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TransformParameters AWS API Documentation
    #
    class TransformParameters < Struct.new(
      :transform_type,
      :find_matches_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sorting criteria that are associated with the machine learning
    # transform.
    #
    # @!attribute [rw] column
    #   The column to be used in the sorting criteria that are associated
    #   with the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] sort_direction
    #   The sort direction to be used in the sorting criteria that are
    #   associated with the machine learning transform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TransformSortCriteria AWS API Documentation
    #
    class TransformSortCriteria < Struct.new(
      :column,
      :sort_direction)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a specific trigger.
    #
    # @!attribute [rw] name
    #   The name of the trigger.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow associated with the trigger.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of trigger that this is.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the trigger.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of this trigger.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The actions initiated by this trigger.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] predicate
    #   The predicate of this trigger, which defines when it will fire.
    #   @return [Types::Predicate]
    #
    # @!attribute [rw] event_batching_condition
    #   Batch condition that must be met (specified number of events
    #   received or batch time window expired) before EventBridge event
    #   trigger fires.
    #   @return [Types::EventBatchingCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Trigger AWS API Documentation
    #
    class Trigger < Struct.new(
      :name,
      :workflow_name,
      :id,
      :type,
      :state,
      :description,
      :schedule,
      :actions,
      :predicate,
      :event_batching_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a Trigger node present in the workflow.
    #
    # @!attribute [rw] trigger
    #   The information of the trigger represented by the trigger node.
    #   @return [Types::Trigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TriggerNodeDetails AWS API Documentation
    #
    class TriggerNodeDetails < Struct.new(
      :trigger)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure used to provide information used to update a trigger. This
    # object updates the previous trigger definition by overwriting it
    # completely.
    #
    # @!attribute [rw] name
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of this trigger.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The actions initiated by this trigger.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] predicate
    #   The predicate of this trigger, which defines when it will fire.
    #   @return [Types::Predicate]
    #
    # @!attribute [rw] event_batching_condition
    #   Batch condition that must be met (specified number of events
    #   received or batch time window expired) before EventBridge event
    #   trigger fires.
    #   @return [Types::EventBatchingCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TriggerUpdate AWS API Documentation
    #
    class TriggerUpdate < Struct.new(
      :name,
      :description,
      :schedule,
      :actions,
      :predicate,
      :event_batching_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # A partition that contains unfiltered metadata.
    #
    # @!attribute [rw] partition
    #   The partition object.
    #   @return [Types::Partition]
    #
    # @!attribute [rw] authorized_columns
    #   The list of columns the user has permissions to access.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_registered_with_lake_formation
    #   A Boolean value indicating that the partition location is registered
    #   with Lake Formation.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UnfilteredPartition AWS API Documentation
    #
    class UnfilteredPartition < Struct.new(
      :partition,
      :authorized_columns,
      :is_registered_with_lake_formation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a transform that combines the rows from two or more datasets
    # into a single result.
    #
    # @!attribute [rw] name
    #   The name of the transform node.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The node ID inputs to the transform.
    #   @return [Array<String>]
    #
    # @!attribute [rw] union_type
    #   Indicates the type of Union transform.
    #
    #   Specify `ALL` to join all rows from data sources to the resulting
    #   DynamicFrame. The resulting union does not remove duplicate rows.
    #
    #   Specify `DISTINCT` to remove duplicate rows in the resulting
    #   DynamicFrame.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Union AWS API Documentation
    #
    class Union < Struct.new(
      :name,
      :inputs,
      :union_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   the tags.
    #   @return [String]
    #
    # @!attribute [rw] tags_to_remove
    #   Tags to remove from this resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tags_to_remove)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_location
    #   Specifies a path in Amazon S3 where the blueprint is published.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateBlueprintRequest AWS API Documentation
    #
    class UpdateBlueprintRequest < Struct.new(
      :name,
      :description,
      :blueprint_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Returns the name of the blueprint that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateBlueprintResponse AWS API Documentation
    #
    class UpdateBlueprintResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the catalog.
    #   @return [String]
    #
    # @!attribute [rw] catalog_input
    #   A `CatalogInput` object specifying the new properties of an existing
    #   catalog.
    #   @return [Types::CatalogInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCatalogRequest AWS API Documentation
    #
    class UpdateCatalogRequest < Struct.new(
      :catalog_id,
      :catalog_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCatalogResponse AWS API Documentation
    #
    class UpdateCatalogResponse < Aws::EmptyStructure; end

    # @!attribute [rw] grok_classifier
    #   A `GrokClassifier` object with updated fields.
    #   @return [Types::UpdateGrokClassifierRequest]
    #
    # @!attribute [rw] xml_classifier
    #   An `XMLClassifier` object with updated fields.
    #   @return [Types::UpdateXMLClassifierRequest]
    #
    # @!attribute [rw] json_classifier
    #   A `JsonClassifier` object with updated fields.
    #   @return [Types::UpdateJsonClassifierRequest]
    #
    # @!attribute [rw] csv_classifier
    #   A `CsvClassifier` object with updated fields.
    #   @return [Types::UpdateCsvClassifierRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateClassifierRequest AWS API Documentation
    #
    class UpdateClassifierRequest < Struct.new(
      :grok_classifier,
      :xml_classifier,
      :json_classifier,
      :csv_classifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateClassifierResponse AWS API Documentation
    #
    class UpdateClassifierResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partitions in question reside.
    #   If none is supplied, the Amazon Web Services account ID is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partitions reside.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partitions' table.
    #   @return [String]
    #
    # @!attribute [rw] partition_values
    #   A list of partition values identifying the partition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] column_statistics_list
    #   A list of the column statistics.
    #   @return [Array<Types::ColumnStatistics>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateColumnStatisticsForPartitionRequest AWS API Documentation
    #
    class UpdateColumnStatisticsForPartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      :column_statistics_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Error occurred during updating column statistics data.
    #   @return [Array<Types::ColumnStatisticsError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateColumnStatisticsForPartitionResponse AWS API Documentation
    #
    class UpdateColumnStatisticsForPartitionResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partitions in question reside.
    #   If none is supplied, the Amazon Web Services account ID is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partitions reside.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partitions' table.
    #   @return [String]
    #
    # @!attribute [rw] column_statistics_list
    #   A list of the column statistics.
    #   @return [Array<Types::ColumnStatistics>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateColumnStatisticsForTableRequest AWS API Documentation
    #
    class UpdateColumnStatisticsForTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :column_statistics_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   List of ColumnStatisticsErrors.
    #   @return [Array<Types::ColumnStatisticsError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateColumnStatisticsForTableResponse AWS API Documentation
    #
    class UpdateColumnStatisticsForTableResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the database where the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table for which to generate column statistics.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The role used for running the column statistics.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A schedule for running the column statistics, specified in CRON
    #   syntax.
    #   @return [String]
    #
    # @!attribute [rw] column_name_list
    #   A list of column names for which to run statistics.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sample_size
    #   The percentage of data to sample.
    #   @return [Float]
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the database resides.
    #   @return [String]
    #
    # @!attribute [rw] security_configuration
    #   Name of the security configuration that is used to encrypt
    #   CloudWatch logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateColumnStatisticsTaskSettingsRequest AWS API Documentation
    #
    class UpdateColumnStatisticsTaskSettingsRequest < Struct.new(
      :database_name,
      :table_name,
      :role,
      :schedule,
      :column_name_list,
      :sample_size,
      :catalog_id,
      :security_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateColumnStatisticsTaskSettingsResponse AWS API Documentation
    #
    class UpdateColumnStatisticsTaskSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none
    #   is provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the connection definition to update.
    #   @return [String]
    #
    # @!attribute [rw] connection_input
    #   A `ConnectionInput` object that redefines the connection in
    #   question.
    #   @return [Types::ConnectionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateConnectionRequest AWS API Documentation
    #
    class UpdateConnectionRequest < Struct.new(
      :catalog_id,
      :name,
      :connection_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateConnectionResponse AWS API Documentation
    #
    class UpdateConnectionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   Name of the new crawler.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM role or Amazon Resource Name (ARN) of an IAM role that is
    #   used by the new crawler to access customer resources.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The Glue database where results are stored, such as:
    #   `arn:aws:daylight:us-east-1::database/sometable/*`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the new crawler.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A list of targets to crawl.
    #   @return [Types::CrawlerTargets]
    #
    # @!attribute [rw] schedule
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #   @return [String]
    #
    # @!attribute [rw] classifiers
    #   A list of custom classifiers that the user has registered. By
    #   default, all built-in classifiers are included in a crawl, but these
    #   custom classifiers always override the default classifiers for a
    #   given classification.
    #   @return [Array<String>]
    #
    # @!attribute [rw] table_prefix
    #   The table prefix used for catalog tables that are created.
    #   @return [String]
    #
    # @!attribute [rw] schema_change_policy
    #   The policy for the crawler's update and deletion behavior.
    #   @return [Types::SchemaChangePolicy]
    #
    # @!attribute [rw] recrawl_policy
    #   A policy that specifies whether to crawl the entire dataset again,
    #   or to crawl only folders that were added since the last crawler run.
    #   @return [Types::RecrawlPolicy]
    #
    # @!attribute [rw] lineage_configuration
    #   Specifies data lineage configuration settings for the crawler.
    #   @return [Types::LineageConfiguration]
    #
    # @!attribute [rw] lake_formation_configuration
    #   Specifies Lake Formation configuration settings for the crawler.
    #   @return [Types::LakeFormationConfiguration]
    #
    # @!attribute [rw] configuration
    #   Crawler configuration information. This versioned JSON string allows
    #   users to specify aspects of a crawler's behavior. For more
    #   information, see [Setting crawler configuration options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html
    #   @return [String]
    #
    # @!attribute [rw] crawler_security_configuration
    #   The name of the `SecurityConfiguration` structure to be used by this
    #   crawler.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerRequest AWS API Documentation
    #
    class UpdateCrawlerRequest < Struct.new(
      :name,
      :role,
      :database_name,
      :description,
      :targets,
      :schedule,
      :classifiers,
      :table_prefix,
      :schema_change_policy,
      :recrawl_policy,
      :lineage_configuration,
      :lake_formation_configuration,
      :configuration,
      :crawler_security_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerResponse AWS API Documentation
    #
    class UpdateCrawlerResponse < Aws::EmptyStructure; end

    # @!attribute [rw] crawler_name
    #   The name of the crawler whose schedule to update.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The updated `cron` expression used to specify the schedule (see
    #   [Time-Based Schedules for Jobs and Crawlers][1]. For example, to run
    #   something every day at 12:15 UTC, you would specify: `cron(15 12 * *
    #   ? *)`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerScheduleRequest AWS API Documentation
    #
    class UpdateCrawlerScheduleRequest < Struct.new(
      :crawler_name,
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerScheduleResponse AWS API Documentation
    #
    class UpdateCrawlerScheduleResponse < Aws::EmptyStructure; end

    # Specifies a custom CSV classifier to be updated.
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] delimiter
    #   A custom symbol to denote what separates each column entry in the
    #   row.
    #   @return [String]
    #
    # @!attribute [rw] quote_symbol
    #   A custom symbol to denote what combines content into a single column
    #   value. It must be different from the column delimiter.
    #   @return [String]
    #
    # @!attribute [rw] contains_header
    #   Indicates whether the CSV file contains a header.
    #   @return [String]
    #
    # @!attribute [rw] header
    #   A list of strings representing column names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disable_value_trimming
    #   Specifies not to trim values before identifying the type of column
    #   values. The default value is true.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_single_column
    #   Enables the processing of files that contain only one column.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_datatype_configured
    #   Specifies the configuration of custom datatypes.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_datatypes
    #   Specifies a list of supported custom datatypes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] serde
    #   Sets the SerDe for processing CSV in the classifier, which will be
    #   applied in the Data Catalog. Valid values are `OpenCSVSerDe`,
    #   `LazySimpleSerDe`, and `None`. You can specify the `None` value when
    #   you want the crawler to do the detection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCsvClassifierRequest AWS API Documentation
    #
    class UpdateCsvClassifierRequest < Struct.new(
      :name,
      :delimiter,
      :quote_symbol,
      :contains_header,
      :header,
      :disable_value_trimming,
      :allow_single_column,
      :custom_datatype_configured,
      :custom_datatypes,
      :serde)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the data quality ruleset.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the ruleset.
    #   @return [String]
    #
    # @!attribute [rw] ruleset
    #   A Data Quality Definition Language (DQDL) ruleset. For more
    #   information, see the Glue developer guide.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDataQualityRulesetRequest AWS API Documentation
    #
    class UpdateDataQualityRulesetRequest < Struct.new(
      :name,
      :description,
      :ruleset)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the data quality ruleset.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the ruleset.
    #   @return [String]
    #
    # @!attribute [rw] ruleset
    #   A Data Quality Definition Language (DQDL) ruleset. For more
    #   information, see the Glue developer guide.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDataQualityRulesetResponse AWS API Documentation
    #
    class UpdateDataQualityRulesetResponse < Struct.new(
      :name,
      :description,
      :ruleset)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the metadata database resides.
    #   If none is provided, the Amazon Web Services account ID is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the database to update in the catalog. For Hive
    #   compatibility, this is folded to lowercase.
    #   @return [String]
    #
    # @!attribute [rw] database_input
    #   A `DatabaseInput` object specifying the new definition of the
    #   metadata database in the catalog.
    #   @return [Types::DatabaseInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDatabaseRequest AWS API Documentation
    #
    class UpdateDatabaseRequest < Struct.new(
      :catalog_id,
      :name,
      :database_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDatabaseResponse AWS API Documentation
    #
    class UpdateDatabaseResponse < Aws::EmptyStructure; end

    # @!attribute [rw] endpoint_name
    #   The name of the `DevEndpoint` to be updated.
    #   @return [String]
    #
    # @!attribute [rw] public_key
    #   The public key for the `DevEndpoint` to use.
    #   @return [String]
    #
    # @!attribute [rw] add_public_keys
    #   The list of public keys for the `DevEndpoint` to use.
    #   @return [Array<String>]
    #
    # @!attribute [rw] delete_public_keys
    #   The list of public keys to be deleted from the `DevEndpoint`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] custom_libraries
    #   Custom Python or Java libraries to be loaded in the `DevEndpoint`.
    #   @return [Types::DevEndpointCustomLibraries]
    #
    # @!attribute [rw] update_etl_libraries
    #   `True` if the list of custom libraries to be loaded in the
    #   development endpoint needs to be updated, or `False` if otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_arguments
    #   The list of argument keys to be deleted from the map of arguments
    #   used to configure the `DevEndpoint`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] add_arguments
    #   The map of arguments to add the map of arguments used to configure
    #   the `DevEndpoint`.
    #
    #   Valid arguments are:
    #
    #   * `"--enable-glue-datacatalog": ""`
    #
    #   ^
    #
    #   You can specify a version of Python support for development
    #   endpoints by using the `Arguments` parameter in the
    #   `CreateDevEndpoint` or `UpdateDevEndpoint` APIs. If no arguments are
    #   provided, the version defaults to Python 2.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDevEndpointRequest AWS API Documentation
    #
    class UpdateDevEndpointRequest < Struct.new(
      :endpoint_name,
      :public_key,
      :add_public_keys,
      :delete_public_keys,
      :custom_libraries,
      :update_etl_libraries,
      :delete_arguments,
      :add_arguments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDevEndpointResponse AWS API Documentation
    #
    class UpdateDevEndpointResponse < Aws::EmptyStructure; end

    # Specifies a grok classifier to update when passed to
    # `UpdateClassifier`.
    #
    # @!attribute [rw] name
    #   The name of the `GrokClassifier`.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   An identifier of the data format that the classifier matches, such
    #   as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.
    #   @return [String]
    #
    # @!attribute [rw] grok_pattern
    #   The grok pattern used by this classifier.
    #   @return [String]
    #
    # @!attribute [rw] custom_patterns
    #   Optional custom grok patterns used by this classifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateGrokClassifierRequest AWS API Documentation
    #
    class UpdateGrokClassifierRequest < Struct.new(
      :name,
      :classification,
      :grok_pattern,
      :custom_patterns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input parameters specific to updating Apache Iceberg tables in Glue
    # Data Catalog, containing the update operations to be applied to an
    # existing Iceberg table.
    #
    # @!attribute [rw] update_iceberg_table_input
    #   The specific update operations to be applied to the Iceberg table,
    #   containing a list of updates that define the new state of the table
    #   including schema, partitions, and properties.
    #   @return [Types::UpdateIcebergTableInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateIcebergInput AWS API Documentation
    #
    class UpdateIcebergInput < Struct.new(
      :update_iceberg_table_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the update operations to be applied to an existing Iceberg
    # table in AWS Glue Data Catalog, defining the new state of the table
    # metadata.
    #
    # @!attribute [rw] updates
    #   The list of table update operations that specify the changes to be
    #   made to the Iceberg table, including schema modifications, partition
    #   specifications, and table properties.
    #   @return [Array<Types::IcebergTableUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateIcebergTableInput AWS API Documentation
    #
    class UpdateIcebergTableInput < Struct.new(
      :updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The connection ARN of the source, or the database ARN of the target.
    #   @return [String]
    #
    # @!attribute [rw] source_processing_properties
    #   The resource properties associated with the integration source.
    #   @return [Types::SourceProcessingProperties]
    #
    # @!attribute [rw] target_processing_properties
    #   The resource properties associated with the integration target.
    #   @return [Types::TargetProcessingProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateIntegrationResourcePropertyRequest AWS API Documentation
    #
    class UpdateIntegrationResourcePropertyRequest < Struct.new(
      :resource_arn,
      :source_processing_properties,
      :target_processing_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The connection ARN of the source, or the database ARN of the target.
    #   @return [String]
    #
    # @!attribute [rw] source_processing_properties
    #   The resource properties associated with the integration source.
    #   @return [Types::SourceProcessingProperties]
    #
    # @!attribute [rw] target_processing_properties
    #   The resource properties associated with the integration target.
    #   @return [Types::TargetProcessingProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateIntegrationResourcePropertyResponse AWS API Documentation
    #
    class UpdateIntegrationResourcePropertyResponse < Struct.new(
      :resource_arn,
      :source_processing_properties,
      :target_processing_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The connection ARN of the source, or the database ARN of the target.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table to be replicated.
    #   @return [String]
    #
    # @!attribute [rw] source_table_config
    #   A structure for the source table configuration.
    #   @return [Types::SourceTableConfig]
    #
    # @!attribute [rw] target_table_config
    #   A structure for the target table configuration.
    #   @return [Types::TargetTableConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateIntegrationTablePropertiesRequest AWS API Documentation
    #
    class UpdateIntegrationTablePropertiesRequest < Struct.new(
      :resource_arn,
      :table_name,
      :source_table_config,
      :target_table_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateIntegrationTablePropertiesResponse AWS API Documentation
    #
    class UpdateIntegrationTablePropertiesResponse < Aws::EmptyStructure; end

    # @!attribute [rw] job_name
    #   The name of the Glue job to be synchronized to or from the remote
    #   repository.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider for the remote repository. Possible values: GITHUB,
    #   AWS\_CODE\_COMMIT, GITLAB, BITBUCKET.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the remote repository that contains the job artifacts.
    #   For BitBucket providers, `RepositoryName` should include
    #   `WorkspaceName`. Use the format `<WorkspaceName>/<RepositoryName>`.
    #   @return [String]
    #
    # @!attribute [rw] repository_owner
    #   The owner of the remote repository that contains the job artifacts.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   An optional branch in the remote repository.
    #   @return [String]
    #
    # @!attribute [rw] folder
    #   An optional folder in the remote repository.
    #   @return [String]
    #
    # @!attribute [rw] commit_id
    #   A commit ID for a commit in the remote repository.
    #   @return [String]
    #
    # @!attribute [rw] auth_strategy
    #   The type of authentication, which can be an authentication token
    #   stored in Amazon Web Services Secrets Manager, or a personal access
    #   token.
    #   @return [String]
    #
    # @!attribute [rw] auth_token
    #   The value of the authorization token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateJobFromSourceControlRequest AWS API Documentation
    #
    class UpdateJobFromSourceControlRequest < Struct.new(
      :job_name,
      :provider,
      :repository_name,
      :repository_owner,
      :branch_name,
      :folder,
      :commit_id,
      :auth_strategy,
      :auth_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the Glue job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateJobFromSourceControlResponse AWS API Documentation
    #
    class UpdateJobFromSourceControlResponse < Struct.new(
      :job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the job definition to update.
    #   @return [String]
    #
    # @!attribute [rw] job_update
    #   Specifies the values with which to update the job definition.
    #   Unspecified configuration is removed or reset to default values.
    #   @return [Types::JobUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateJobRequest AWS API Documentation
    #
    class UpdateJobRequest < Struct.new(
      :job_name,
      :job_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   Returns the name of the updated job definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateJobResponse AWS API Documentation
    #
    class UpdateJobResponse < Struct.new(
      :job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a JSON classifier to be updated.
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] json_path
    #   A `JsonPath` string defining the JSON data for the classifier to
    #   classify. Glue supports a subset of JsonPath, as described in
    #   [Writing JsonPath Custom Classifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateJsonClassifierRequest AWS API Documentation
    #
    class UpdateJsonClassifierRequest < Struct.new(
      :name,
      :json_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   A unique identifier that was generated when the transform was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name that you gave the transform when you created it.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the transform. The default is an empty string.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The configuration parameters that are specific to the transform type
    #   (algorithm) used. Conditionally dependent on the transform type.
    #   @return [Types::TransformParameters]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role with the
    #   required permissions.
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   This value determines which version of Glue this machine learning
    #   transform is compatible with. Glue 1.0 is recommended for most
    #   customers. If the value is not set, the Glue compatibility defaults
    #   to Glue 0.9. For more information, see [Glue Versions][1] in the
    #   developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The number of Glue data processing units (DPUs) that are allocated
    #   to task runs for this transform. You can allocate from 2 to 100
    #   DPUs; the default is 10. A DPU is a relative measure of processing
    #   power that consists of 4 vCPUs of compute capacity and 16 GB of
    #   memory. For more information, see the [Glue pricing page][1].
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when this task runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when this task runs.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The timeout for a task run for this transform in minutes. This is
    #   the maximum time that a task run for this transform can consume
    #   resources before it is terminated and enters `TIMEOUT` status. The
    #   default is 2,880 minutes (48 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry a task for this transform after
    #   a task run fails.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateMLTransformRequest AWS API Documentation
    #
    class UpdateMLTransformRequest < Struct.new(
      :transform_id,
      :name,
      :description,
      :parameters,
      :role,
      :glue_version,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :timeout,
      :max_retries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier for the transform that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateMLTransformResponse AWS API Documentation
    #
    class UpdateMLTransformResponse < Struct.new(
      :transform_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input parameters for updating open table format tables in GlueData
    # Catalog, serving as a wrapper for format-specific update operations
    # such as Apache Iceberg.
    #
    # @!attribute [rw] update_iceberg_input
    #   Apache Iceberg-specific update parameters that define the table
    #   modifications to be applied, including schema changes, partition
    #   specifications, and table properties.
    #   @return [Types::UpdateIcebergInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateOpenTableFormatInput AWS API Documentation
    #
    class UpdateOpenTableFormatInput < Struct.new(
      :update_iceberg_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partition to be updated
    #   resides. If none is provided, the Amazon Web Services account ID is
    #   used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table in which the partition to be updated is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] partition_value_list
    #   List of partition key values that define the partition to update.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_input
    #   The new partition object to update the partition to.
    #
    #   The `Values` property can't be changed. If you want to change the
    #   partition key values for a partition, delete and recreate the
    #   partition.
    #   @return [Types::PartitionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdatePartitionRequest AWS API Documentation
    #
    class UpdatePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_value_list,
      :partition_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdatePartitionResponse AWS API Documentation
    #
    class UpdatePartitionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] registry_id
    #   This is a wrapper structure that may contain the registry name and
    #   Amazon Resource Name (ARN).
    #   @return [Types::RegistryId]
    #
    # @!attribute [rw] description
    #   A description of the registry. If description is not provided, this
    #   field will not be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateRegistryInput AWS API Documentation
    #
    class UpdateRegistryInput < Struct.new(
      :registry_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_name
    #   The name of the updated registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource name (ARN) of the updated registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateRegistryResponse AWS API Documentation
    #
    class UpdateRegistryResponse < Struct.new(
      :registry_name,
      :registry_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_id
    #   This is a wrapper structure to contain schema identity fields. The
    #   structure contains:
    #
    #   * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    #     One of `SchemaArn` or `SchemaName` has to be provided.
    #
    #   * SchemaId$SchemaName: The name of the schema. One of `SchemaArn` or
    #     `SchemaName` has to be provided.
    #   @return [Types::SchemaId]
    #
    # @!attribute [rw] schema_version_number
    #   Version number required for check pointing. One of `VersionNumber`
    #   or `Compatibility` has to be provided.
    #   @return [Types::SchemaVersionNumber]
    #
    # @!attribute [rw] compatibility
    #   The new compatibility setting for the schema.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateSchemaInput AWS API Documentation
    #
    class UpdateSchemaInput < Struct.new(
      :schema_id,
      :schema_version_number,
      :compatibility,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] registry_name
    #   The name of the registry that contains the schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateSchemaResponse AWS API Documentation
    #
    class UpdateSchemaResponse < Struct.new(
      :schema_arn,
      :schema_name,
      :registry_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the Glue job to be synchronized to or from the remote
    #   repository.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider for the remote repository. Possible values: GITHUB,
    #   AWS\_CODE\_COMMIT, GITLAB, BITBUCKET.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the remote repository that contains the job artifacts.
    #   For BitBucket providers, `RepositoryName` should include
    #   `WorkspaceName`. Use the format `<WorkspaceName>/<RepositoryName>`.
    #   @return [String]
    #
    # @!attribute [rw] repository_owner
    #   The owner of the remote repository that contains the job artifacts.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   An optional branch in the remote repository.
    #   @return [String]
    #
    # @!attribute [rw] folder
    #   An optional folder in the remote repository.
    #   @return [String]
    #
    # @!attribute [rw] commit_id
    #   A commit ID for a commit in the remote repository.
    #   @return [String]
    #
    # @!attribute [rw] auth_strategy
    #   The type of authentication, which can be an authentication token
    #   stored in Amazon Web Services Secrets Manager, or a personal access
    #   token.
    #   @return [String]
    #
    # @!attribute [rw] auth_token
    #   The value of the authorization token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateSourceControlFromJobRequest AWS API Documentation
    #
    class UpdateSourceControlFromJobRequest < Struct.new(
      :job_name,
      :provider,
      :repository_name,
      :repository_owner,
      :branch_name,
      :folder,
      :commit_id,
      :auth_strategy,
      :auth_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the Glue job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateSourceControlFromJobResponse AWS API Documentation
    #
    class UpdateSourceControlFromJobResponse < Struct.new(
      :job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The Catalog ID of the table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database in the catalog in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of table optimizer.
    #   @return [String]
    #
    # @!attribute [rw] table_optimizer_configuration
    #   A `TableOptimizerConfiguration` object representing the
    #   configuration of a table optimizer.
    #   @return [Types::TableOptimizerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTableOptimizerRequest AWS API Documentation
    #
    class UpdateTableOptimizerRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :type,
      :table_optimizer_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTableOptimizerResponse AWS API Documentation
    #
    class UpdateTableOptimizerResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table resides. For
    #   Hive compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique identifier for the table within the specified database
    #   that will be created in the Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] table_input
    #   An updated `TableInput` object to define the metadata table in the
    #   catalog.
    #   @return [Types::TableInput]
    #
    # @!attribute [rw] skip_archive
    #   By default, `UpdateTable` always creates an archived version of the
    #   table before updating it. However, if `skipArchive` is set to true,
    #   `UpdateTable` does not create the archived version.
    #   @return [Boolean]
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID at which to update the table contents.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version ID at which to update the table contents.
    #   @return [String]
    #
    # @!attribute [rw] view_update_action
    #   The operation to be performed when updating the view.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   A flag that can be set to true to ignore matching storage descriptor
    #   and subobject matching requirements.
    #   @return [Boolean]
    #
    # @!attribute [rw] update_open_table_format_input
    #   Input parameters for updating open table format tables in GlueData
    #   Catalog, serving as a wrapper for format-specific update operations
    #   such as Apache Iceberg.
    #   @return [Types::UpdateOpenTableFormatInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTableRequest AWS API Documentation
    #
    class UpdateTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :table_input,
      :skip_archive,
      :transaction_id,
      :version_id,
      :view_update_action,
      :force,
      :update_open_table_format_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTableResponse AWS API Documentation
    #
    class UpdateTableResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the trigger to update.
    #   @return [String]
    #
    # @!attribute [rw] trigger_update
    #   The new values with which to update the trigger.
    #   @return [Types::TriggerUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTriggerRequest AWS API Documentation
    #
    class UpdateTriggerRequest < Struct.new(
      :name,
      :trigger_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trigger
    #   The resulting trigger definition.
    #   @return [Types::Trigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTriggerResponse AWS API Documentation
    #
    class UpdateTriggerResponse < Struct.new(
      :trigger)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the usage profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the usage profile.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   A `ProfileConfiguration` object specifying the job and session
    #   values for the profile.
    #   @return [Types::ProfileConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateUsageProfileRequest AWS API Documentation
    #
    class UpdateUsageProfileRequest < Struct.new(
      :name,
      :description,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the usage profile that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateUsageProfileResponse AWS API Documentation
    #
    class UpdateUsageProfileResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the function to be updated is
    #   located. If none is provided, the Amazon Web Services account ID is
    #   used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the function to be updated is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] function_input
    #   A `FunctionInput` object that redefines the function in the Data
    #   Catalog.
    #   @return [Types::UserDefinedFunctionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateUserDefinedFunctionRequest AWS API Documentation
    #
    class UpdateUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_name,
      :function_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateUserDefinedFunctionResponse AWS API Documentation
    #
    class UpdateUserDefinedFunctionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   Name of the workflow to be updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] default_run_properties
    #   A collection of properties to be used as part of each execution of
    #   the workflow.
    #
    #   Run properties may be logged. Do not pass plaintext secrets as
    #   properties. Retrieve secrets from a Glue Connection, Amazon Web
    #   Services Secrets Manager or other secret management mechanism if you
    #   intend to use them within the workflow run.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_concurrent_runs
    #   You can use this parameter to prevent unwanted multiple updates to
    #   data, to control costs, or in some cases, to prevent exceeding the
    #   maximum number of concurrent runs of any of the component jobs. If
    #   you leave this parameter blank, there is no limit to the number of
    #   concurrent workflow runs.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateWorkflowRequest AWS API Documentation
    #
    class UpdateWorkflowRequest < Struct.new(
      :name,
      :description,
      :default_run_properties,
      :max_concurrent_runs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workflow which was specified in input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateWorkflowResponse AWS API Documentation
    #
    class UpdateWorkflowResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an XML classifier to be updated.
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   An identifier of the data format that the classifier matches.
    #   @return [String]
    #
    # @!attribute [rw] row_tag
    #   The XML tag designating the element that contains each record in an
    #   XML document being parsed. This cannot identify a self-closing
    #   element (closed by `/>`). An empty row element that contains only
    #   attributes can be parsed as long as it ends with a closing tag (for
    #   example, `<row item_a="A" item_b="B"></row>` is okay, but `<row
    #   item_a="A" item_b="B" />` is not).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateXMLClassifierRequest AWS API Documentation
    #
    class UpdateXMLClassifierRequest < Struct.new(
      :name,
      :classification,
      :row_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options to configure an upsert operation when writing to a
    # Redshift target .
    #
    # @!attribute [rw] table_location
    #   The physical location of the Redshift table.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to use to write to Redshift.
    #   @return [String]
    #
    # @!attribute [rw] upsert_keys
    #   The keys used to determine whether to perform an update or insert.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpsertRedshiftTargetOptions AWS API Documentation
    #
    class UpsertRedshiftTargetOptions < Struct.new(
      :table_location,
      :connection_name,
      :upsert_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Glue usage profile.
    #
    # @!attribute [rw] name
    #   The name of the usage profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the usage profile.
    #   @return [String]
    #
    # @!attribute [rw] created_on
    #   The date and time when the usage profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The date and time when the usage profile was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UsageProfileDefinition AWS API Documentation
    #
    class UsageProfileDefinition < Struct.new(
      :name,
      :description,
      :created_on,
      :last_modified_on)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the equivalent of a Hive user-defined function (`UDF`)
    # definition.
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database that contains the function.
    #   @return [String]
    #
    # @!attribute [rw] class_name
    #   The Java class that contains the function code.
    #   @return [String]
    #
    # @!attribute [rw] owner_name
    #   The owner of the function.
    #   @return [String]
    #
    # @!attribute [rw] owner_type
    #   The owner type.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the function was created.
    #   @return [Time]
    #
    # @!attribute [rw] resource_uris
    #   The resource URIs for the function.
    #   @return [Array<Types::ResourceUri>]
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the function resides.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UserDefinedFunction AWS API Documentation
    #
    class UserDefinedFunction < Struct.new(
      :function_name,
      :database_name,
      :class_name,
      :owner_name,
      :owner_type,
      :create_time,
      :resource_uris,
      :catalog_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure used to create or update a user-defined function.
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] class_name
    #   The Java class that contains the function code.
    #   @return [String]
    #
    # @!attribute [rw] owner_name
    #   The owner of the function.
    #   @return [String]
    #
    # @!attribute [rw] owner_type
    #   The owner type.
    #   @return [String]
    #
    # @!attribute [rw] resource_uris
    #   The resource URIs for the function.
    #   @return [Array<Types::ResourceUri>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UserDefinedFunctionInput AWS API Documentation
    #
    class UserDefinedFunctionInput < Struct.new(
      :function_name,
      :class_name,
      :owner_name,
      :owner_type,
      :resource_uris)
      SENSITIVE = []
      include Aws::Structure
    end

    # A value could not be validated.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a version conflict.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/VersionMismatchException AWS API Documentation
    #
    class VersionMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing details for representations.
    #
    # @!attribute [rw] is_protected
    #   You can set this flag as true to instruct the engine not to push
    #   user-provided operations into the logical plan of the view during
    #   query planning. However, setting this flag does not guarantee that
    #   the engine will comply. Refer to the engine's documentation to
    #   understand the guarantees provided, if any.
    #   @return [Boolean]
    #
    # @!attribute [rw] definer
    #   The definer of a view in SQL.
    #   @return [String]
    #
    # @!attribute [rw] sub_objects
    #   A list of table Amazon Resource Names (ARNs).
    #   @return [Array<String>]
    #
    # @!attribute [rw] representations
    #   A list of representations.
    #   @return [Array<Types::ViewRepresentation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ViewDefinition AWS API Documentation
    #
    class ViewDefinition < Struct.new(
      :is_protected,
      :definer,
      :sub_objects,
      :representations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing details for creating or updating an Glue view.
    #
    # @!attribute [rw] is_protected
    #   You can set this flag as true to instruct the engine not to push
    #   user-provided operations into the logical plan of the view during
    #   query planning. However, setting this flag does not guarantee that
    #   the engine will comply. Refer to the engine's documentation to
    #   understand the guarantees provided, if any.
    #   @return [Boolean]
    #
    # @!attribute [rw] definer
    #   The definer of a view in SQL.
    #   @return [String]
    #
    # @!attribute [rw] representations
    #   A list of structures that contains the dialect of the view, and the
    #   query that defines the view.
    #   @return [Array<Types::ViewRepresentationInput>]
    #
    # @!attribute [rw] sub_objects
    #   A list of base table ARNs that make up the view.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ViewDefinitionInput AWS API Documentation
    #
    class ViewDefinitionInput < Struct.new(
      :is_protected,
      :definer,
      :representations,
      :sub_objects)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the dialect of the view, and the query that
    # defines the view.
    #
    # @!attribute [rw] dialect
    #   The dialect of the query engine.
    #   @return [String]
    #
    # @!attribute [rw] dialect_version
    #   The version of the dialect of the query engine. For example, 3.0.0.
    #   @return [String]
    #
    # @!attribute [rw] view_original_text
    #   The `SELECT` query provided by the customer during `CREATE VIEW
    #   DDL`. This SQL is not used during a query on a view
    #   (`ViewExpandedText` is used instead). `ViewOriginalText` is used for
    #   cases like `SHOW CREATE VIEW` where users want to see the original
    #   DDL command that created the view.
    #   @return [String]
    #
    # @!attribute [rw] view_expanded_text
    #   The expanded SQL for the view. This SQL is used by engines while
    #   processing a query on a view. Engines may perform operations during
    #   view creation to transform `ViewOriginalText` to `ViewExpandedText`.
    #   For example:
    #
    #   * Fully qualified identifiers: `SELECT * from table1 -> SELECT *
    #     from db1.table1`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] validation_connection
    #   The name of the connection to be used to validate the specific
    #   representation of the view.
    #   @return [String]
    #
    # @!attribute [rw] is_stale
    #   Dialects marked as stale are no longer valid and must be updated
    #   before they can be queried in their respective query engines.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ViewRepresentation AWS API Documentation
    #
    class ViewRepresentation < Struct.new(
      :dialect,
      :dialect_version,
      :view_original_text,
      :view_expanded_text,
      :validation_connection,
      :is_stale)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing details of a representation to update or create
    # a Lake Formation view.
    #
    # @!attribute [rw] dialect
    #   A parameter that specifies the engine type of a specific
    #   representation.
    #   @return [String]
    #
    # @!attribute [rw] dialect_version
    #   A parameter that specifies the version of the engine of a specific
    #   representation.
    #   @return [String]
    #
    # @!attribute [rw] view_original_text
    #   A string that represents the original SQL query that describes the
    #   view.
    #   @return [String]
    #
    # @!attribute [rw] validation_connection
    #   The name of the connection to be used to validate the specific
    #   representation of the view.
    #   @return [String]
    #
    # @!attribute [rw] view_expanded_text
    #   A string that represents the SQL query that describes the view with
    #   expanded resource ARNs
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ViewRepresentationInput AWS API Documentation
    #
    class ViewRepresentationInput < Struct.new(
      :dialect,
      :dialect_version,
      :view_original_text,
      :validation_connection,
      :view_expanded_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information for an analytical engine to
    # validate a view, prior to persisting the view metadata. Used in the
    # case of direct `UpdateTable` or `CreateTable` API calls.
    #
    # @!attribute [rw] dialect
    #   The dialect of the query engine.
    #   @return [String]
    #
    # @!attribute [rw] dialect_version
    #   The version of the dialect of the query engine. For example, 3.0.0.
    #   @return [String]
    #
    # @!attribute [rw] view_validation_text
    #   The `SELECT` query that defines the view, as provided by the
    #   customer.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The time of the last update.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the validation.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   An error associated with the validation.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ViewValidation AWS API Documentation
    #
    class ViewValidation < Struct.new(
      :dialect,
      :dialect_version,
      :view_validation_text,
      :update_time,
      :state,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workflow is a collection of multiple dependent Glue jobs and
    # crawlers that are run to complete a complex ETL task. A workflow
    # manages the execution and monitoring of all its jobs and crawlers.
    #
    # @!attribute [rw] name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] default_run_properties
    #   A collection of properties to be used as part of each execution of
    #   the workflow. The run properties are made available to each job in
    #   the workflow. A job can modify the properties for the next jobs in
    #   the flow.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_on
    #   The date and time when the workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The date and time when the workflow was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_run
    #   The information about the last execution of the workflow.
    #   @return [Types::WorkflowRun]
    #
    # @!attribute [rw] graph
    #   The graph representing all the Glue components that belong to the
    #   workflow as nodes and directed connections between them as edges.
    #   @return [Types::WorkflowGraph]
    #
    # @!attribute [rw] max_concurrent_runs
    #   You can use this parameter to prevent unwanted multiple updates to
    #   data, to control costs, or in some cases, to prevent exceeding the
    #   maximum number of concurrent runs of any of the component jobs. If
    #   you leave this parameter blank, there is no limit to the number of
    #   concurrent workflow runs.
    #   @return [Integer]
    #
    # @!attribute [rw] blueprint_details
    #   This structure indicates the details of the blueprint that this
    #   particular workflow is created from.
    #   @return [Types::BlueprintDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Workflow AWS API Documentation
    #
    class Workflow < Struct.new(
      :name,
      :description,
      :default_run_properties,
      :created_on,
      :last_modified_on,
      :last_run,
      :graph,
      :max_concurrent_runs,
      :blueprint_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workflow graph represents the complete workflow containing all the
    # Glue components present in the workflow and all the directed
    # connections between them.
    #
    # @!attribute [rw] nodes
    #   A list of the the Glue components belong to the workflow represented
    #   as nodes.
    #   @return [Array<Types::Node>]
    #
    # @!attribute [rw] edges
    #   A list of all the directed connections between the nodes belonging
    #   to the workflow.
    #   @return [Array<Types::Edge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/WorkflowGraph AWS API Documentation
    #
    class WorkflowGraph < Struct.new(
      :nodes,
      :edges)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workflow run is an execution of a workflow providing all the runtime
    # information.
    #
    # @!attribute [rw] name
    #   Name of the workflow that was run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_id
    #   The ID of this workflow run.
    #   @return [String]
    #
    # @!attribute [rw] previous_run_id
    #   The ID of the previous workflow run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_properties
    #   The workflow run properties which were set during the run.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] started_on
    #   The date and time when the workflow run was started.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The date and time when the workflow run completed.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   This error message describes any error that may have occurred in
    #   starting the workflow run. Currently the only error message is
    #   "Concurrent runs exceeded for workflow: `foo`."
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   The statistics of the run.
    #   @return [Types::WorkflowRunStatistics]
    #
    # @!attribute [rw] graph
    #   The graph representing all the Glue components that belong to the
    #   workflow as nodes and directed connections between them as edges.
    #   @return [Types::WorkflowGraph]
    #
    # @!attribute [rw] starting_event_batch_condition
    #   The batch condition that started the workflow run.
    #   @return [Types::StartingEventBatchCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/WorkflowRun AWS API Documentation
    #
    class WorkflowRun < Struct.new(
      :name,
      :workflow_run_id,
      :previous_run_id,
      :workflow_run_properties,
      :started_on,
      :completed_on,
      :status,
      :error_message,
      :statistics,
      :graph,
      :starting_event_batch_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Workflow run statistics provides statistics about the workflow run.
    #
    # @!attribute [rw] total_actions
    #   Total number of Actions in the workflow run.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_actions
    #   Total number of Actions that timed out.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_actions
    #   Total number of Actions that have failed.
    #   @return [Integer]
    #
    # @!attribute [rw] stopped_actions
    #   Total number of Actions that have stopped.
    #   @return [Integer]
    #
    # @!attribute [rw] succeeded_actions
    #   Total number of Actions that have succeeded.
    #   @return [Integer]
    #
    # @!attribute [rw] running_actions
    #   Total number Actions in running state.
    #   @return [Integer]
    #
    # @!attribute [rw] errored_actions
    #   Indicates the count of job runs in the ERROR state in the workflow
    #   run.
    #   @return [Integer]
    #
    # @!attribute [rw] waiting_actions
    #   Indicates the count of job runs in WAITING state in the workflow
    #   run.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/WorkflowRunStatistics AWS API Documentation
    #
    class WorkflowRunStatistics < Struct.new(
      :total_actions,
      :timeout_actions,
      :failed_actions,
      :stopped_actions,
      :succeeded_actions,
      :running_actions,
      :errored_actions,
      :waiting_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A classifier for `XML` content.
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   An identifier of the data format that the classifier matches.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that this classifier was registered.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The time that this classifier was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of this classifier.
    #   @return [Integer]
    #
    # @!attribute [rw] row_tag
    #   The XML tag designating the element that contains each record in an
    #   XML document being parsed. This can't identify a self-closing
    #   element (closed by `/>`). An empty row element that contains only
    #   attributes can be parsed as long as it ends with a closing tag (for
    #   example, `<row item_a="A" item_b="B"></row>` is okay, but `<row
    #   item_a="A" item_b="B" />` is not).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/XMLClassifier AWS API Documentation
    #
    class XMLClassifier < Struct.new(
      :name,
      :classification,
      :creation_time,
      :last_updated,
      :version,
      :row_tag)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

