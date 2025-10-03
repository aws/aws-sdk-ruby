# frozen_string_literal: true

# This is generated code!

module Aws::Glue
  # This module contains the types returned by client operations.
  module Types

    # <p>Access to a resource was denied.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an action to be initiated by a trigger.</p>
    # @!attribute job_name
    #   <p>The name of a job to be run.</p>
    #   @return [String]
    # @!attribute arguments
    #   <p>The job arguments used when this trigger fires. For this job run, they replace the default arguments set in the job definition itself.</p>
    #            <p>You can specify arguments here that your own job-execution script
    #         consumes, as well as arguments that Glue itself consumes.</p>
    #            <p>For information about how to specify and consume your own Job arguments, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling Glue APIs in Python</a> topic in the developer guide.</p>
    #            <p>For information about the key-value pairs that Glue consumes to set up your job, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by Glue</a> topic in the developer guide.</p>
    #   @return [Hash<String, String>]
    # @!attribute timeout
    #   <p>The <code>JobRun</code> timeout in minutes. This is the maximum time that a job run can
    #         consume resources before it is terminated and enters <code>TIMEOUT</code> status. This overrides the timeout value set in the parent job.</p>
    #            <p>Jobs must have timeout values less than 7 days or 10080 minutes. Otherwise, the jobs will throw an exception.</p>
    #            <p>When the value is left blank, the timeout is defaulted to 2880 minutes.</p>
    #            <p>Any existing Glue jobs that had a timeout value greater than 7 days will be defaulted to 7 days. For instance if you have specified a timeout of 20 days for a batch job, it will be stopped on the 7th day.</p>
    #            <p>For streaming jobs, if you have set up a maintenance window, it will be restarted during the maintenance window after 7 days.</p>
    #   @return [Integer]
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this
    #         action.</p>
    #   @return [String]
    # @!attribute notification_property
    #   <p>Specifies configuration properties of a job run notification.</p>
    #   @return [Types::NotificationProperty]
    # @!attribute crawler_name
    #   <p>The name of the crawler to be used with this action.</p>
    #   @return [String]
    class Action < Struct.new(
      :job_name,
      :arguments,
      :timeout,
      :security_configuration,
      :notification_property,
      :crawler_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a transform that groups rows by chosen fields and computes the aggregated value by specified function.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>Specifies the fields and rows to use as inputs for the aggregate transform.</p>
    #   @return [Array<String>]
    # @!attribute groups
    #   <p>Specifies the fields to group by.</p>
    #   @return [Array<Array<String>>]
    # @!attribute aggs
    #   <p>Specifies the aggregate functions to be performed on specified fields. </p>
    #   @return [Array<Types::AggregateOperation>]
    class Aggregate < Struct.new(
      :name,
      :inputs,
      :groups,
      :aggs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the set of parameters needed to perform aggregation in the aggregate transform.</p>
    # @!attribute column
    #   <p>Specifies the column on the data set on which the aggregation function will be applied.</p>
    #   @return [Array<String>]
    # @!attribute agg_func
    #   <p>Specifies the aggregation function to apply.</p>
    #            <p>Possible aggregation functions include: avg countDistinct, count, first, last, kurtosis, max, min, skewness, 
    #         stddev_samp, stddev_pop, sum, sumDistinct, var_samp, var_pop</p>
    #   @return [String]
    class AggregateOperation < Struct.new(
      :column,
      :agg_func,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a value allowed for a property.</p>
    # @!attribute description
    #   <p>A description of the allowed value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value allowed for the property.</p>
    #   @return [String]
    class AllowedValue < Struct.new(
      :description,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource to be created or added already exists.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class AlreadyExistsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an optional value when connecting to the Redshift cluster.</p>
    # @!attribute key
    #   <p>The key for the additional connection option.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the additional connection option.</p>
    #   @return [String]
    class AmazonRedshiftAdvancedOption < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Amazon Redshift node.</p>
    # @!attribute access_type
    #   <p>The access type for the Redshift connection. Can be a direct connection or catalog connections.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The source type to specify whether a specific table is the source or a custom query.</p>
    #   @return [String]
    # @!attribute connection
    #   <p>The Glue connection to the Redshift cluster.</p>
    #   @return [Types::Option]
    # @!attribute schema
    #   <p>The Redshift schema name when working with a direct connection.</p>
    #   @return [Types::Option]
    # @!attribute table
    #   <p>The Redshift table name when working with a direct connection.</p>
    #   @return [Types::Option]
    # @!attribute catalog_database
    #   <p>The name of the Glue Data Catalog database when working with a data catalog.</p>
    #   @return [Types::Option]
    # @!attribute catalog_table
    #   <p>The Glue Data Catalog table name when working with a data catalog.</p>
    #   @return [Types::Option]
    # @!attribute catalog_redshift_schema
    #   <p>The Redshift schema name when working with a data catalog.</p>
    #   @return [String]
    # @!attribute catalog_redshift_table
    #   <p>The database table to read from.</p>
    #   @return [String]
    # @!attribute temp_dir
    #   <p>The Amazon S3 path where temporary data can be staged when copying out of the database.</p>
    #   @return [String]
    # @!attribute iam_role
    #   <p>Optional. The role name use when connection to S3. The IAM role ill default to the role on the job when left blank.</p>
    #   @return [Types::Option]
    # @!attribute advanced_options
    #   <p>Optional values when connecting to the Redshift cluster.</p>
    #   @return [Array<Types::AmazonRedshiftAdvancedOption>]
    # @!attribute sample_query
    #   <p>The SQL used to fetch the data from a Redshift sources when the SourceType is 'query'.</p>
    #   @return [String]
    # @!attribute pre_action
    #   <p>The SQL used before a MERGE or APPEND with upsert is run.</p>
    #   @return [String]
    # @!attribute post_action
    #   <p>The SQL used before a MERGE or APPEND with upsert is run.</p>
    #   @return [String]
    # @!attribute action
    #   <p>Specifies how writing to a Redshift cluser will occur.</p>
    #   @return [String]
    # @!attribute table_prefix
    #   <p>Specifies the prefix to a table.</p>
    #   @return [String]
    # @!attribute upsert
    #   <p>The action used on Redshift sinks when doing an APPEND.</p>
    #   @return [Boolean]
    # @!attribute merge_action
    #   <p>The action used when to detemine how a MERGE in a Redshift sink will be handled.</p>
    #   @return [String]
    # @!attribute merge_when_matched
    #   <p>The action used when to detemine how a MERGE in a Redshift sink will be handled when an existing record matches a new record.</p>
    #   @return [String]
    # @!attribute merge_when_not_matched
    #   <p>The action used when to detemine how a MERGE in a Redshift sink will be handled when an existing record doesn't match a new record.</p>
    #   @return [String]
    # @!attribute merge_clause
    #   <p>The SQL used in a custom merge to deal with matching records.</p>
    #   @return [String]
    # @!attribute crawler_connection
    #   <p>Specifies the name of the connection that is associated with the catalog table used.</p>
    #   @return [String]
    # @!attribute table_schema
    #   <p>The array of schema output for a given node.</p>
    #   @return [Array<Types::Option>]
    # @!attribute staging_table
    #   <p>The name of the temporary staging table that is used when doing a MERGE or APPEND with upsert.</p>
    #   @return [String]
    # @!attribute selected_columns
    #   <p>The list of column names used to determine a matching record when doing a MERGE or APPEND with upsert.</p>
    #   @return [Array<Types::Option>]
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
      :selected_columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:upsert] = false unless options.key?(:upsert)
        super
      end
    end

    # <p>Specifies an Amazon Redshift source.</p>
    # @!attribute name
    #   <p>The name of the Amazon Redshift source.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Specifies the data of the Amazon Reshift source node.</p>
    #   @return [Types::AmazonRedshiftNodeData]
    class AmazonRedshiftSource < Struct.new(
      :name,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Amazon Redshift target.</p>
    # @!attribute name
    #   <p>The name of the Amazon Redshift target.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Specifies the data of the Amazon Redshift target node.</p>
    #   @return [Types::AmazonRedshiftNodeData]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    class AmazonRedshiftTarget < Struct.new(
      :name,
      :data,
      :inputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A failed annotation.</p>
    # @!attribute profile_id
    #   <p>The Profile ID for the failed annotation.</p>
    #   @return [String]
    # @!attribute statistic_id
    #   <p>The Statistic ID for the failed annotation.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason why the annotation failed.</p>
    #   @return [String]
    class AnnotationError < Struct.new(
      :profile_id,
      :statistic_id,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a transform that maps data property keys in the data source to data property keys in the data target. You can rename keys, modify the data types for keys, and choose which keys to drop from the dataset.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #   @return [Array<String>]
    # @!attribute mapping
    #   <p>Specifies the mapping of data property keys in the data source to data property keys in the data target.</p>
    #   @return [Array<Types::Mapping>]
    class ApplyMapping < Struct.new(
      :name,
      :inputs,
      :mapping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a connector to an Amazon Athena data source.</p>
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection that is associated with the connector.</p>
    #   @return [String]
    # @!attribute connector_name
    #   <p>The name of a connector that assists with accessing the data store in Glue Studio.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection, such as marketplace.athena or custom.athena, designating a connection to an Amazon Athena data store.</p>
    #   @return [String]
    # @!attribute connection_table
    #   <p>The name of the table in the data source.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the Cloudwatch log group to read from. For example, <code>/aws-glue/jobs/output</code>.</p>
    #   @return [String]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the custom Athena source.</p>
    #   @return [Array<Types::GlueSchema>]
    class AthenaConnectorSource < Struct.new(
      :name,
      :connection_name,
      :connector_name,
      :connection_type,
      :connection_table,
      :schema_name,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing the Lake Formation audit context.</p>
    # @!attribute additional_audit_context
    #   <p>A string containing the additional audit context information.</p>
    #   @return [String]
    # @!attribute requested_columns
    #   <p>The requested columns for audit.</p>
    #   @return [Array<String>]
    # @!attribute all_columns_requested
    #   <p>All columns request for audit.</p>
    #   @return [Boolean]
    class AuditContext < Struct.new(
      :additional_audit_context,
      :requested_columns,
      :all_columns_requested,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The authentication configuration for a connection returned by the <code>DescribeConnectionType</code> API.</p>
    # @!attribute authentication_type
    #   <p>The type of authentication for a connection.</p>
    #   @return [Types::Property]
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) for the Secrets Manager.</p>
    #   @return [Types::Property]
    # @!attribute o_auth2_properties
    #   <p>A map of key-value pairs for the OAuth2 properties. Each value is a a <code>Property</code> object.</p>
    #   @return [Hash<String, Types::Property>]
    # @!attribute basic_authentication_properties
    #   <p>A map of key-value pairs for the OAuth2 properties. Each value is a a <code>Property</code> object.</p>
    #   @return [Hash<String, Types::Property>]
    # @!attribute custom_authentication_properties
    #   <p>A map of key-value pairs for the custom authentication properties. Each value is a a <code>Property</code> object.</p>
    #   @return [Hash<String, Types::Property>]
    class AuthConfiguration < Struct.new(
      :authentication_type,
      :secret_arn,
      :o_auth2_properties,
      :basic_authentication_properties,
      :custom_authentication_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing the authentication configuration.</p>
    # @!attribute authentication_type
    #   <p>A structure containing the authentication configuration.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The secret manager ARN to store credentials.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt sensitive authentication information. This key is used to protect credentials 
    #         and other sensitive data stored within the authentication configuration.</p>
    #   @return [String]
    # @!attribute o_auth2_properties
    #   <p>The properties for OAuth2 authentication.</p>
    #   @return [Types::OAuth2Properties]
    class AuthenticationConfiguration < Struct.new(
      :authentication_type,
      :secret_arn,
      :kms_key_arn,
      :o_auth2_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing the authentication configuration in the CreateConnection request.</p>
    # @!attribute authentication_type
    #   <p>A structure containing the authentication configuration in the CreateConnection request.</p>
    #   @return [String]
    # @!attribute o_auth2_properties
    #   <p>The properties for OAuth2 authentication in the CreateConnection request.</p>
    #   @return [Types::OAuth2PropertiesInput]
    # @!attribute secret_arn
    #   <p>The secret manager ARN to store credentials in the CreateConnection request.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt the connection. Only taken an as input in the request and stored in the Secret Manager.</p>
    #   @return [String]
    # @!attribute basic_authentication_credentials
    #   <p>The credentials used when the authentication type is basic authentication.</p>
    #   @return [Types::BasicAuthenticationCredentials]
    # @!attribute custom_authentication_credentials
    #   <p>The credentials used when the authentication type is custom authentication.</p>
    #   @return [Hash<String, String>]
    class AuthenticationConfigurationInput < Struct.new(
      :authentication_type,
      :o_auth2_properties,
      :secret_arn,
      :kms_key_arn,
      :basic_authentication_credentials,
      :custom_authentication_credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of properties required for the the OAuth2 <code>AUTHORIZATION_CODE</code> grant type workflow.</p>
    # @!attribute authorization_code
    #   <p>An authorization code to be used in the third leg of the <code>AUTHORIZATION_CODE</code> grant workflow. This is a single-use code which becomes invalid once exchanged for an access token, thus it is acceptable to have this value as a request parameter.</p>
    #   @return [String]
    # @!attribute redirect_uri
    #   <p>The redirect URI where the user gets redirected to by authorization server when issuing an authorization code. The URI is subsequently used when the authorization code is exchanged for an access token.</p>
    #   @return [String]
    class AuthorizationCodeProperties < Struct.new(
      :authorization_code,
      :redirect_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies configuration options for automatic data quality evaluation in Glue jobs. This structure enables automated data quality 
    #       checks and monitoring during ETL operations, helping to ensure data integrity and reliability without manual intervention.</p>
    # @!attribute is_enabled
    #   <p>Specifies whether automatic data quality evaluation is enabled. When set to <code>true</code>, data quality checks are performed automatically.</p>
    #   @return [Boolean]
    # @!attribute evaluation_context
    #   <p>The evaluation context for the automatic data quality checks. This defines the scope and parameters for the data quality evaluation.</p>
    #   @return [String]
    class AutoDataQuality < Struct.new(
      :is_enabled,
      :evaluation_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_enabled] = false unless options.key?(:is_enabled)
        super
      end
    end

    # <p>A list of errors that can occur when registering partition indexes for an existing table.</p>
    #          <p>These errors give the details about why an index registration failed and provide a limited number of partitions in the response, so that you can fix the partitions at fault and try registering the index again. The most common set of errors that can occur are categorized as follows:</p>
    #          <ul>
    #             <li>
    #                <p>EncryptedPartitionError: The partitions are encrypted.</p>
    #             </li>
    #             <li>
    #                <p>InvalidPartitionTypeDataError: The partition value doesn't match the data type for that partition column.</p>
    #             </li>
    #             <li>
    #                <p>MissingPartitionValueError: The partitions are encrypted.</p>
    #             </li>
    #             <li>
    #                <p>UnsupportedPartitionCharacterError: Characters inside the partition value are not supported. For example: U+0000 , U+0001, U+0002.</p>
    #             </li>
    #             <li>
    #                <p>InternalError: Any error which does not belong to other error codes.</p>
    #             </li>
    #          </ul>
    # @!attribute code
    #   <p>The error code for an error that occurred when registering partition indexes for an existing table.</p>
    #   @return [String]
    # @!attribute partitions
    #   <p>A list of a limited number of partitions in the response.</p>
    #   @return [Array<Types::PartitionValueList>]
    class BackfillError < Struct.new(
      :code,
      :partitions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>For supplying basic auth credentials when not providing a <code>SecretArn</code> value.</p>
    # @!attribute username
    #   <p>The username to connect to the data source.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password to connect to the data source.</p>
    #   @return [String]
    class BasicAuthenticationCredentials < Struct.new(
      :username,
      :password,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a target that uses a Glue Data Catalog table.</p>
    # @!attribute name
    #   <p>The name of your data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute partition_keys
    #   <p>The partition keys used to distribute data across multiple partitions or shards based on a specific key or set of key.</p>
    #   @return [Array<Array<String>>]
    # @!attribute database
    #   <p>The database that contains the table you want to use as the target. This database must already exist in the Data Catalog.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The table that defines the schema of your output data. This table must already exist in the Data Catalog.</p>
    #   @return [String]
    class BasicCatalogTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :database,
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the catalog in which the partition is to be created. Currently, this should be
    #         the Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the metadata database in which the partition is
    #         to be created.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the metadata table in which the partition is to be created.</p>
    #   @return [String]
    # @!attribute partition_input_list
    #   <p>A list of <code>PartitionInput</code> structures that define
    #         the partitions to be created.</p>
    #   @return [Array<Types::PartitionInput>]
    class BatchCreatePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_input_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>The errors encountered when trying to create the requested partitions.</p>
    #   @return [Array<Types::PartitionError>]
    class BatchCreatePartitionResponse < Struct.new(
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the connections reside. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #   @return [String]
    # @!attribute connection_name_list
    #   <p>A list of names of the connections to delete.</p>
    #   @return [Array<String>]
    class BatchDeleteConnectionRequest < Struct.new(
      :catalog_id,
      :connection_name_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute succeeded
    #   <p>A list of names of the connection definitions that were
    #          successfully deleted.</p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p>A map of the names of connections that were not successfully
    #          deleted to error details.</p>
    #   @return [Hash<String, Types::ErrorDetail>]
    class BatchDeleteConnectionResponse < Struct.new(
      :succeeded,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partition to be deleted resides. If none is provided,
    #         the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database in which the table in question
    #         resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table that contains the partitions to be deleted.</p>
    #   @return [String]
    # @!attribute partitions_to_delete
    #   <p>A list of <code>PartitionInput</code> structures that define
    #         the partitions to be deleted.</p>
    #   @return [Array<Types::PartitionValueList>]
    class BatchDeletePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partitions_to_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>The errors encountered when trying to delete the requested partitions.</p>
    #   @return [Array<Types::PartitionError>]
    class BatchDeletePartitionResponse < Struct.new(
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the table resides. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database in which the tables to delete reside. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute tables_to_delete
    #   <p>A list of the table to delete.</p>
    #   @return [Array<String>]
    # @!attribute transaction_id
    #   <p>The transaction ID at which to delete the table contents.</p>
    #   @return [String]
    class BatchDeleteTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :tables_to_delete,
      :transaction_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>A list of errors encountered in attempting to delete the specified tables.</p>
    #   @return [Array<Types::TableError>]
    class BatchDeleteTableResponse < Struct.new(
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The database in the catalog in which the table resides. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table. For Hive compatibility, 
    #         this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute version_ids
    #   <p>A list of the IDs of versions to be deleted. A <code>VersionId</code> is a string representation of an integer. Each version is incremented by 1.</p>
    #   @return [Array<String>]
    class BatchDeleteTableVersionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :version_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>A list of errors encountered while trying to delete
    #         the specified table versions.</p>
    #   @return [Array<Types::TableVersionError>]
    class BatchDeleteTableVersionResponse < Struct.new(
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>A list of blueprint names.</p>
    #   @return [Array<String>]
    # @!attribute include_blueprint
    #   <p>Specifies whether or not to include the blueprint in the response.</p>
    #   @return [Boolean]
    # @!attribute include_parameter_spec
    #   <p>Specifies whether or not to include the parameters, as a JSON string, for the blueprint in the response.</p>
    #   @return [Boolean]
    class BatchGetBlueprintsRequest < Struct.new(
      :names,
      :include_blueprint,
      :include_parameter_spec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute blueprints
    #   <p>Returns a list of blueprint as a <code>Blueprints</code> object.</p>
    #   @return [Array<Types::Blueprint>]
    # @!attribute missing_blueprints
    #   <p>Returns a list of <code>BlueprintNames</code> that were not found.</p>
    #   @return [Array<String>]
    class BatchGetBlueprintsResponse < Struct.new(
      :blueprints,
      :missing_blueprints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute crawler_names
    #   <p>A list of crawler names, which might be the names returned from the
    #           <code>ListCrawlers</code> operation.</p>
    #   @return [Array<String>]
    class BatchGetCrawlersRequest < Struct.new(
      :crawler_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute crawlers
    #   <p>A list of crawler definitions.</p>
    #   @return [Array<Types::Crawler>]
    # @!attribute crawlers_not_found
    #   <p>A list of names of crawlers that were not found.</p>
    #   @return [Array<String>]
    class BatchGetCrawlersResponse < Struct.new(
      :crawlers,
      :crawlers_not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>A list of names of the custom patterns that you want to retrieve.</p>
    #   @return [Array<String>]
    class BatchGetCustomEntityTypesRequest < Struct.new(
      :names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute custom_entity_types
    #   <p>A list of <code>CustomEntityType</code> objects representing the custom patterns that have been created.</p>
    #   @return [Array<Types::CustomEntityType>]
    # @!attribute custom_entity_types_not_found
    #   <p>A list of the names of custom patterns that were not found.</p>
    #   @return [Array<String>]
    class BatchGetCustomEntityTypesResponse < Struct.new(
      :custom_entity_types,
      :custom_entity_types_not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute result_ids
    #   <p>A list of unique result IDs for the data quality results.</p>
    #   @return [Array<String>]
    class BatchGetDataQualityResultRequest < Struct.new(
      :result_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>A list of <code>DataQualityResult</code> objects representing the data quality results.</p>
    #   @return [Array<Types::DataQualityResult>]
    # @!attribute results_not_found
    #   <p>A list of result IDs for which results were not found.</p>
    #   @return [Array<String>]
    class BatchGetDataQualityResultResponse < Struct.new(
      :results,
      :results_not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dev_endpoint_names
    #   <p>The list of <code>DevEndpoint</code> names, which might be the names returned from the
    #           <code>ListDevEndpoint</code> operation.</p>
    #   @return [Array<String>]
    class BatchGetDevEndpointsRequest < Struct.new(
      :dev_endpoint_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dev_endpoints
    #   <p>A list of <code>DevEndpoint</code> definitions.</p>
    #   @return [Array<Types::DevEndpoint>]
    # @!attribute dev_endpoints_not_found
    #   <p>A list of <code>DevEndpoints</code> not found.</p>
    #   @return [Array<String>]
    class BatchGetDevEndpointsResponse < Struct.new(
      :dev_endpoints,
      :dev_endpoints_not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_names
    #   <p>A list of job names, which might be the names returned from the <code>ListJobs</code>
    #         operation.</p>
    #   @return [Array<String>]
    class BatchGetJobsRequest < Struct.new(
      :job_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>A list of job definitions.</p>
    #   @return [Array<Types::Job>]
    # @!attribute jobs_not_found
    #   <p>A list of names of jobs not found.</p>
    #   @return [Array<String>]
    class BatchGetJobsResponse < Struct.new(
      :jobs,
      :jobs_not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #   @return [String]
    # @!attribute partitions_to_get
    #   <p>A list of partition values identifying the partitions to retrieve.</p>
    #   @return [Array<Types::PartitionValueList>]
    class BatchGetPartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partitions_to_get,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute partitions
    #   <p>A list of the requested partitions.</p>
    #   @return [Array<Types::Partition>]
    # @!attribute unprocessed_keys
    #   <p>A list of the partition values in the request for which partitions were not
    #         returned.</p>
    #   @return [Array<Types::PartitionValueList>]
    class BatchGetPartitionResponse < Struct.new(
      :partitions,
      :unprocessed_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a table optimizer to retrieve in the <code>BatchGetTableOptimizer</code> operation.</p>
    # @!attribute catalog_id
    #   <p>The Catalog ID of the table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database in the catalog in which the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of table optimizer.</p>
    #   @return [String]
    class BatchGetTableOptimizerEntry < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details on one of the errors in the error list returned by the <code>BatchGetTableOptimizer</code> operation.</p>
    # @!attribute error
    #   <p>An <code>ErrorDetail</code> object containing code and message details about the error.</p>
    #   @return [Types::ErrorDetail]
    # @!attribute catalog_id
    #   <p>The Catalog ID of the table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database in the catalog in which the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of table optimizer.</p>
    #   @return [String]
    class BatchGetTableOptimizerError < Struct.new(
      :error,
      :catalog_id,
      :database_name,
      :table_name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>A list of <code>BatchGetTableOptimizerEntry</code> objects specifying the table optimizers to retrieve.</p>
    #   @return [Array<Types::BatchGetTableOptimizerEntry>]
    class BatchGetTableOptimizerRequest < Struct.new(
      :entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_optimizers
    #   <p>A list of <code>BatchTableOptimizer</code> objects.</p>
    #   @return [Array<Types::BatchTableOptimizer>]
    # @!attribute failures
    #   <p>A list of errors from the operation.</p>
    #   @return [Array<Types::BatchGetTableOptimizerError>]
    class BatchGetTableOptimizerResponse < Struct.new(
      :table_optimizers,
      :failures,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute trigger_names
    #   <p>A list of trigger names, which may be the names returned from the <code>ListTriggers</code> operation.</p>
    #   @return [Array<String>]
    class BatchGetTriggersRequest < Struct.new(
      :trigger_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute triggers
    #   <p>A list of trigger definitions.</p>
    #   @return [Array<Types::Trigger>]
    # @!attribute triggers_not_found
    #   <p>A list of names of triggers not found.</p>
    #   @return [Array<String>]
    class BatchGetTriggersResponse < Struct.new(
      :triggers,
      :triggers_not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>A list of workflow names, which may be the names returned from the <code>ListWorkflows</code> operation.</p>
    #   @return [Array<String>]
    # @!attribute include_graph
    #   <p>Specifies whether to include a graph when returning the workflow resource metadata.</p>
    #   @return [Boolean]
    class BatchGetWorkflowsRequest < Struct.new(
      :names,
      :include_graph,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflows
    #   <p>A list of workflow resource metadata.</p>
    #   @return [Array<Types::Workflow>]
    # @!attribute missing_workflows
    #   <p>A list of names of workflows not found.</p>
    #   @return [Array<String>]
    class BatchGetWorkflowsResponse < Struct.new(
      :workflows,
      :missing_workflows,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute inclusion_annotations
    #   <p>A list of <code>DatapointInclusionAnnotation</code>'s. The InclusionAnnotations must contain a profileId and statisticId.
    #           If there are multiple InclusionAnnotations, the list must refer to a single statisticId across multiple profileIds.</p>
    #   @return [Array<Types::DatapointInclusionAnnotation>]
    # @!attribute client_token
    #   <p>Client Token.</p>
    #   @return [String]
    class BatchPutDataQualityStatisticAnnotationRequest < Struct.new(
      :inclusion_annotations,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_inclusion_annotations
    #   <p>A list of <code>AnnotationError</code>'s.</p>
    #   @return [Array<Types::AnnotationError>]
    class BatchPutDataQualityStatisticAnnotationResponse < Struct.new(
      :failed_inclusion_annotations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Records an error that occurred when attempting to stop a
    #       specified job run.</p>
    # @!attribute job_name
    #   <p>The name of the job definition that is used in the job run in question.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>The <code>JobRunId</code> of the job run in question.</p>
    #   @return [String]
    # @!attribute error_detail
    #   <p>Specifies details about the error that was encountered.</p>
    #   @return [Types::ErrorDetail]
    class BatchStopJobRunError < Struct.new(
      :job_name,
      :job_run_id,
      :error_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job definition for which to stop job runs.</p>
    #   @return [String]
    # @!attribute job_run_ids
    #   <p>A list of the <code>JobRunIds</code> that should be stopped for that job
    #         definition.</p>
    #   @return [Array<String>]
    class BatchStopJobRunRequest < Struct.new(
      :job_name,
      :job_run_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute successful_submissions
    #   <p>A list of the JobRuns that were successfully submitted for stopping.</p>
    #   @return [Array<Types::BatchStopJobRunSuccessfulSubmission>]
    # @!attribute errors
    #   <p>A list of the errors that were encountered in trying to stop <code>JobRuns</code>,
    #         including the <code>JobRunId</code> for which each error was encountered and details about the
    #         error.</p>
    #   @return [Array<Types::BatchStopJobRunError>]
    class BatchStopJobRunResponse < Struct.new(
      :successful_submissions,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Records a successful request to stop a specified <code>JobRun</code>.</p>
    # @!attribute job_name
    #   <p>The name of the job definition used in the job run that was stopped.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>The <code>JobRunId</code> of the job run that was stopped.</p>
    #   @return [String]
    class BatchStopJobRunSuccessfulSubmission < Struct.new(
      :job_name,
      :job_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for one of the table optimizers returned by the <code>BatchGetTableOptimizer</code> operation.</p>
    # @!attribute catalog_id
    #   <p>The Catalog ID of the table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database in the catalog in which the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute table_optimizer
    #   <p>A <code>TableOptimizer</code> object that contains details on the configuration and last run of a table optimizer.</p>
    #   @return [Types::TableOptimizer]
    class BatchTableOptimizer < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :table_optimizer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a batch update partition error.</p>
    # @!attribute partition_value_list
    #   <p>A list of values defining the partitions.</p>
    #   @return [Array<String>]
    # @!attribute error_detail
    #   <p>The details about the batch update partition error.</p>
    #   @return [Types::ErrorDetail]
    class BatchUpdatePartitionFailureEntry < Struct.new(
      :partition_value_list,
      :error_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the catalog in which the partition is to be updated. Currently, this should be
    #         the Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the metadata database in which the partition is
    #         to be updated.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the metadata table in which the partition is to be updated.</p>
    #   @return [String]
    # @!attribute entries
    #   <p>A list of up to 100 <code>BatchUpdatePartitionRequestEntry</code> objects to update.</p>
    #   @return [Array<Types::BatchUpdatePartitionRequestEntry>]
    class BatchUpdatePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the values and structure used to update a partition.</p>
    # @!attribute partition_value_list
    #   <p>A list of values defining the partitions.</p>
    #   @return [Array<String>]
    # @!attribute partition_input
    #   <p>The structure used to update a partition.</p>
    #   @return [Types::PartitionInput]
    class BatchUpdatePartitionRequestEntry < Struct.new(
      :partition_value_list,
      :partition_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>The errors encountered when trying to update the requested partitions. A list of <code>BatchUpdatePartitionFailureEntry</code> objects.</p>
    #   @return [Array<Types::BatchUpdatePartitionFailureEntry>]
    class BatchUpdatePartitionResponse < Struct.new(
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines column statistics supported for bit sequence data values.</p>
    # @!attribute maximum_length
    #   <p>The size of the longest bit sequence in the column.</p>
    #   @return [Integer]
    # @!attribute average_length
    #   <p>The average bit sequence length in the column.</p>
    #   @return [Float]
    # @!attribute number_of_nulls
    #   <p>The number of null values in the column.</p>
    #   @return [Integer]
    class BinaryColumnStatisticsData < Struct.new(
      :maximum_length,
      :average_length,
      :number_of_nulls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:maximum_length] = 0 unless options.key?(:maximum_length)
        options[:average_length] = 0 unless options.key?(:average_length)
        options[:number_of_nulls] = 0 unless options.key?(:number_of_nulls)
        super
      end
    end

    # <p>The details of a blueprint.</p>
    # @!attribute name
    #   <p>The name of the blueprint.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the blueprint.</p>
    #   @return [String]
    # @!attribute created_on
    #   <p>The date and time the blueprint was registered.</p>
    #   @return [Time]
    # @!attribute last_modified_on
    #   <p>The date and time the blueprint was last modified.</p>
    #   @return [Time]
    # @!attribute parameter_spec
    #   <p>A JSON string that indicates the list of parameter specifications for the blueprint.</p>
    #   @return [String]
    # @!attribute blueprint_location
    #   <p>Specifies the path in Amazon S3 where the blueprint is published.</p>
    #   @return [String]
    # @!attribute blueprint_service_location
    #   <p>Specifies a path in Amazon S3 where the blueprint is copied when you call <code>CreateBlueprint/UpdateBlueprint</code> to register the blueprint in Glue.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the blueprint registration.</p>
    #            <ul>
    #               <li>
    #                  <p>Creating — The blueprint registration is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>Active — The blueprint has been successfully registered.</p>
    #               </li>
    #               <li>
    #                  <p>Updating — An update to the blueprint registration is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>Failed — The blueprint registration failed.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message.</p>
    #   @return [String]
    # @!attribute last_active_definition
    #   <p>When there are multiple versions of a blueprint and the latest version has some errors, this attribute indicates the last successful blueprint definition that is available with the service.</p>
    #   @return [Types::LastActiveDefinition]
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
      :last_active_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a blueprint.</p>
    # @!attribute blueprint_name
    #   <p>The name of the blueprint.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The run ID for this blueprint.</p>
    #   @return [String]
    class BlueprintDetails < Struct.new(
      :blueprint_name,
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a blueprint run.</p>
    # @!attribute blueprint_name
    #   <p>The name of the blueprint.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The run ID for this blueprint run.</p>
    #   @return [String]
    # @!attribute workflow_name
    #   <p>The name of a workflow that is created as a result of a successful blueprint run. If a blueprint run has an error, there will not be a workflow created.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the blueprint run. Possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>Running — The blueprint run is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>Succeeded — The blueprint run completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>Failed — The blueprint run failed and rollback is complete.</p>
    #               </li>
    #               <li>
    #                  <p>Rolling Back — The blueprint run failed and rollback is in progress.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute started_on
    #   <p>The date and time that the blueprint run started.</p>
    #   @return [Time]
    # @!attribute completed_on
    #   <p>The date and time that the blueprint run completed.</p>
    #   @return [Time]
    # @!attribute error_message
    #   <p>Indicates any errors that are seen while running the blueprint.</p>
    #   @return [String]
    # @!attribute rollback_error_message
    #   <p>If there are any errors while creating the entities of a workflow, we try to roll back the created entities until that point and delete them. This attribute indicates the errors seen while trying to delete the entities that are created.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The blueprint parameters as a string. You will have to provide a value for each key that is required from the parameter spec that is defined in the <code>Blueprint$ParameterSpec</code>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The role ARN. This role will be assumed by the Glue service and will be used to create the workflow and other entities of a workflow.</p>
    #   @return [String]
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
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines column statistics supported for Boolean data columns.</p>
    # @!attribute number_of_trues
    #   <p>The number of true values in the column.</p>
    #   @return [Integer]
    # @!attribute number_of_falses
    #   <p>The number of false values in the column.</p>
    #   @return [Integer]
    # @!attribute number_of_nulls
    #   <p>The number of null values in the column.</p>
    #   @return [Integer]
    class BooleanColumnStatisticsData < Struct.new(
      :number_of_trues,
      :number_of_falses,
      :number_of_nulls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_trues] = 0 unless options.key?(:number_of_trues)
        options[:number_of_falses] = 0 unless options.key?(:number_of_falses)
        options[:number_of_nulls] = 0 unless options.key?(:number_of_nulls)
        super
      end
    end

    # @!attribute run_id
    #   <p>The unique run identifier associated with this run.</p>
    #   @return [String]
    class CancelDataQualityRuleRecommendationRunRequest < Struct.new(
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelDataQualityRuleRecommendationRunResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute run_id
    #   <p>The unique run identifier associated with this run.</p>
    #   @return [String]
    class CancelDataQualityRulesetEvaluationRunRequest < Struct.new(
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelDataQualityRulesetEvaluationRunResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #   @return [String]
    # @!attribute task_run_id
    #   <p>A unique identifier for the task run.</p>
    #   @return [String]
    class CancelMLTaskRunRequest < Struct.new(
      :transform_id,
      :task_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #   @return [String]
    # @!attribute task_run_id
    #   <p>The unique identifier for the task run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status for this run.</p>
    #   @return [String]
    class CancelMLTaskRunResponse < Struct.new(
      :transform_id,
      :task_run_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The Session ID of the statement to be cancelled.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the statement to be cancelled.</p>
    #   @return [Integer]
    # @!attribute request_origin
    #   <p>The origin of the request to cancel the statement.</p>
    #   @return [String]
    class CancelStatementRequest < Struct.new(
      :session_id,
      :id,
      :request_origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelStatementResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the supported authentication types returned by the <code>DescribeConnectionType</code> API.</p>
    # @!attribute supported_authentication_types
    #   <p>A list of supported authentication types.</p>
    #   @return [Array<String>]
    # @!attribute supported_data_operations
    #   <p>A list of supported data operations.</p>
    #   @return [Array<String>]
    # @!attribute supported_compute_environments
    #   <p>A list of supported compute environments.</p>
    #   @return [Array<String>]
    class Capabilities < Struct.new(
      :supported_authentication_types,
      :supported_data_operations,
      :supported_compute_environments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The catalog object represents a logical grouping of databases in the Glue Data Catalog or a federated source. You can now create a Redshift-federated catalog or a catalog containing resource links to Redshift databases in another account or region.</p>
    # @!attribute catalog_id
    #   <p>The ID of the catalog. To grant access to the default catalog, this field should not be provided.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the catalog. Cannot be the same as the account ID.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) assigned to the catalog resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description string, not more than 2048 bytes long, matching the URI address multi-line string pattern. A description of the catalog.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p> A map array of key-value pairs that define parameters and properties of the catalog.</p>
    #   @return [Hash<String, String>]
    # @!attribute create_time
    #   <p>The time at which the catalog was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time at which the catalog was last updated.</p>
    #   @return [Time]
    # @!attribute target_redshift_catalog
    #   <p>A <code>TargetRedshiftCatalog</code> object that describes a target catalog for database resource linking.</p>
    #   @return [Types::TargetRedshiftCatalog]
    # @!attribute federated_catalog
    #   <p>A <code>FederatedCatalog</code> object that points to an entity outside the Glue Data Catalog.</p>
    #   @return [Types::FederatedCatalog]
    # @!attribute catalog_properties
    #   <p>A <code>CatalogProperties</code> object that specifies data lake access properties and other custom properties.</p>
    #   @return [Types::CatalogPropertiesOutput]
    # @!attribute create_table_default_permissions
    #   <p>An array of <code>PrincipalPermissions</code> objects. Creates a set of default permissions on the table(s) for principals. Used by Amazon Web Services Lake Formation. Not used in the normal course of Glue operations.</p>
    #   @return [Array<Types::PrincipalPermissions>]
    # @!attribute create_database_default_permissions
    #   <p>An array of <code>PrincipalPermissions</code> objects. Creates a set of default permissions on the database(s) for principals. Used by Amazon Web Services Lake Formation. Not used in the normal course of Glue operations.</p>
    #   @return [Array<Types::PrincipalPermissions>]
    # @!attribute allow_full_table_external_data_access
    #   <p>
    #         Allows third-party engines to access data in Amazon S3 locations that are registered with Lake Formation.
    #       </p>
    #   @return [String]
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
      :allow_full_table_external_data_access,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a Delta Lake data source that is registered in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the Delta Lake data source.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    # @!attribute additional_delta_options
    #   <p>Specifies additional connection options.</p>
    #   @return [Hash<String, String>]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the Delta Lake source.</p>
    #   @return [Array<Types::GlueSchema>]
    class CatalogDeltaSource < Struct.new(
      :name,
      :database,
      :table,
      :additional_delta_options,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a table definition in the Glue Data Catalog.</p>
    # @!attribute database_name
    #   <p>The database in which the table metadata resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table in question.</p>
    #   @return [String]
    class CatalogEntry < Struct.new(
      :database_name,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a Hudi data source that is registered in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the Hudi data source.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    # @!attribute additional_hudi_options
    #   <p>Specifies additional connection options.</p>
    #   @return [Hash<String, String>]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the Hudi source.</p>
    #   @return [Array<Types::GlueSchema>]
    class CatalogHudiSource < Struct.new(
      :name,
      :database,
      :table,
      :additional_hudi_options,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Apache Iceberg data source that is registered in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the Iceberg data source.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    # @!attribute additional_iceberg_options
    #   <p>Specifies additional connection options for the Iceberg data source.</p>
    #   @return [Hash<String, String>]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the Iceberg source.</p>
    #   @return [Array<Types::GlueSchema>]
    class CatalogIcebergSource < Struct.new(
      :name,
      :database,
      :table,
      :additional_iceberg_options,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing migration status information.</p>
    # @!attribute import_completed
    #   <p>
    #               <code>True</code> if the migration has completed, or <code>False</code> otherwise.</p>
    #   @return [Boolean]
    # @!attribute import_time
    #   <p>The time that the migration was started.</p>
    #   @return [Time]
    # @!attribute imported_by
    #   <p>The name of the person who initiated the migration.</p>
    #   @return [String]
    class CatalogImportStatus < Struct.new(
      :import_completed,
      :import_time,
      :imported_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:import_completed] = false unless options.key?(:import_completed)
        super
      end
    end

    # <p>A structure that describes catalog properties.</p>
    # @!attribute description
    #   <p>Description string, not more than 2048 bytes long, matching the URI address multi-line string pattern. A description of the catalog.</p>
    #   @return [String]
    # @!attribute federated_catalog
    #   <p>A <code>FederatedCatalog</code> object. A <code>FederatedCatalog</code> structure that references an entity outside the Glue Data Catalog, for example a Redshift database.</p>
    #   @return [Types::FederatedCatalog]
    # @!attribute parameters
    #   <p>A map array of key-value pairs that define the parameters and properties of the catalog.</p>
    #   @return [Hash<String, String>]
    # @!attribute target_redshift_catalog
    #   <p>A <code>TargetRedshiftCatalog</code> object that describes a target catalog for resource linking.</p>
    #   @return [Types::TargetRedshiftCatalog]
    # @!attribute catalog_properties
    #   <p>A <code>CatalogProperties</code> object that specifies data lake access properties and other custom properties.</p>
    #   @return [Types::CatalogProperties]
    # @!attribute create_table_default_permissions
    #   <p>An array of <code>PrincipalPermissions</code> objects. Creates a set of default permissions on the table(s) for principals. Used by Amazon Web Services Lake Formation. Typically should be explicitly set as an empty list.</p>
    #   @return [Array<Types::PrincipalPermissions>]
    # @!attribute create_database_default_permissions
    #   <p>An array of <code>PrincipalPermissions</code> objects. Creates a set of default permissions on the database(s) for principals. Used by Amazon Web Services Lake Formation. Typically should be explicitly set as an empty list.</p>
    #   @return [Array<Types::PrincipalPermissions>]
    # @!attribute allow_full_table_external_data_access
    #   <p>
    #         Allows third-party engines to access data in Amazon S3 locations that are registered with Lake Formation.
    #       </p>
    #   @return [String]
    class CatalogInput < Struct.new(
      :description,
      :federated_catalog,
      :parameters,
      :target_redshift_catalog,
      :catalog_properties,
      :create_table_default_permissions,
      :create_database_default_permissions,
      :allow_full_table_external_data_access,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Apache Kafka data store in the Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data store.</p>
    #   @return [String]
    # @!attribute window_size
    #   <p>The amount of time to spend processing each micro batch.</p>
    #   @return [Integer]
    # @!attribute detect_schema
    #   <p>Whether to automatically determine the schema from the incoming data.</p>
    #   @return [Boolean]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute streaming_options
    #   <p>Specifies the streaming options.</p>
    #   @return [Types::KafkaStreamingSourceOptions]
    # @!attribute data_preview_options
    #   <p>Specifies options related to data preview for viewing a sample of your data.</p>
    #   @return [Types::StreamingDataPreviewOptions]
    class CatalogKafkaSource < Struct.new(
      :name,
      :window_size,
      :detect_schema,
      :table,
      :database,
      :streaming_options,
      :data_preview_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a Kinesis data source in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute window_size
    #   <p>The amount of time to spend processing each micro batch.</p>
    #   @return [Integer]
    # @!attribute detect_schema
    #   <p>Whether to automatically determine the schema from the incoming data.</p>
    #   @return [Boolean]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute streaming_options
    #   <p>Additional options for the Kinesis streaming data source.</p>
    #   @return [Types::KinesisStreamingSourceOptions]
    # @!attribute data_preview_options
    #   <p>Additional options for data preview.</p>
    #   @return [Types::StreamingDataPreviewOptions]
    class CatalogKinesisSource < Struct.new(
      :name,
      :window_size,
      :detect_schema,
      :table,
      :database,
      :streaming_options,
      :data_preview_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that specifies data lake access properties and other custom properties.</p>
    # @!attribute data_lake_access_properties
    #   <p>A <code>DataLakeAccessProperties</code> object that specifies properties to configure data lake access for your catalog resource in the Glue Data Catalog.</p>
    #   @return [Types::DataLakeAccessProperties]
    # @!attribute iceberg_optimization_properties
    #   <p>A structure that specifies Iceberg table optimization properties for the catalog. This includes configuration for compaction, retention, and 
    #         orphan file deletion operations that can be applied to Iceberg tables in this catalog.</p>
    #   @return [Types::IcebergOptimizationProperties]
    # @!attribute custom_properties
    #   <p>Additional key-value properties for the catalog, such as column statistics optimizations.</p>
    #   @return [Hash<String, String>]
    class CatalogProperties < Struct.new(
      :data_lake_access_properties,
      :iceberg_optimization_properties,
      :custom_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Property attributes that include configuration properties for the catalog resource.</p>
    # @!attribute data_lake_access_properties
    #   <p>A <code>DataLakeAccessProperties</code> object with input properties to configure data lake access for your catalog resource in the Glue Data Catalog.</p>
    #   @return [Types::DataLakeAccessPropertiesOutput]
    # @!attribute iceberg_optimization_properties
    #   <p>An <code>IcebergOptimizationPropertiesOutput</code> object that specifies Iceberg table optimization settings for the catalog, including 
    #         configurations for compaction, retention, and orphan file deletion operations.</p>
    #   @return [Types::IcebergOptimizationPropertiesOutput]
    # @!attribute custom_properties
    #   <p>Additional key-value properties for the catalog, such as column statistics optimizations.</p>
    #   @return [Hash<String, String>]
    class CatalogPropertiesOutput < Struct.new(
      :data_lake_access_properties,
      :iceberg_optimization_properties,
      :custom_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A policy that specifies update behavior for the crawler.</p>
    # @!attribute enable_update_catalog
    #   <p>Whether to use the specified update behavior when the crawler finds a changed schema.</p>
    #   @return [Boolean]
    # @!attribute update_behavior
    #   <p>The update behavior when the crawler finds a changed schema.</p>
    #   @return [String]
    class CatalogSchemaChangePolicy < Struct.new(
      :enable_update_catalog,
      :update_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a data store in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data store.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    # @!attribute partition_predicate
    #   <p>
    #         Partitions satisfying this predicate are deleted. Files within the retention period in these partitions are not deleted. 
    #       </p>
    #   @return [String]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the catalog source.</p>
    #   @return [Array<Types::GlueSchema>]
    class CatalogSource < Struct.new(
      :name,
      :database,
      :table,
      :partition_predicate,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Glue Data Catalog target.</p>
    # @!attribute database_name
    #   <p>The name of the database to be synchronized.</p>
    #   @return [String]
    # @!attribute tables
    #   <p>A list of the tables to be synchronized.</p>
    #   @return [Array<String>]
    # @!attribute connection_name
    #   <p>The name of the connection for an Amazon S3-backed Data Catalog table to be a target of the crawl when using a <code>Catalog</code> connection type paired with a <code>NETWORK</code> Connection type.</p>
    #   @return [String]
    # @!attribute event_queue_arn
    #   <p>A valid Amazon SQS ARN. For example, <code>arn:aws:sqs:region:account:sqs</code>.</p>
    #   @return [String]
    # @!attribute dlq_event_queue_arn
    #   <p>A valid Amazon dead-letter SQS ARN. For example, <code>arn:aws:sqs:region:account:deadLetterQueue</code>.</p>
    #   @return [String]
    class CatalogTarget < Struct.new(
      :database_name,
      :tables,
      :connection_name,
      :event_queue_arn,
      :dlq_event_queue_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_format
    #   <p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>
    #   @return [String]
    # @!attribute schema_definition
    #   <p>The definition of the schema that has to be validated.</p>
    #   @return [String]
    class CheckSchemaVersionValidityInput < Struct.new(
      :data_format,
      :schema_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute valid
    #   <p>Return true, if the schema is valid and false otherwise.</p>
    #   @return [Boolean]
    # @!attribute error
    #   <p>A validation failure error message.</p>
    #   @return [String]
    class CheckSchemaVersionValidityResponse < Struct.new(
      :valid,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:valid] = false unless options.key?(:valid)
        super
      end
    end

    # <p>Classifiers are triggered during a crawl task. A classifier checks whether a given file is
    #       in a format it can handle. If it is, the classifier creates a schema in the form of a
    #         <code>StructType</code> object that matches that data format.</p>
    #          <p>You can use the standard classifiers that Glue provides, or you can write your own
    #       classifiers to best categorize your data sources and specify the appropriate schemas to use
    #       for them. A classifier can be a <code>grok</code> classifier, an <code>XML</code> classifier,
    #       a <code>JSON</code> classifier, or a custom <code>CSV</code> classifier, as specified in one
    #       of the fields in the <code>Classifier</code> object.</p>
    # @!attribute grok_classifier
    #   <p>A classifier that uses <code>grok</code>.</p>
    #   @return [Types::GrokClassifier]
    # @!attribute xml_classifier
    #   <p>A classifier for XML content.</p>
    #   @return [Types::XMLClassifier]
    # @!attribute json_classifier
    #   <p>A classifier for JSON content.</p>
    #   @return [Types::JsonClassifier]
    # @!attribute csv_classifier
    #   <p>A classifier for comma-separated values (CSV).</p>
    #   @return [Types::CsvClassifier]
    class Classifier < Struct.new(
      :grok_classifier,
      :xml_classifier,
      :json_classifier,
      :csv_classifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how Amazon CloudWatch data should be encrypted.</p>
    # @!attribute cloud_watch_encryption_mode
    #   <p>The encryption mode to use for CloudWatch data.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.</p>
    #   @return [String]
    class CloudWatchEncryption < Struct.new(
      :cloud_watch_encryption_mode,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             <code>CodeGenConfigurationNode</code> enumerates all valid Node types. One and only one of its member variables can be populated.</p>
    # @!attribute athena_connector_source
    #   <p>Specifies a connector to an Amazon Athena data source.</p>
    #   @return [Types::AthenaConnectorSource]
    # @!attribute jdbc_connector_source
    #   <p>Specifies a connector to a JDBC data source.</p>
    #   @return [Types::JDBCConnectorSource]
    # @!attribute spark_connector_source
    #   <p>Specifies a connector to an Apache Spark data source.</p>
    #   @return [Types::SparkConnectorSource]
    # @!attribute catalog_source
    #   <p>Specifies a data store in the Glue Data Catalog.</p>
    #   @return [Types::CatalogSource]
    # @!attribute redshift_source
    #   <p>Specifies an Amazon Redshift data store.</p>
    #   @return [Types::RedshiftSource]
    # @!attribute s3_catalog_source
    #   <p>Specifies an Amazon S3 data store in the Glue Data Catalog.</p>
    #   @return [Types::S3CatalogSource]
    # @!attribute s3_csv_source
    #   <p>Specifies a command-separated value (CSV) data store stored in Amazon S3.</p>
    #   @return [Types::S3CsvSource]
    # @!attribute s3_json_source
    #   <p>Specifies a JSON data store stored in Amazon S3.</p>
    #   @return [Types::S3JsonSource]
    # @!attribute s3_parquet_source
    #   <p>Specifies an Apache Parquet data store stored in Amazon S3.</p>
    #   @return [Types::S3ParquetSource]
    # @!attribute relational_catalog_source
    #   <p>Specifies a relational catalog data store in the Glue Data Catalog.</p>
    #   @return [Types::RelationalCatalogSource]
    # @!attribute dynamo_db_catalog_source
    #   <p>Specifies a DynamoDBC Catalog data store in the Glue Data Catalog.</p>
    #   @return [Types::DynamoDBCatalogSource]
    # @!attribute jdbc_connector_target
    #   <p>Specifies a data target that writes to Amazon S3 in Apache Parquet columnar storage.</p>
    #   @return [Types::JDBCConnectorTarget]
    # @!attribute spark_connector_target
    #   <p>Specifies a target that uses an Apache Spark connector.</p>
    #   @return [Types::SparkConnectorTarget]
    # @!attribute catalog_target
    #   <p>Specifies a target that uses a Glue Data Catalog table.</p>
    #   @return [Types::BasicCatalogTarget]
    # @!attribute redshift_target
    #   <p>Specifies a target that uses Amazon Redshift.</p>
    #   @return [Types::RedshiftTarget]
    # @!attribute s3_catalog_target
    #   <p>Specifies a data target that writes to Amazon S3 using the Glue Data Catalog.</p>
    #   @return [Types::S3CatalogTarget]
    # @!attribute s3_glue_parquet_target
    #   <p>Specifies a data target that writes to Amazon S3 in Apache Parquet columnar storage.</p>
    #   @return [Types::S3GlueParquetTarget]
    # @!attribute s3_direct_target
    #   <p>Specifies a data target that writes to Amazon S3.</p>
    #   @return [Types::S3DirectTarget]
    # @!attribute apply_mapping
    #   <p>Specifies a transform that maps data property keys in the data source to data property keys in the data target. You can rename keys, modify the data types for keys, and choose which keys to drop from the dataset.</p>
    #   @return [Types::ApplyMapping]
    # @!attribute select_fields
    #   <p>Specifies a transform that chooses the data property keys that you want to keep.</p>
    #   @return [Types::SelectFields]
    # @!attribute drop_fields
    #   <p>Specifies a transform that chooses the data property keys that you want to drop.</p>
    #   @return [Types::DropFields]
    # @!attribute rename_field
    #   <p>Specifies a transform that renames a single data property key.</p>
    #   @return [Types::RenameField]
    # @!attribute spigot
    #   <p>Specifies a transform that writes samples of the data to an Amazon S3 bucket.</p>
    #   @return [Types::Spigot]
    # @!attribute join
    #   <p>Specifies a transform that joins two datasets into one dataset using a comparison phrase on the specified data property keys. You can use inner, outer, left, right, left semi, and left anti joins.</p>
    #   @return [Types::Join]
    # @!attribute split_fields
    #   <p>Specifies a transform that splits data property keys into two <code>DynamicFrames</code>. The output is a collection of <code>DynamicFrames</code>: one with selected data property keys, and one with the remaining data property keys.</p>
    #   @return [Types::SplitFields]
    # @!attribute select_from_collection
    #   <p>Specifies a transform that chooses one <code>DynamicFrame</code> from a collection of <code>DynamicFrames</code>. The output is the selected <code>DynamicFrame</code>
    #            </p>
    #   @return [Types::SelectFromCollection]
    # @!attribute fill_missing_values
    #   <p>Specifies a transform that locates records in the dataset that have missing values and adds a new field with a value determined by imputation. The input data set is used to train the machine learning model that determines what the missing value should be.</p>
    #   @return [Types::FillMissingValues]
    # @!attribute filter
    #   <p>Specifies a transform that splits a dataset into two, based on a filter condition.</p>
    #   @return [Types::Filter]
    # @!attribute custom_code
    #   <p>Specifies a transform that uses custom code you provide to perform the data transformation. The output is a collection of DynamicFrames.</p>
    #   @return [Types::CustomCode]
    # @!attribute spark_sql
    #   <p>Specifies a transform where you enter a SQL query using Spark SQL syntax to transform the data. The output is a single <code>DynamicFrame</code>.</p>
    #   @return [Types::SparkSQL]
    # @!attribute direct_kinesis_source
    #   <p>Specifies a direct Amazon Kinesis data source.</p>
    #   @return [Types::DirectKinesisSource]
    # @!attribute direct_kafka_source
    #   <p>Specifies an Apache Kafka data store.</p>
    #   @return [Types::DirectKafkaSource]
    # @!attribute catalog_kinesis_source
    #   <p>Specifies a Kinesis data source in the Glue Data Catalog.</p>
    #   @return [Types::CatalogKinesisSource]
    # @!attribute catalog_kafka_source
    #   <p>Specifies an Apache Kafka data store in the Data Catalog.</p>
    #   @return [Types::CatalogKafkaSource]
    # @!attribute drop_null_fields
    #   <p>Specifies a transform that removes columns from the dataset if all values in the column are 'null'. By default, Glue Studio will recognize null objects, but some values such as empty strings, strings that are "null", -1 integers or other placeholders such as zeros, are not automatically recognized as nulls.</p>
    #   @return [Types::DropNullFields]
    # @!attribute merge
    #   <p>Specifies a transform that merges a <code>DynamicFrame</code> with a staging <code>DynamicFrame</code> based on the specified primary keys to identify records. Duplicate records (records with the same primary keys) are not de-duplicated. </p>
    #   @return [Types::Merge]
    # @!attribute union
    #   <p>Specifies a transform that combines the rows from two or more datasets into a single result.</p>
    #   @return [Types::Union]
    # @!attribute pii_detection
    #   <p>Specifies a transform that identifies, removes or masks PII data.</p>
    #   @return [Types::PIIDetection]
    # @!attribute aggregate
    #   <p>Specifies a transform that groups rows by chosen fields and computes the aggregated value by specified function.</p>
    #   @return [Types::Aggregate]
    # @!attribute drop_duplicates
    #   <p>Specifies a transform that removes rows of repeating data from a data set.</p>
    #   @return [Types::DropDuplicates]
    # @!attribute governed_catalog_target
    #   <p>Specifies a data target that writes to a goverened catalog.</p>
    #   @return [Types::GovernedCatalogTarget]
    # @!attribute governed_catalog_source
    #   <p>Specifies a data source in a goverened Data Catalog.</p>
    #   @return [Types::GovernedCatalogSource]
    # @!attribute microsoft_sql_server_catalog_source
    #   <p>Specifies a Microsoft SQL server data source in the Glue Data Catalog.</p>
    #   @return [Types::MicrosoftSQLServerCatalogSource]
    # @!attribute my_sql_catalog_source
    #   <p>Specifies a MySQL data source in the Glue Data Catalog.</p>
    #   @return [Types::MySQLCatalogSource]
    # @!attribute oracle_sql_catalog_source
    #   <p>Specifies an Oracle data source in the Glue Data Catalog.</p>
    #   @return [Types::OracleSQLCatalogSource]
    # @!attribute postgre_sql_catalog_source
    #   <p>Specifies a PostgresSQL data source in the Glue Data Catalog.</p>
    #   @return [Types::PostgreSQLCatalogSource]
    # @!attribute microsoft_sql_server_catalog_target
    #   <p>Specifies a target that uses Microsoft SQL.</p>
    #   @return [Types::MicrosoftSQLServerCatalogTarget]
    # @!attribute my_sql_catalog_target
    #   <p>Specifies a target that uses MySQL.</p>
    #   @return [Types::MySQLCatalogTarget]
    # @!attribute oracle_sql_catalog_target
    #   <p>Specifies a target that uses Oracle SQL.</p>
    #   @return [Types::OracleSQLCatalogTarget]
    # @!attribute postgre_sql_catalog_target
    #   <p>Specifies a target that uses Postgres SQL.</p>
    #   @return [Types::PostgreSQLCatalogTarget]
    # @!attribute route
    #   <p>Specifies a route node that directs data to different output paths based on defined filtering conditions.</p>
    #   @return [Types::Route]
    # @!attribute dynamic_transform
    #   <p>Specifies a custom visual transform created by a user.</p>
    #   @return [Types::DynamicTransform]
    # @!attribute evaluate_data_quality
    #   <p>Specifies your data quality evaluation criteria.</p>
    #   @return [Types::EvaluateDataQuality]
    # @!attribute s3_catalog_hudi_source
    #   <p>Specifies a Hudi data source that is registered in the Glue Data Catalog. The data source must be stored in Amazon S3.</p>
    #   @return [Types::S3CatalogHudiSource]
    # @!attribute catalog_hudi_source
    #   <p>Specifies a Hudi data source that is registered in the Glue Data Catalog.</p>
    #   @return [Types::CatalogHudiSource]
    # @!attribute s3_hudi_source
    #   <p>Specifies a Hudi data source stored in Amazon S3.</p>
    #   @return [Types::S3HudiSource]
    # @!attribute s3_hudi_catalog_target
    #   <p>Specifies a target that writes to a Hudi data source in the Glue Data Catalog.</p>
    #   @return [Types::S3HudiCatalogTarget]
    # @!attribute s3_hudi_direct_target
    #   <p>Specifies a target that writes to a Hudi data source in Amazon S3.</p>
    #   @return [Types::S3HudiDirectTarget]
    # @!attribute direct_jdbc_source
    #   <p>Specifies the direct JDBC source connection.</p>
    #   @return [Types::DirectJDBCSource]
    # @!attribute s3_catalog_delta_source
    #   <p>Specifies a Delta Lake data source that is registered in the Glue Data Catalog. The data source must be stored in Amazon S3.</p>
    #   @return [Types::S3CatalogDeltaSource]
    # @!attribute catalog_delta_source
    #   <p>Specifies a Delta Lake data source that is registered in the Glue Data Catalog.</p>
    #   @return [Types::CatalogDeltaSource]
    # @!attribute s3_delta_source
    #   <p>Specifies a Delta Lake data source stored in Amazon S3.</p>
    #   @return [Types::S3DeltaSource]
    # @!attribute s3_delta_catalog_target
    #   <p>Specifies a target that writes to a Delta Lake data source in the Glue Data Catalog.</p>
    #   @return [Types::S3DeltaCatalogTarget]
    # @!attribute s3_delta_direct_target
    #   <p>Specifies a target that writes to a Delta Lake data source in Amazon S3.</p>
    #   @return [Types::S3DeltaDirectTarget]
    # @!attribute amazon_redshift_source
    #   <p>Specifies a target that writes to a data source in Amazon Redshift.</p>
    #   @return [Types::AmazonRedshiftSource]
    # @!attribute amazon_redshift_target
    #   <p>Specifies a target that writes to a data target in Amazon Redshift.</p>
    #   @return [Types::AmazonRedshiftTarget]
    # @!attribute evaluate_data_quality_multi_frame
    #   <p>Specifies your data quality evaluation criteria. Allows multiple input data and returns a collection of Dynamic Frames.</p>
    #   @return [Types::EvaluateDataQualityMultiFrame]
    # @!attribute recipe
    #   <p>Specifies a Glue DataBrew recipe node.</p>
    #   @return [Types::Recipe]
    # @!attribute snowflake_source
    #   <p>Specifies a Snowflake data source.</p>
    #   @return [Types::SnowflakeSource]
    # @!attribute snowflake_target
    #   <p>Specifies a target that writes to a Snowflake data source.</p>
    #   @return [Types::SnowflakeTarget]
    # @!attribute connector_data_source
    #   <p>Specifies a source generated with standard connection options.</p>
    #   @return [Types::ConnectorDataSource]
    # @!attribute connector_data_target
    #   <p>Specifies a target generated with standard connection options.</p>
    #   @return [Types::ConnectorDataTarget]
    # @!attribute s3_catalog_iceberg_source
    #   <p>Specifies an Apache Iceberg data source that is registered in the Glue Data Catalog. The Iceberg data source must be stored in Amazon S3.</p>
    #   @return [Types::S3CatalogIcebergSource]
    # @!attribute catalog_iceberg_source
    #   <p>Specifies an Apache Iceberg data source that is registered in the Glue Data Catalog.</p>
    #   @return [Types::CatalogIcebergSource]
    # @!attribute s3_iceberg_catalog_target
    #   <p>Specifies an Apache Iceberg catalog target that writes data to Amazon S3 and registers the table in the Glue Data Catalog.</p>
    #   @return [Types::S3IcebergCatalogTarget]
    # @!attribute s3_iceberg_direct_target
    #   <p>Defines configuration parameters for writing data to Amazon S3 as an Apache Iceberg table.</p>
    #   @return [Types::S3IcebergDirectTarget]
    # @!attribute s3_excel_source
    #   <p>Defines configuration parameters for reading Excel files from Amazon S3.</p>
    #   @return [Types::S3ExcelSource]
    # @!attribute s3_hyper_direct_target
    #   <p>Defines configuration parameters for writing data to Amazon S3 using HyperDirect optimization.</p>
    #   @return [Types::S3HyperDirectTarget]
    # @!attribute dynamo_dbelt_connector_source
    #   <p>Specifies a DynamoDB ELT connector source for extracting data from DynamoDB tables.</p>
    #   @return [Types::DynamoDBELTConnectorSource]
    class CodeGenConfigurationNode < Struct.new(
      :athena_connector_source,
      :jdbc_connector_source,
      :spark_connector_source,
      :catalog_source,
      :redshift_source,
      :s3_catalog_source,
      :s3_csv_source,
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
      :s3_direct_target,
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
      :route,
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
      :connector_data_target,
      :s3_catalog_iceberg_source,
      :catalog_iceberg_source,
      :s3_iceberg_catalog_target,
      :s3_iceberg_direct_target,
      :s3_excel_source,
      :s3_hyper_direct_target,
      :dynamo_dbelt_connector_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a directional edge in a directed acyclic graph (DAG).</p>
    # @!attribute source
    #   <p>The ID of the node at which the edge starts.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The ID of the node at which the edge ends.</p>
    #   @return [String]
    # @!attribute target_parameter
    #   <p>The target of the edge.</p>
    #   @return [String]
    class CodeGenEdge < Struct.new(
      :source,
      :target,
      :target_parameter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a node in a directed acyclic graph (DAG)</p>
    # @!attribute id
    #   <p>A node identifier that is unique within the node's graph.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The type of node that this is.</p>
    #   @return [String]
    # @!attribute args
    #   <p>Properties of the node, in the form of name-value pairs.</p>
    #   @return [Array<Types::CodeGenNodeArg>]
    # @!attribute line_number
    #   <p>The line number of the node.</p>
    #   @return [Integer]
    class CodeGenNode < Struct.new(
      :id,
      :node_type,
      :args,
      :line_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:line_number] = 0 unless options.key?(:line_number)
        super
      end
    end

    # <p>An argument or property of a node.</p>
    # @!attribute name
    #   <p>The name of the argument or property.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the argument or property.</p>
    #   @return [String]
    # @!attribute param
    #   <p>True if the value is used as a parameter.</p>
    #   @return [Boolean]
    class CodeGenNodeArg < Struct.new(
      :name,
      :value,
      :param,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:param] = false unless options.key?(:param)
        super
      end
    end

    # <p>A column in a <code>Table</code>.</p>
    # @!attribute name
    #   <p>The name of the <code>Column</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the <code>Column</code>.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A free-form text comment.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>These key-value pairs define properties associated with the column.</p>
    #   @return [Hash<String, String>]
    class Column < Struct.new(
      :name,
      :type,
      :comment,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Encapsulates a column name that failed and the reason for failure.</p>
    # @!attribute column_name
    #   <p>The name of the column that failed.</p>
    #   @return [String]
    # @!attribute error
    #   <p>An error message with the reason for the failure of an operation.</p>
    #   @return [Types::ErrorDetail]
    class ColumnError < Struct.new(
      :column_name,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing the column name and column importance score for a column. </p>
    #          <p>Column importance helps you understand how columns contribute to your model, by identifying which columns in your records are more important than others.</p>
    # @!attribute column_name
    #   <p>The name of a column.</p>
    #   @return [String]
    # @!attribute importance
    #   <p>The column importance score for the column, as a decimal.</p>
    #   @return [Float]
    class ColumnImportance < Struct.new(
      :column_name,
      :importance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that uses both column-level and row-level filtering.</p>
    # @!attribute column_name
    #   <p>A string containing the name of the column.</p>
    #   @return [String]
    # @!attribute row_filter_expression
    #   <p>A string containing the row-level filter expression.</p>
    #   @return [String]
    class ColumnRowFilter < Struct.new(
      :column_name,
      :row_filter_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the generated column-level statistics for a table or partition.</p>
    # @!attribute column_name
    #   <p>Name of column which statistics belong to.</p>
    #   @return [String]
    # @!attribute column_type
    #   <p>The data type of the column.</p>
    #   @return [String]
    # @!attribute analyzed_time
    #   <p>The timestamp of when column statistics were generated.</p>
    #   @return [Time]
    # @!attribute statistics_data
    #   <p>A <code>ColumnStatisticData</code> object that contains the statistics data values.</p>
    #   @return [Types::ColumnStatisticsData]
    class ColumnStatistics < Struct.new(
      :column_name,
      :column_type,
      :analyzed_time,
      :statistics_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the individual types of column statistics data. Only one data object should be set and indicated by the <code>Type</code> attribute.</p>
    # @!attribute type
    #   <p>The type of column statistics data.</p>
    #   @return [String]
    # @!attribute boolean_column_statistics_data
    #   <p>Boolean column statistics data.</p>
    #   @return [Types::BooleanColumnStatisticsData]
    # @!attribute date_column_statistics_data
    #   <p>Date column statistics data.</p>
    #   @return [Types::DateColumnStatisticsData]
    # @!attribute decimal_column_statistics_data
    #   <p>
    #           Decimal column statistics data. UnscaledValues within are Base64-encoded
    #           binary objects storing big-endian, two's complement representations of
    #           the decimal's unscaled value.
    #       </p>
    #   @return [Types::DecimalColumnStatisticsData]
    # @!attribute double_column_statistics_data
    #   <p>Double column statistics data.</p>
    #   @return [Types::DoubleColumnStatisticsData]
    # @!attribute long_column_statistics_data
    #   <p>Long column statistics data.</p>
    #   @return [Types::LongColumnStatisticsData]
    # @!attribute string_column_statistics_data
    #   <p>String column statistics data.</p>
    #   @return [Types::StringColumnStatisticsData]
    # @!attribute binary_column_statistics_data
    #   <p>Binary column statistics data.</p>
    #   @return [Types::BinaryColumnStatisticsData]
    class ColumnStatisticsData < Struct.new(
      :type,
      :boolean_column_statistics_data,
      :date_column_statistics_data,
      :decimal_column_statistics_data,
      :double_column_statistics_data,
      :long_column_statistics_data,
      :string_column_statistics_data,
      :binary_column_statistics_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Encapsulates a <code>ColumnStatistics</code> object that failed and the reason for failure.</p>
    # @!attribute column_statistics
    #   <p>The <code>ColumnStatistics</code> of the column.</p>
    #   @return [Types::ColumnStatistics]
    # @!attribute error
    #   <p>An error message with the reason for the failure of an operation.</p>
    #   @return [Types::ErrorDetail]
    class ColumnStatisticsError < Struct.new(
      :column_statistics,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception thrown when you try to stop a task run when there is no task running.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ColumnStatisticsTaskNotRunningException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The object that shows the details of the column stats run.</p>
    # @!attribute customer_id
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute column_statistics_task_run_id
    #   <p>The identifier for the particular column statistics task run.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The database where the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table for which column statistics is generated.</p>
    #   @return [String]
    # @!attribute column_name_list
    #   <p>A list of the column names. If none is supplied, all column names for the table will be used by default.</p>
    #   @return [Array<String>]
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the table resides. If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The IAM role that the service assumes to generate statistics.</p>
    #   @return [String]
    # @!attribute sample_size
    #   <p>The percentage of rows used to generate statistics. If none is supplied, the entire table will be used to generate stats.</p>
    #   @return [Float]
    # @!attribute security_configuration
    #   <p>Name of the security configuration that is used to encrypt CloudWatch logs for the column stats task run.</p>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers used to generate column statistics. The job is preconfigured to autoscale up to 25 instances.</p>
    #   @return [Integer]
    # @!attribute worker_type
    #   <p>The type of workers being used for generating stats. The default is <code>g.1x</code>.</p>
    #   @return [String]
    # @!attribute computation_type
    #   <p>The type of column statistics computation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the task run.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that this task was created.</p>
    #   @return [Time]
    # @!attribute last_updated
    #   <p>The last point in time when this task was modified.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>The start time of the task.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the task.</p>
    #   @return [Time]
    # @!attribute error_message
    #   <p>The error message for the job.</p>
    #   @return [String]
    # @!attribute dpu_seconds
    #   <p>The calculated DPU usage in seconds for all autoscaled workers.</p>
    #   @return [Float]
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
      :dpu_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:sample_size] = 0 unless options.key?(:sample_size)
        options[:number_of_workers] = 0 unless options.key?(:number_of_workers)
        options[:dpu_seconds] = 0 unless options.key?(:dpu_seconds)
        super
      end
    end

    # <p>An exception thrown when you try to start another job while running a column stats generation job.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ColumnStatisticsTaskRunningException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for a column statistics task.</p>
    # @!attribute database_name
    #   <p>The name of the database where the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table for which to generate column statistics.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>A schedule for running the column statistics, specified in CRON syntax.</p>
    #   @return [Types::Schedule]
    # @!attribute column_name_list
    #   <p>A list of column names for which to run statistics.</p>
    #   @return [Array<String>]
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the database resides.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The role used for running the column statistics.</p>
    #   @return [String]
    # @!attribute sample_size
    #   <p>The percentage of data to sample.</p>
    #   @return [Float]
    # @!attribute security_configuration
    #   <p>Name of the security configuration that is used to encrypt CloudWatch logs.</p>
    #   @return [String]
    # @!attribute schedule_type
    #   <p>The type of schedule for a column statistics task. Possible values may be <code>CRON</code> or <code>AUTO</code>.</p>
    #   @return [String]
    # @!attribute setting_source
    #   <p>The source of setting the column statistics task. Possible values may be <code>CATALOG</code> or <code>TABLE</code>.</p>
    #   @return [String]
    # @!attribute last_execution_attempt
    #   <p>The last <code>ExecutionAttempt</code> for the column statistics task run.</p>
    #   @return [Types::ExecutionAttempt]
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
      :last_execution_attempt,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:sample_size] = 0 unless options.key?(:sample_size)
        super
      end
    end

    # <p>An exception thrown when you try to stop a task run.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ColumnStatisticsTaskStoppingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a compaction optimizer. This configuration defines how data files in your table will be compacted to improve 
    #       query performance and reduce storage costs.</p>
    # @!attribute iceberg_configuration
    #   <p>The configuration for an Iceberg compaction optimizer.</p>
    #   @return [Types::IcebergCompactionConfiguration]
    class CompactionConfiguration < Struct.new(
      :iceberg_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains compaction metrics for the optimizer run.</p>
    # @!attribute iceberg_metrics
    #   <p>A structure containing the Iceberg compaction metrics for the optimizer run.</p>
    #   @return [Types::IcebergCompactionMetrics]
    class CompactionMetrics < Struct.new(
      :iceberg_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing configuration for a compute environment (such as Spark, Python or Athena) returned by the <code>DescribeConnectionType</code> API.</p>
    # @!attribute name
    #   <p>A name for the compute environment configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the compute environment.</p>
    #   @return [String]
    # @!attribute compute_environment
    #   <p>The type of compute environment.</p>
    #   @return [String]
    # @!attribute supported_authentication_types
    #   <p>The supported authentication types for the compute environment.</p>
    #   @return [Array<String>]
    # @!attribute connection_options
    #   <p>The parameters used as connection options for the compute environment.</p>
    #   @return [Hash<String, Types::Property>]
    # @!attribute connection_property_name_overrides
    #   <p>The connection property name overrides for the compute environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute connection_option_name_overrides
    #   <p>The connection option name overrides for the compute environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute connection_properties_required_overrides
    #   <p>The connection properties that are required as overrides for the compute environment.</p>
    #   @return [Array<String>]
    # @!attribute physical_connection_properties_required
    #   <p>Indicates whether <code>PhysicalConnectionProperties</code> are required for the compute environment.</p>
    #   @return [Boolean]
    class ComputeEnvironmentConfiguration < Struct.new(
      :name,
      :description,
      :compute_environment,
      :supported_authentication_types,
      :connection_options,
      :connection_property_name_overrides,
      :connection_option_name_overrides,
      :connection_properties_required_overrides,
      :physical_connection_properties_required,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:connection_properties_required_overrides] = [] unless options.key?(:connection_properties_required_overrides)
        super
      end
    end

    # <p>Two processes are trying to modify a resource simultaneously.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Too many jobs are being run concurrently.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ConcurrentRunsExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a condition under which a trigger fires.</p>
    # @!attribute logical_operator
    #   <p>A logical operator.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the job whose <code>JobRuns</code> this condition applies to, and on which
    #         this trigger waits.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The condition state. Currently, the only job states that a trigger can listen for are <code>SUCCEEDED</code>, <code>STOPPED</code>, <code>FAILED</code>, and <code>TIMEOUT</code>. The only crawler states that a trigger can listen for are <code>SUCCEEDED</code>, <code>FAILED</code>, and <code>CANCELLED</code>.</p>
    #   @return [String]
    # @!attribute crawler_name
    #   <p>The name of the crawler to which this condition applies.</p>
    #   @return [String]
    # @!attribute crawl_state
    #   <p>The state of the crawler to which this condition applies.</p>
    #   @return [String]
    class Condition < Struct.new(
      :logical_operator,
      :job_name,
      :state,
      :crawler_name,
      :crawl_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specified condition was not satisfied.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ConditionCheckFailureException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Condition expression defined in the Glue Studio data preparation recipe node.</p>
    # @!attribute condition
    #   <p>The condition of the condition expression.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the condition expression.</p>
    #   @return [String]
    # @!attribute target_column
    #   <p>The target column of the condition expressions.</p>
    #   @return [String]
    class ConditionExpression < Struct.new(
      :condition,
      :value,
      :target_column,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the values that an admin sets for each job or session parameter configured in a Glue usage profile.</p>
    # @!attribute default_value
    #   <p>A default value for the parameter.</p>
    #   @return [String]
    # @!attribute allowed_values
    #   <p>A list of allowed values for the parameter.</p>
    #   @return [Array<String>]
    # @!attribute min_value
    #   <p>A minimum allowed value for the parameter.</p>
    #   @return [String]
    # @!attribute max_value
    #   <p>A maximum allowed value for the parameter.</p>
    #   @return [String]
    class ConfigurationObject < Struct.new(
      :default_value,
      :allowed_values,
      :min_value,
      :max_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>CreatePartitions</code> API was called on a table that has indexes enabled.	</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The confusion matrix shows you what your transform is predicting accurately and what types of errors it is making.</p>
    #          <p>For more information, see <a href="https://en.wikipedia.org/wiki/Confusion_matrix">Confusion matrix</a> in Wikipedia.</p>
    # @!attribute num_true_positives
    #   <p>The number of matches in the data that the transform correctly found, in the confusion matrix for your transform.</p>
    #   @return [Integer]
    # @!attribute num_false_positives
    #   <p>The number of nonmatches in the data that the transform incorrectly classified as a match,
    #         in the confusion matrix for your transform.</p>
    #   @return [Integer]
    # @!attribute num_true_negatives
    #   <p>The number of nonmatches in the data that the transform correctly rejected, in the
    #         confusion matrix for your transform.</p>
    #   @return [Integer]
    # @!attribute num_false_negatives
    #   <p>The number of matches in the data that the transform didn't find, in the confusion matrix for your transform.</p>
    #   @return [Integer]
    class ConfusionMatrix < Struct.new(
      :num_true_positives,
      :num_false_positives,
      :num_true_negatives,
      :num_false_negatives,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a connection to a data source.</p>
    # @!attribute name
    #   <p>The name of the connection definition.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the connection.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of the connection. Currently, SFTP is not supported.</p>
    #   @return [String]
    # @!attribute match_criteria
    #   <p>A list of criteria that can be used in selecting this connection.</p>
    #   @return [Array<String>]
    # @!attribute connection_properties
    #   <p>These key-value pairs define parameters for the connection when using the version 1 Connection schema:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HOST</code> - The host URI: either the
    #           fully qualified domain name (FQDN) or the IPv4 address of
    #           the database host.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PORT</code> - The port number, between
    #           1024 and 65535, of the port on which the database host is
    #           listening for database connections.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USER_NAME</code> -  The name under which
    #           to log in to the database. The value string for <code>USER_NAME</code> is "<code>USERNAME</code>".</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD</code> - A password,
    #           if one is used, for the user name.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENCRYPTED_PASSWORD</code> - When you enable connection password protection by setting <code>ConnectionPasswordEncryption</code> in the Data Catalog encryption settings, this field stores the encrypted password.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JDBC_DRIVER_JAR_URI</code> - The Amazon Simple Storage Service (Amazon S3) path of the
    #             JAR file that contains the JDBC driver to use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JDBC_DRIVER_CLASS_NAME</code> - The class name of the JDBC driver to use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JDBC_ENGINE</code> - The name of the JDBC engine to use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JDBC_ENGINE_VERSION</code> - The version of the JDBC engine to use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONFIG_FILES</code> - (Reserved for future use.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_ID</code> - The instance ID to use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JDBC_CONNECTION_URL</code> - The URL for connecting to a JDBC data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JDBC_ENFORCE_SSL</code> - A case-insensitive Boolean string (true, false) specifying whether Secure
    #             Sockets Layer (SSL) with hostname matching is enforced for the JDBC connection on the
    #             client. The default is false.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_JDBC_CERT</code> - An Amazon S3 location specifying the customer's root certificate. Glue uses this root certificate to validate the customer’s certificate when connecting to the customer database. Glue only handles X.509 certificates. The certificate provided must be DER-encoded and supplied in Base64 encoding PEM format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIP_CUSTOM_JDBC_CERT_VALIDATION</code> - By default, this is <code>false</code>. Glue validates the Signature algorithm and Subject Public Key Algorithm for the customer certificate. The only permitted algorithms for the Signature algorithm are SHA256withRSA, SHA384withRSA or SHA512withRSA. For the Subject Public Key Algorithm, the key length must be at least 2048. You can set the value of this property to <code>true</code> to skip Glue’s validation of the customer certificate.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_JDBC_CERT_STRING</code> - A custom JDBC certificate string which is used for domain match or distinguished name match to prevent a man-in-the-middle attack. In Oracle database, this is used as the <code>SSL_SERVER_CERT_DN</code>; in Microsoft SQL Server, this is used as the <code>hostNameInCertificate</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONNECTION_URL</code> - The URL for connecting to a general (non-JDBC) data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SECRET_ID</code> - The secret ID used for the secret manager of credentials.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONNECTOR_URL</code> - The connector URL for a MARKETPLACE or CUSTOM connection.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONNECTOR_TYPE</code> - The connector type for a MARKETPLACE or CUSTOM connection.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONNECTOR_CLASS_NAME</code> - The connector class name for a MARKETPLACE or CUSTOM connection.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_BOOTSTRAP_SERVERS</code> - A comma-separated list of host and port pairs that are the addresses of the Apache Kafka brokers in a Kafka cluster to which a Kafka client will connect to and bootstrap itself.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_SSL_ENABLED</code> - Whether to enable or disable SSL on an Apache Kafka connection. Default value is "true".</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_CUSTOM_CERT</code> - The Amazon S3 URL for the private CA cert file (.pem format). The default is an empty string.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_SKIP_CUSTOM_CERT_VALIDATION</code> - Whether to skip the validation of the CA cert file or not. Glue validates for three algorithms: SHA256withRSA, SHA384withRSA and SHA512withRSA. Default value is "false".</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_CLIENT_KEYSTORE</code> - The Amazon S3 location of the client keystore file for Kafka client side authentication (Optional).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_CLIENT_KEYSTORE_PASSWORD</code> - The password to access the provided keystore (Optional).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_CLIENT_KEY_PASSWORD</code> - A keystore can consist of multiple keys, so this is the password to access the client key to be used with the Kafka server side key (Optional).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD</code> - The encrypted version of the Kafka client keystore password (if the user has the Glue encrypt passwords setting selected).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD</code> - The encrypted version of the Kafka client key password (if the user has the Glue encrypt passwords setting selected).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_SASL_MECHANISM</code> - <code>"SCRAM-SHA-512"</code>, <code>"GSSAPI"</code>, <code>"AWS_MSK_IAM"</code>, or <code>"PLAIN"</code>. These are the supported <a href="https://www.iana.org/assignments/sasl-mechanisms/sasl-mechanisms.xhtml">SASL Mechanisms</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_SASL_PLAIN_USERNAME</code> - A plaintext username used to authenticate with the "PLAIN" mechanism.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_SASL_PLAIN_PASSWORD</code> - A plaintext password used to authenticate with the "PLAIN" mechanism.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENCRYPTED_KAFKA_SASL_PLAIN_PASSWORD</code> - The encrypted version of the Kafka SASL PLAIN password (if the user has the Glue encrypt passwords setting selected).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_SASL_SCRAM_USERNAME</code> - A plaintext username used to authenticate with the "SCRAM-SHA-512" mechanism.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_SASL_SCRAM_PASSWORD</code> - A plaintext password used to authenticate with the "SCRAM-SHA-512" mechanism.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENCRYPTED_KAFKA_SASL_SCRAM_PASSWORD</code> - The encrypted version of the Kafka SASL SCRAM password (if the user has the Glue encrypt passwords setting selected).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_SASL_SCRAM_SECRETS_ARN</code> - The Amazon Resource Name of a secret in Amazon Web Services Secrets Manager.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_SASL_GSSAPI_KEYTAB</code> - The S3 location of a Kerberos <code>keytab</code> file. A keytab stores long-term keys for one or more principals. For more information, see <a href="https://web.mit.edu/kerberos/krb5-latest/doc/basic/keytab_def.html">MIT Kerberos Documentation: Keytab</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_SASL_GSSAPI_KRB5_CONF</code> - The S3 location of a Kerberos <code>krb5.conf</code> file. A krb5.conf stores Kerberos configuration information, such as the location of the KDC server. For more information, see <a href="https://web.mit.edu/kerberos/krb5-1.12/doc/admin/conf_files/krb5_conf.html">MIT Kerberos Documentation: krb5.conf</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_SASL_GSSAPI_SERVICE</code> - The Kerberos service name, as set with <code>sasl.kerberos.service.name</code> in your <a href="https://kafka.apache.org/documentation/#brokerconfigs_sasl.kerberos.service.name">Kafka Configuration</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_SASL_GSSAPI_PRINCIPAL</code> - The name of the Kerberos princial used by Glue. For more information, see <a href="https://kafka.apache.org/documentation/#security_sasl_kerberos_clientconfig">Kafka Documentation: Configuring Kafka Brokers</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROLE_ARN</code> - The role to be used for running queries.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code> - The Amazon Web Services Region where queries will be run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WORKGROUP_NAME</code> - The name of an Amazon Redshift serverless workgroup or Amazon Athena workgroup in which queries will run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CLUSTER_IDENTIFIER</code> - The cluster identifier of an Amazon Redshift cluster in which queries will run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DATABASE</code> - The Amazon Redshift database that you are connecting to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute spark_properties
    #   <p>Connection properties specific to the Spark compute environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute athena_properties
    #   <p>Connection properties specific to the Athena compute environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute python_properties
    #   <p>Connection properties specific to the Python compute environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute physical_connection_requirements
    #   <p>The physical connection requirements, such as virtual private cloud (VPC) and <code>SecurityGroup</code>, that are needed to make this connection successfully.</p>
    #   @return [Types::PhysicalConnectionRequirements]
    # @!attribute creation_time
    #   <p>The timestamp of the time that this connection definition was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp of the last time the connection definition was updated.</p>
    #   @return [Time]
    # @!attribute last_updated_by
    #   <p>The user, group, or role that last updated this connection definition.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the connection. Can be one of: <code>READY</code>, <code>IN_PROGRESS</code>, or <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the connection status.</p>
    #   @return [String]
    # @!attribute last_connection_validation_time
    #   <p>A timestamp of the time this connection was last validated.</p>
    #   @return [Time]
    # @!attribute authentication_configuration
    #   <p>The authentication properties of the connection.</p>
    #   @return [Types::AuthenticationConfiguration]
    # @!attribute connection_schema_version
    #   <p>The version of the connection schema for this connection. Version 2 supports properties for specific compute environments.</p>
    #   @return [Integer]
    # @!attribute compatible_compute_environments
    #   <p>A list of compute environments compatible with the connection.</p>
    #   @return [Array<String>]
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
      :compatible_compute_environments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that is used to specify a connection to create or update.</p>
    # @!attribute name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the connection.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of the connection. Currently, these types are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>JDBC</code> - Designates a connection to a database through Java Database Connectivity (JDBC).</p>
    #                  <p>
    #                     <code>JDBC</code> Connections use the following ConnectionParameters.</p>
    #                  <ul>
    #                     <li>
    #                        <p>Required: All of (<code>HOST</code>, <code>PORT</code>, <code>JDBC_ENGINE</code>) or <code>JDBC_CONNECTION_URL</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>Required: All of (<code>USERNAME</code>, <code>PASSWORD</code>) or <code>SECRET_ID</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>Optional: <code>JDBC_ENFORCE_SSL</code>, <code>CUSTOM_JDBC_CERT</code>, <code>CUSTOM_JDBC_CERT_STRING</code>, <code>SKIP_CUSTOM_JDBC_CERT_VALIDATION</code>.  These parameters are used to configure SSL with JDBC.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA</code> - Designates a connection to an Apache Kafka streaming platform.</p>
    #                  <p>
    #                     <code>KAFKA</code> Connections use the following ConnectionParameters.</p>
    #                  <ul>
    #                     <li>
    #                        <p>Required: <code>KAFKA_BOOTSTRAP_SERVERS</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>Optional: <code>KAFKA_SSL_ENABLED</code>, <code>KAFKA_CUSTOM_CERT</code>, <code>KAFKA_SKIP_CUSTOM_CERT_VALIDATION</code>. These parameters are used to configure SSL with <code>KAFKA</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>Optional: <code>KAFKA_CLIENT_KEYSTORE</code>, <code>KAFKA_CLIENT_KEYSTORE_PASSWORD</code>, <code>KAFKA_CLIENT_KEY_PASSWORD</code>, <code>ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD</code>, <code>ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD</code>. These parameters are used to configure TLS client configuration with SSL in <code>KAFKA</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>Optional: <code>KAFKA_SASL_MECHANISM</code>. Can be specified as <code>SCRAM-SHA-512</code>, <code>GSSAPI</code>, or <code>AWS_MSK_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>Optional: <code>KAFKA_SASL_SCRAM_USERNAME</code>, <code>KAFKA_SASL_SCRAM_PASSWORD</code>, <code>ENCRYPTED_KAFKA_SASL_SCRAM_PASSWORD</code>. These parameters are used to configure SASL/SCRAM-SHA-512 authentication with <code>KAFKA</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>Optional: <code>KAFKA_SASL_GSSAPI_KEYTAB</code>, <code>KAFKA_SASL_GSSAPI_KRB5_CONF</code>, <code>KAFKA_SASL_GSSAPI_SERVICE</code>, <code>KAFKA_SASL_GSSAPI_PRINCIPAL</code>. These parameters are used to configure SASL/GSSAPI authentication with <code>KAFKA</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MONGODB</code> - Designates a connection to a MongoDB document database.</p>
    #                  <p>
    #                     <code>MONGODB</code> Connections use the following ConnectionParameters.</p>
    #                  <ul>
    #                     <li>
    #                        <p>Required: <code>CONNECTION_URL</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>Required: All of (<code>USERNAME</code>, <code>PASSWORD</code>) or <code>SECRET_ID</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VIEW_VALIDATION_REDSHIFT</code> - Designates a connection used for view validation by Amazon Redshift.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VIEW_VALIDATION_ATHENA</code> - Designates a connection used for view validation by Amazon Athena.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NETWORK</code> - Designates a network connection to a data source within an Amazon Virtual Private Cloud environment (Amazon VPC).</p>
    #                  <p>
    #                     <code>NETWORK</code> Connections do not require ConnectionParameters. Instead, provide a PhysicalConnectionRequirements.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MARKETPLACE</code> - Uses configuration settings contained in a connector purchased from Amazon Web Services Marketplace to read from and write to data stores that are not natively supported by Glue.</p>
    #                  <p>
    #                     <code>MARKETPLACE</code> Connections use the following ConnectionParameters.</p>
    #                  <ul>
    #                     <li>
    #                        <p>Required: <code>CONNECTOR_TYPE</code>, <code>CONNECTOR_URL</code>, <code>CONNECTOR_CLASS_NAME</code>, <code>CONNECTION_URL</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>Required for <code>JDBC</code>
    #                           <code>CONNECTOR_TYPE</code> connections: All of (<code>USERNAME</code>, <code>PASSWORD</code>) or <code>SECRET_ID</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM</code> - Uses configuration settings contained in a custom connector to read from and write to data stores that are not natively supported by Glue.</p>
    #               </li>
    #            </ul>
    #            <p>Additionally, a <code>ConnectionType</code> for the following SaaS connectors is supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FACEBOOKADS</code> - Designates a connection to Facebook Ads.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GOOGLEADS</code> - Designates a connection to Google Ads.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GOOGLESHEETS</code> - Designates a connection to Google Sheets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GOOGLEANALYTICS4</code> - Designates a connection to Google Analytics 4.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HUBSPOT</code> - Designates a connection to HubSpot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTAGRAMADS</code> - Designates a connection to Instagram Ads.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INTERCOM</code> - Designates a connection to Intercom.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JIRACLOUD</code> - Designates a connection to Jira Cloud.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MARKETO</code> - Designates a connection to Adobe Marketo Engage.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NETSUITEERP</code> - Designates a connection to Oracle NetSuite.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SALESFORCE</code> - Designates a connection to Salesforce using OAuth authentication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SALESFORCEMARKETINGCLOUD</code> - Designates a connection to Salesforce Marketing Cloud.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SALESFORCEPARDOT</code> - Designates a connection to Salesforce Marketing Cloud Account Engagement (MCAE).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAPODATA</code> - Designates a connection to SAP OData.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICENOW</code> - Designates a connection to ServiceNow.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SLACK</code> - Designates a connection to Slack.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SNAPCHATADS</code> - Designates a connection to Snapchat Ads.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STRIPE</code> - Designates a connection to Stripe.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZENDESK</code> - Designates a connection to Zendesk.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZOHOCRM</code> - Designates a connection to Zoho CRM.</p>
    #               </li>
    #            </ul>
    #            <p>For more information on the connection parameters needed for a particular connector, see the documentation for the connector in <a href="https://docs.aws.amazon.com/glue/latest/dg/console-connections.html">Adding an Glue connection</a>in the Glue User Guide.</p>
    #            <p>
    #               <code>SFTP</code> is not supported.</p>
    #            <p>For more information about how optional ConnectionProperties are used to configure features in Glue, consult <a href="https://docs.aws.amazon.com/glue/latest/dg/connection-defining.html">Glue connection properties</a>.</p>
    #            <p>For more information about how optional ConnectionProperties are used to configure features in Glue Studio, consult <a href="https://docs.aws.amazon.com/glue/latest/ug/connectors-chapter.html">Using connectors and connections</a>.</p>
    #   @return [String]
    # @!attribute match_criteria
    #   <p>A list of criteria that can be used in selecting this connection.</p>
    #   @return [Array<String>]
    # @!attribute connection_properties
    #   <p>These key-value pairs define parameters for the connection.</p>
    #   @return [Hash<String, String>]
    # @!attribute spark_properties
    #   <p>Connection properties specific to the Spark compute environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute athena_properties
    #   <p>Connection properties specific to the Athena compute environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute python_properties
    #   <p>Connection properties specific to the Python compute environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute physical_connection_requirements
    #   <p>The physical connection requirements, such as virtual private cloud (VPC) and <code>SecurityGroup</code>, that are needed to successfully make this connection.</p>
    #   @return [Types::PhysicalConnectionRequirements]
    # @!attribute authentication_configuration
    #   <p>The authentication properties of the connection.</p>
    #   @return [Types::AuthenticationConfigurationInput]
    # @!attribute validate_credentials
    #   <p>A flag to validate the credentials during create connection. Default is true. </p>
    #   @return [Boolean]
    # @!attribute validate_for_compute_environments
    #   <p>The compute environments that the specified connection properties are validated against.</p>
    #   @return [Array<String>]
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
      :validate_for_compute_environments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:validate_credentials] = false unless options.key?(:validate_credentials)
        super
      end
    end

    # <p>The data structure used by the Data Catalog to encrypt the password as part of
    #         <code>CreateConnection</code> or <code>UpdateConnection</code> and store it in the
    #         <code>ENCRYPTED_PASSWORD</code> field in the connection properties. You can enable catalog
    #       encryption or only password encryption.</p>
    #          <p>When a <code>CreationConnection</code> request arrives containing a password, the Data
    #       Catalog first encrypts the password using your KMS key. It then encrypts the whole
    #       connection object again if catalog encryption is also enabled.</p>
    #          <p>This encryption requires that you set KMS key permissions to enable or restrict access
    #       on the password key according to your security requirements. For example, you might want only
    #       administrators to have decrypt permission on the password key.</p>
    # @!attribute return_connection_password_encrypted
    #   <p>When the <code>ReturnConnectionPasswordEncrypted</code> flag is set to "true", passwords remain encrypted in the responses of <code>GetConnection</code> and <code>GetConnections</code>. This encryption takes effect independently from catalog encryption. </p>
    #   @return [Boolean]
    # @!attribute aws_kms_key_id
    #   <p>An KMS key that is used to encrypt the connection password. </p>
    #            <p>If connection password protection is enabled, the caller of <code>CreateConnection</code>
    #         and <code>UpdateConnection</code> needs at least <code>kms:Encrypt</code> permission on the
    #         specified KMS key, to encrypt passwords before storing them in the Data Catalog. </p>
    #            <p>You can set the decrypt permission to enable or restrict access on the password key according to your security requirements.</p>
    #   @return [String]
    class ConnectionPasswordEncryption < Struct.new(
      :return_connection_password_encrypted,
      :aws_kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:return_connection_password_encrypted] = false unless options.key?(:return_connection_password_encrypted)
        super
      end
    end

    # <p>Brief information about a supported connection type returned by the <code>ListConnectionTypes</code> API.</p>
    # @!attribute connection_type
    #   <p>The name of the connection type.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable name for the connection type that is displayed in the Glue console.</p>
    #   @return [String]
    # @!attribute vendor
    #   <p>The name of the vendor or provider that created or maintains this connection type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the connection type.</p>
    #   @return [String]
    # @!attribute categories
    #   <p>A list of categories that this connection type belongs to. Categories help users filter and find appropriate connection types based on their 
    #         use cases.</p>
    #   @return [Array<String>]
    # @!attribute capabilities
    #   <p>The supported authentication types, data interface types (compute environments), and data operations of the connector.</p>
    #   @return [Types::Capabilities]
    # @!attribute logo_url
    #   <p>The URL of the logo associated with a connection type.</p>
    #   @return [String]
    # @!attribute connection_type_variants
    #   <p>A list of variants available for this connection type. Different variants may provide specialized configurations for specific use cases or 
    #         implementations of the same general connection type.</p>
    #   @return [Array<Types::ConnectionTypeVariant>]
    class ConnectionTypeBrief < Struct.new(
      :connection_type,
      :display_name,
      :vendor,
      :description,
      :categories,
      :capabilities,
      :logo_url,
      :connection_type_variants,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a variant of a connection type in Glue Data Catalog. Connection type variants provide specific configurations and behaviors 
    #       for different implementations of the same general connection type.</p>
    # @!attribute connection_type_variant_name
    #   <p>The unique identifier for the connection type variant. This name is used internally to identify the specific variant of a connection type.
    #       </p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable name for the connection type variant that is displayed in the Glue console.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A detailed description of the connection type variant, including its purpose, use cases, and any specific configuration requirements.</p>
    #   @return [String]
    # @!attribute logo_url
    #   <p>The URL of the logo associated with a connection type variant.</p>
    #   @return [String]
    class ConnectionTypeVariant < Struct.new(
      :connection_type_variant_name,
      :display_name,
      :description,
      :logo_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the connections used by a job.</p>
    # @!attribute connections
    #   <p>A list of connections used by the job.</p>
    #   @return [Array<String>]
    class ConnectionsList < Struct.new(
      :connections,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a source generated with standard connection options.</p>
    # @!attribute name
    #   <p>The name of this source node.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The <code>connectionType</code>, as provided to the underlying Glue library. This node type supports
    #   the following connection types: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>opensearch</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>azuresql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>azurecosmos</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>bigquery</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>saphana</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>teradata</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vertica</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute data
    #   <p>A map specifying connection options for the node. You can find standard connection options for the
    #       corresponding connection type in the
    #       <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-connect.html">
    #       Connection parameters</a> section of the Glue documentation.</p>
    #   @return [Hash<String, String>]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for this source.</p>
    #   @return [Array<Types::GlueSchema>]
    class ConnectorDataSource < Struct.new(
      :name,
      :connection_type,
      :data,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a target generated with standard connection options.</p>
    # @!attribute name
    #   <p>The name of this target node.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The <code>connectionType</code>, as provided to the underlying Glue library. This node type supports
    #   the following connection types: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>opensearch</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>azuresql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>azurecosmos</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>bigquery</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>saphana</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>teradata</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vertica</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute data
    #   <p>A map specifying connection options for the node. You can find standard connection options for the 
    #       corresponding connection type in the 
    #       <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-connect.html">
    #       Connection parameters</a> section of the Glue documentation.</p>
    #   @return [Hash<String, String>]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    class ConnectorDataTarget < Struct.new(
      :name,
      :connection_type,
      :data,
      :inputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a crawl in the workflow.</p>
    # @!attribute state
    #   <p>The state of the crawler.</p>
    #   @return [String]
    # @!attribute started_on
    #   <p>The date and time on which the crawl started.</p>
    #   @return [Time]
    # @!attribute completed_on
    #   <p>The date and time on which the crawl completed.</p>
    #   @return [Time]
    # @!attribute error_message
    #   <p>The error message associated with the crawl.</p>
    #   @return [String]
    # @!attribute log_group
    #   <p>The log group associated with the crawl.</p>
    #   @return [String]
    # @!attribute log_stream
    #   <p>The log stream associated with the crawl.</p>
    #   @return [String]
    class Crawl < Struct.new(
      :state,
      :started_on,
      :completed_on,
      :error_message,
      :log_group,
      :log_stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a crawler program that examines a data source and uses classifiers to try to
    #       determine its schema. If successful, the crawler records metadata concerning the data source
    #       in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the crawler.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of an IAM role that's used to access customer resources,
    #         such as Amazon Simple Storage Service (Amazon S3) data.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>A collection of targets to crawl.</p>
    #   @return [Types::CrawlerTargets]
    # @!attribute database_name
    #   <p>The name of the database in which the crawler's output is stored.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the crawler.</p>
    #   @return [String]
    # @!attribute classifiers
    #   <p>A list of UTF-8 strings that specify the custom classifiers that are associated 
    #        with the crawler.</p>
    #   @return [Array<String>]
    # @!attribute recrawl_policy
    #   <p>A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.</p>
    #   @return [Types::RecrawlPolicy]
    # @!attribute schema_change_policy
    #   <p>The policy that specifies update and delete behaviors for the crawler.</p>
    #   @return [Types::SchemaChangePolicy]
    # @!attribute lineage_configuration
    #   <p>A configuration that specifies whether data lineage is enabled for the crawler.</p>
    #   @return [Types::LineageConfiguration]
    # @!attribute state
    #   <p>Indicates whether the crawler is running, or whether a run is pending.</p>
    #   @return [String]
    # @!attribute table_prefix
    #   <p>The prefix added to the names of tables that are created.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>For scheduled crawlers, the schedule when the crawler runs.</p>
    #   @return [Types::Schedule]
    # @!attribute crawl_elapsed_time
    #   <p>If the crawler is running, contains the total time elapsed since the last crawl
    #         began.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The time that the crawler was created.</p>
    #   @return [Time]
    # @!attribute last_updated
    #   <p>The time that the crawler was last updated.</p>
    #   @return [Time]
    # @!attribute last_crawl
    #   <p>The status of the last crawl, and potentially error information if
    #         an error occurred.</p>
    #   @return [Types::LastCrawlInfo]
    # @!attribute version
    #   <p>The version of the crawler.</p>
    #   @return [Integer]
    # @!attribute configuration
    #   <p>Crawler configuration information. This versioned JSON string allows users to specify
    #         aspects of a crawler's behavior. For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html">Setting crawler configuration options</a>.</p>
    #   @return [String]
    # @!attribute crawler_security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used by this
    #         crawler.</p>
    #   @return [String]
    # @!attribute lake_formation_configuration
    #   <p>Specifies whether the crawler should use Lake Formation credentials for the crawler instead of the IAM role credentials.</p>
    #   @return [Types::LakeFormationConfiguration]
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
      :lake_formation_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:crawl_elapsed_time] = 0 unless options.key?(:crawl_elapsed_time)
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # <p>Contains the information for a run of a crawler.</p>
    # @!attribute crawl_id
    #   <p>A UUID identifier for each crawl.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the crawl.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time on which the crawl started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time on which the crawl ended.</p>
    #   @return [Time]
    # @!attribute summary
    #   <p>A run summary for the specific crawl in JSON. Contains the catalog tables and partitions that were added, updated, or deleted.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>If an error occurred, the error message associated with the crawl.</p>
    #   @return [String]
    # @!attribute log_group
    #   <p>The log group associated with the crawl.</p>
    #   @return [String]
    # @!attribute log_stream
    #   <p>The log stream associated with the crawl.</p>
    #   @return [String]
    # @!attribute message_prefix
    #   <p>The prefix for a CloudWatch message about this crawl.</p>
    #   @return [String]
    # @!attribute dpu_hour
    #   <p>The number of data processing units (DPU) used in hours for the crawl.</p>
    #   @return [Float]
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
      :dpu_hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:dpu_hour] = 0 unless options.key?(:dpu_hour)
        super
      end
    end

    # <p>Metrics for a specified crawler.</p>
    # @!attribute crawler_name
    #   <p>The name of the crawler.</p>
    #   @return [String]
    # @!attribute time_left_seconds
    #   <p>The estimated time left to complete a running crawl.</p>
    #   @return [Float]
    # @!attribute still_estimating
    #   <p>True if the crawler is still estimating how long it will take to complete this run.</p>
    #   @return [Boolean]
    # @!attribute last_runtime_seconds
    #   <p>The duration of the crawler's most recent run, in seconds.</p>
    #   @return [Float]
    # @!attribute median_runtime_seconds
    #   <p>The median duration of this crawler's runs, in seconds.</p>
    #   @return [Float]
    # @!attribute tables_created
    #   <p>The number of tables created by this crawler.</p>
    #   @return [Integer]
    # @!attribute tables_updated
    #   <p>The number of tables updated by this crawler.</p>
    #   @return [Integer]
    # @!attribute tables_deleted
    #   <p>The number of tables deleted by this crawler.</p>
    #   @return [Integer]
    class CrawlerMetrics < Struct.new(
      :crawler_name,
      :time_left_seconds,
      :still_estimating,
      :last_runtime_seconds,
      :median_runtime_seconds,
      :tables_created,
      :tables_updated,
      :tables_deleted,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:time_left_seconds] = 0 unless options.key?(:time_left_seconds)
        options[:still_estimating] = false unless options.key?(:still_estimating)
        options[:last_runtime_seconds] = 0 unless options.key?(:last_runtime_seconds)
        options[:median_runtime_seconds] = 0 unless options.key?(:median_runtime_seconds)
        options[:tables_created] = 0 unless options.key?(:tables_created)
        options[:tables_updated] = 0 unless options.key?(:tables_updated)
        options[:tables_deleted] = 0 unless options.key?(:tables_deleted)
        super
      end
    end

    # <p>The details of a Crawler node present in the workflow.</p>
    # @!attribute crawls
    #   <p>A list of crawls represented by the crawl node.</p>
    #   @return [Array<Types::Crawl>]
    class CrawlerNodeDetails < Struct.new(
      :crawls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified crawler is not running.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class CrawlerNotRunningException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation cannot be performed because the crawler is already running.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class CrawlerRunningException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified crawler is stopping.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class CrawlerStoppingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies data stores to crawl.</p>
    # @!attribute s3_targets
    #   <p>Specifies Amazon Simple Storage Service (Amazon S3) targets.</p>
    #   @return [Array<Types::S3Target>]
    # @!attribute jdbc_targets
    #   <p>Specifies JDBC targets.</p>
    #   @return [Array<Types::JdbcTarget>]
    # @!attribute mongo_db_targets
    #   <p>Specifies Amazon DocumentDB or MongoDB targets.</p>
    #   @return [Array<Types::MongoDBTarget>]
    # @!attribute dynamo_db_targets
    #   <p>Specifies Amazon DynamoDB targets.</p>
    #   @return [Array<Types::DynamoDBTarget>]
    # @!attribute catalog_targets
    #   <p>Specifies Glue Data Catalog targets.</p>
    #   @return [Array<Types::CatalogTarget>]
    # @!attribute delta_targets
    #   <p>Specifies Delta data store targets.</p>
    #   @return [Array<Types::DeltaTarget>]
    # @!attribute iceberg_targets
    #   <p>Specifies Apache Iceberg data store targets.</p>
    #   @return [Array<Types::IcebergTarget>]
    # @!attribute hudi_targets
    #   <p>Specifies Apache Hudi data store targets.</p>
    #   @return [Array<Types::HudiTarget>]
    class CrawlerTargets < Struct.new(
      :s3_targets,
      :jdbc_targets,
      :mongo_db_targets,
      :dynamo_db_targets,
      :catalog_targets,
      :delta_targets,
      :iceberg_targets,
      :hudi_targets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of fields, comparators and value that you can use to filter the crawler runs for a specified crawler.</p>
    # @!attribute field_name
    #   <p>A key used to filter the crawler runs for a specified crawler. Valid values for each of the field names are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CRAWL_ID</code>: A string representing the UUID identifier for a crawl.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STATE</code>: A string representing the state of the crawl.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>START_TIME</code> and <code>END_TIME</code>: The epoch timestamp in milliseconds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DPU_HOUR</code>: The number of data processing unit (DPU) hours used for the crawl.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute filter_operator
    #   <p>A defined comparator that operates on the value. The available operators are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GT</code>: Greater than.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GE</code>: Greater than or equal to.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LT</code>: Less than.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LE</code>: Less than or equal to.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EQ</code>: Equal to.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NE</code>: Not equal to.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute field_value
    #   <p>The value provided for comparison on the crawl field. </p>
    #   @return [String]
    class CrawlsFilter < Struct.new(
      :field_name,
      :filter_operator,
      :field_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the blueprint.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the blueprint.</p>
    #   @return [String]
    # @!attribute blueprint_location
    #   <p>Specifies a path in Amazon S3 where the blueprint is published.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be applied to this blueprint.</p>
    #   @return [Hash<String, String>]
    class CreateBlueprintRequest < Struct.new(
      :name,
      :description,
      :blueprint_location,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Returns the name of the blueprint that was registered.</p>
    #   @return [String]
    class CreateBlueprintResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the catalog to create.</p>
    #   @return [String]
    # @!attribute catalog_input
    #   <p>A <code>CatalogInput</code> object that defines the metadata for the catalog.</p>
    #   @return [Types::CatalogInput]
    # @!attribute tags
    #   <p>A map array of key-value pairs, not more than 50 pairs. Each key is a UTF-8 string, not less than 1 or more than 128 bytes long. Each value is a UTF-8 string, not more than 256 bytes long. The tags you assign to the catalog.</p>
    #   @return [Hash<String, String>]
    class CreateCatalogRequest < Struct.new(
      :name,
      :catalog_input,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateCatalogResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute grok_classifier
    #   <p>A <code>GrokClassifier</code> object specifying the classifier
    #         to create.</p>
    #   @return [Types::CreateGrokClassifierRequest]
    # @!attribute xml_classifier
    #   <p>An <code>XMLClassifier</code> object specifying the classifier
    #         to create.</p>
    #   @return [Types::CreateXMLClassifierRequest]
    # @!attribute json_classifier
    #   <p>A <code>JsonClassifier</code> object specifying the classifier
    #         to create.</p>
    #   @return [Types::CreateJsonClassifierRequest]
    # @!attribute csv_classifier
    #   <p>A <code>CsvClassifier</code> object specifying the classifier
    #         to create.</p>
    #   @return [Types::CreateCsvClassifierRequest]
    class CreateClassifierRequest < Struct.new(
      :grok_classifier,
      :xml_classifier,
      :json_classifier,
      :csv_classifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateClassifierResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the database where the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table for which to generate column statistics.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The role used for running the column statistics.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>A schedule for running the column statistics, specified in CRON syntax.</p>
    #   @return [String]
    # @!attribute column_name_list
    #   <p>A list of column names for which to run statistics.</p>
    #   @return [Array<String>]
    # @!attribute sample_size
    #   <p>The percentage of data to sample.</p>
    #   @return [Float]
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the database resides.</p>
    #   @return [String]
    # @!attribute security_configuration
    #   <p>Name of the security configuration that is used to encrypt CloudWatch logs.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tags.</p>
    #   @return [Hash<String, String>]
    class CreateColumnStatisticsTaskSettingsRequest < Struct.new(
      :database_name,
      :table_name,
      :role,
      :schedule,
      :column_name_list,
      :sample_size,
      :catalog_id,
      :security_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateColumnStatisticsTaskSettingsResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which to create the connection. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #   @return [String]
    # @!attribute connection_input
    #   <p>A <code>ConnectionInput</code> object defining the connection
    #         to create.</p>
    #   @return [Types::ConnectionInput]
    # @!attribute tags
    #   <p>The tags you assign to the connection.</p>
    #   @return [Hash<String, String>]
    class CreateConnectionRequest < Struct.new(
      :catalog_id,
      :connection_input,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute create_connection_status
    #   <p>The status of the connection creation request. The request can take some time for certain authentication types, for example when creating an OAuth connection with token exchange over VPC.</p>
    #   @return [String]
    class CreateConnectionResponse < Struct.new(
      :create_connection_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the new crawler.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The IAM role or Amazon Resource Name (ARN) of an IAM role used by the new crawler to
    #         access customer resources.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The Glue database where results are written, such as:
    #           <code>arn:aws:daylight:us-east-1::database/sometable/*</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the new crawler.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>A list of collection of targets to crawl.</p>
    #   @return [Types::CrawlerTargets]
    # @!attribute schedule
    #   <p>A <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
    #         something every day at 12:15 UTC, you would specify:
    #         <code>cron(15 12 * * ? *)</code>.</p>
    #   @return [String]
    # @!attribute classifiers
    #   <p>A list of custom classifiers that the user has registered. By default, all built-in
    #         classifiers are included in a crawl, but these custom classifiers always override the default
    #         classifiers for a given classification.</p>
    #   @return [Array<String>]
    # @!attribute table_prefix
    #   <p>The table prefix used for catalog tables that are created.</p>
    #   @return [String]
    # @!attribute schema_change_policy
    #   <p>The policy for the crawler's update and deletion behavior.</p>
    #   @return [Types::SchemaChangePolicy]
    # @!attribute recrawl_policy
    #   <p>A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.</p>
    #   @return [Types::RecrawlPolicy]
    # @!attribute lineage_configuration
    #   <p>Specifies data lineage configuration settings for the crawler.</p>
    #   @return [Types::LineageConfiguration]
    # @!attribute lake_formation_configuration
    #   <p>Specifies Lake Formation configuration settings for the crawler.</p>
    #   @return [Types::LakeFormationConfiguration]
    # @!attribute configuration
    #   <p>Crawler configuration information. This versioned JSON
    #         string allows users to specify aspects of a crawler's behavior.
    #         For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html">Setting crawler configuration options</a>.</p>
    #   @return [String]
    # @!attribute crawler_security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used by this
    #         crawler.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to use with this crawler request. You may use tags to limit access to the
    #               crawler. For more information about tags in Glue, see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon Web Services Tags in Glue</a> in the developer
    #               guide.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateCrawlerResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a custom CSV classifier for <code>CreateClassifier</code> to create.</p>
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>A custom symbol to denote what separates each column entry in the row.</p>
    #   @return [String]
    # @!attribute quote_symbol
    #   <p>A custom symbol to denote what combines content into a single column value. Must be different from the column delimiter.</p>
    #   @return [String]
    # @!attribute contains_header
    #   <p>Indicates whether the CSV file contains a header.</p>
    #   @return [String]
    # @!attribute header
    #   <p>A list of strings representing column names.</p>
    #   @return [Array<String>]
    # @!attribute disable_value_trimming
    #   <p>Specifies not to trim values before identifying the type of column values. The default value is true.</p>
    #   @return [Boolean]
    # @!attribute allow_single_column
    #   <p>Enables the processing of files that contain only one column.</p>
    #   @return [Boolean]
    # @!attribute custom_datatype_configured
    #   <p>Enables the configuration of custom datatypes.</p>
    #   @return [Boolean]
    # @!attribute custom_datatypes
    #   <p>Creates a list of supported custom datatypes.</p>
    #   @return [Array<String>]
    # @!attribute serde
    #   <p>Sets the SerDe for processing CSV in the classifier, which will be applied in the Data Catalog. Valid values are <code>OpenCSVSerDe</code>, <code>LazySimpleSerDe</code>, and <code>None</code>. You can specify the <code>None</code> value when you want the crawler to do the detection.</p>
    #   @return [String]
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
      :serde,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the custom pattern that allows it to be retrieved or deleted later. This name must be unique per Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute regex_string
    #   <p>A regular expression string that is used for detecting sensitive data in a custom pattern.</p>
    #   @return [String]
    # @!attribute context_words
    #   <p>A list of context words. If none of these context words are found within the vicinity of the regular expression the data will not be detected as sensitive data.</p>
    #            <p>If no context words are passed only a regular expression is checked.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of tags applied to the custom entity type.</p>
    #   @return [Hash<String, String>]
    class CreateCustomEntityTypeRequest < Struct.new(
      :name,
      :regex_string,
      :context_words,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the custom pattern you created.</p>
    #   @return [String]
    class CreateCustomEntityTypeResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to create a data quality ruleset.</p>
    # @!attribute name
    #   <p>A unique name for the data quality ruleset.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the data quality ruleset.</p>
    #   @return [String]
    # @!attribute ruleset
    #   <p>A Data Quality Definition Language (DQDL) ruleset. For more information, see the Glue developer guide.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags applied to the data quality ruleset.</p>
    #   @return [Hash<String, String>]
    # @!attribute target_table
    #   <p>A target table associated with the data quality ruleset.</p>
    #   @return [Types::DataQualityTargetTable]
    # @!attribute data_quality_security_configuration
    #   <p>The name of the security configuration created with the data quality encryption option.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Used for idempotency and is recommended to be set to a random ID (such as a UUID) to avoid creating or starting multiple instances of the same resource.</p>
    #   @return [String]
    class CreateDataQualityRulesetRequest < Struct.new(
      :name,
      :description,
      :ruleset,
      :tags,
      :target_table,
      :data_quality_security_configuration,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A unique name for the data quality ruleset.</p>
    #   @return [String]
    class CreateDataQualityRulesetResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which to create the database. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_input
    #   <p>The metadata for the database.</p>
    #   @return [Types::DatabaseInput]
    # @!attribute tags
    #   <p>The tags you assign to the database.</p>
    #   @return [Hash<String, String>]
    class CreateDatabaseRequest < Struct.new(
      :catalog_id,
      :database_input,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateDatabaseResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name to be assigned to the new <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The IAM role for the <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>Security group IDs for the security groups to be used by the new
    #         <code>DevEndpoint</code>.</p>
    #   @return [Array<String>]
    # @!attribute subnet_id
    #   <p>The subnet ID for the new <code>DevEndpoint</code> to use.</p>
    #   @return [String]
    # @!attribute public_key
    #   <p>The public key to be used by this <code>DevEndpoint</code> for authentication. This
    #         attribute is provided for backward compatibility because the recommended attribute to use is
    #         public keys.</p>
    #   @return [String]
    # @!attribute public_keys
    #   <p>A list of public keys to be used by the development endpoints for authentication. The use
    #         of this attribute is preferred over a single public key because the public keys allow you to
    #         have a different private key per client.</p>
    #            <note>
    #               <p>If you previously created an endpoint with a public key, you must remove that key to be able
    #           to set a list of public keys. Call the <code>UpdateDevEndpoint</code> API with the public
    #           key content in the <code>deletePublicKeys</code> attribute, and the list of new keys in the
    #             <code>addPublicKeys</code> attribute.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute number_of_nodes
    #   <p>The number of Glue Data Processing Units (DPUs) to allocate to this
    #           <code>DevEndpoint</code>.</p>
    #   @return [Integer]
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated to the development endpoint. Accepts a value of Standard, G.1X, or G.2X.</p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
    #               </li>
    #            </ul>
    #            <p>Known issue: when a development endpoint is created with the <code>G.2X</code>
    #               <code>WorkerType</code> configuration, the Spark drivers for the development endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk. </p>
    #   @return [String]
    # @!attribute glue_version
    #   <p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints. </p>
    #            <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue version</a> in the developer guide.</p>
    #            <p>Development endpoints that are created without specifying a Glue version default to Glue 0.9.</p>
    #            <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated to the development endpoint.</p>
    #            <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>
    #   @return [Integer]
    # @!attribute extra_python_libs_s3_path
    #   <p>The paths to one or more Python libraries in an Amazon S3 bucket that should be loaded in
    #         your <code>DevEndpoint</code>. Multiple values must be complete paths separated by a
    #         comma.</p>
    #            <note>
    #               <p>You can only use pure Python libraries with a <code>DevEndpoint</code>. Libraries that rely on
    #           C extensions, such as the <a href="http://pandas.pydata.org/">pandas</a> Python data
    #           analysis library, are not yet supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute extra_jars_s3_path
    #   <p>The path to one or more Java <code>.jar</code> files in an S3 bucket that should be loaded
    #         in your <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this
    #           <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to use with this DevEndpoint. You may use tags to limit access to the DevEndpoint. For more information about tags in Glue, see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon Web Services Tags in Glue</a> in the developer guide.</p>
    #   @return [Hash<String, String>]
    # @!attribute arguments
    #   <p>A map of arguments used to configure the <code>DevEndpoint</code>.</p>
    #   @return [Hash<String, String>]
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
      :arguments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name assigned to the new <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the new <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The security groups assigned to the new <code>DevEndpoint</code>.</p>
    #   @return [Array<String>]
    # @!attribute subnet_id
    #   <p>The subnet ID assigned to the new <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role assigned to the new
    #         <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute yarn_endpoint_address
    #   <p>The address of the YARN endpoint used by this <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute zeppelin_remote_spark_interpreter_port
    #   <p>The Apache Zeppelin port for the remote Apache Spark interpreter.</p>
    #   @return [Integer]
    # @!attribute number_of_nodes
    #   <p>The number of Glue Data Processing Units (DPUs) allocated to this DevEndpoint.</p>
    #   @return [Integer]
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated to the development endpoint. May be a value of Standard, G.1X, or G.2X.</p>
    #   @return [String]
    # @!attribute glue_version
    #   <p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints. </p>
    #            <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue version</a> in the developer guide.</p>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated to the development endpoint.</p>
    #   @return [Integer]
    # @!attribute availability_zone
    #   <p>The Amazon Web Services Availability Zone where this <code>DevEndpoint</code> is located.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the virtual private cloud (VPC) used by this <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute extra_python_libs_s3_path
    #   <p>The paths to one or more Python libraries in an S3 bucket that will be loaded in your
    #           <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute extra_jars_s3_path
    #   <p>Path to one or more Java <code>.jar</code> files in an S3 bucket that will be loaded in
    #         your <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason for a current failure in this <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure being used with this
    #           <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The point in time at which this <code>DevEndpoint</code> was created.</p>
    #   @return [Time]
    # @!attribute arguments
    #   <p>The map of arguments used to configure this <code>DevEndpoint</code>.</p>
    #            <p>Valid arguments are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"--enable-glue-datacatalog": ""</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>
    #   @return [Hash<String, String>]
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
      :arguments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:zeppelin_remote_spark_interpreter_port] = 0 unless options.key?(:zeppelin_remote_spark_interpreter_port)
        options[:number_of_nodes] = 0 unless options.key?(:number_of_nodes)
        super
      end
    end

    # <p>Request to create a new Glue Identity Center configuration.</p>
    # @!attribute instance_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity Center instance to be associated with the Glue configuration.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>A list of Identity Center scopes that define the permissions and access levels for the Glue configuration.</p>
    #   @return [Array<String>]
    class CreateGlueIdentityCenterConfigurationRequest < Struct.new(
      :instance_arn,
      :scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response from creating a new Glue Identity Center configuration.</p>
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity Center application that was created for the Glue configuration.</p>
    #   @return [String]
    class CreateGlueIdentityCenterConfigurationResponse < Struct.new(
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a <code>grok</code> classifier for <code>CreateClassifier</code>
    #       to create.</p>
    # @!attribute classification
    #   <p>An identifier of the data format that the classifier matches,
    #         such as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the new classifier.</p>
    #   @return [String]
    # @!attribute grok_pattern
    #   <p>The grok pattern used by this classifier.</p>
    #   @return [String]
    # @!attribute custom_patterns
    #   <p>Optional custom grok patterns used by this classifier.</p>
    #   @return [String]
    class CreateGrokClassifierRequest < Struct.new(
      :classification,
      :name,
      :grok_pattern,
      :custom_patterns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration parameters required to create a new Iceberg table in the Glue Data Catalog, 
    #       including table properties and metadata specifications.</p>
    # @!attribute location
    #   <p>The S3 location where the Iceberg table data will be stored.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema definition that specifies the structure, field types, and metadata for the Iceberg table.</p>
    #   @return [Types::IcebergSchema]
    # @!attribute partition_spec
    #   <p>The partitioning specification that defines how the Iceberg table data will be organized and partitioned for optimal query performance.</p>
    #   @return [Types::IcebergPartitionSpec]
    # @!attribute write_order
    #   <p>The sort order specification that defines how data should be ordered within each partition to optimize query performance.</p>
    #   @return [Types::IcebergSortOrder]
    # @!attribute properties
    #   <p>Key-value pairs of additional table properties and configuration settings for the Iceberg table.</p>
    #   @return [Hash<String, String>]
    class CreateIcebergTableInput < Struct.new(
      :location,
      :schema,
      :partition_spec,
      :write_order,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_name
    #   <p>A unique name for an integration in Glue.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The ARN of the source resource for the integration.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The ARN of the target resource for the integration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the integration.</p>
    #   @return [String]
    # @!attribute data_filter
    #   <p>Selects source tables for the integration using Maxwell filter syntax.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ARN of a KMS key used for encrypting the channel.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>An optional set of non-secret key–value pairs that contains additional contextual information for encryption. This can only be provided if <code>KMSKeyId</code> is provided.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>Metadata assigned to the resource consisting of a list of key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute integration_config
    #   <p>The configuration settings.</p>
    #   @return [Types::IntegrationConfig]
    class CreateIntegrationRequest < Struct.new(
      :integration_name,
      :source_arn,
      :target_arn,
      :description,
      :data_filter,
      :kms_key_id,
      :additional_encryption_context,
      :tags,
      :integration_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The connection ARN of the source, or the database ARN of the target.</p>
    #   @return [String]
    # @!attribute source_processing_properties
    #   <p>The resource properties associated with the integration source.</p>
    #   @return [Types::SourceProcessingProperties]
    # @!attribute target_processing_properties
    #   <p>The resource properties associated with the integration target.</p>
    #   @return [Types::TargetProcessingProperties]
    class CreateIntegrationResourcePropertyRequest < Struct.new(
      :resource_arn,
      :source_processing_properties,
      :target_processing_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The connection ARN of the source, or the database ARN of the target.</p>
    #   @return [String]
    # @!attribute source_processing_properties
    #   <p>The resource properties associated with the integration source.</p>
    #   @return [Types::SourceProcessingProperties]
    # @!attribute target_processing_properties
    #   <p>The resource properties associated with the integration target.</p>
    #   @return [Types::TargetProcessingProperties]
    class CreateIntegrationResourcePropertyResponse < Struct.new(
      :resource_arn,
      :source_processing_properties,
      :target_processing_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_arn
    #   <p>The ARN of the source resource for the integration.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The ARN of the target resource for the integration.</p>
    #   @return [String]
    # @!attribute integration_name
    #   <p>A unique name for an integration in Glue.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the integration.</p>
    #   @return [String]
    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) for the created integration.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ARN of a KMS key used for encrypting the channel.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>An optional set of non-secret key–value pairs that contains additional contextual information for encryption.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>Metadata assigned to the resource consisting of a list of key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute status
    #   <p>The status of the integration being created.</p>
    #            <p>The possible statuses are:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATING: The integration is being created.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE: The integration creation succeeds.</p>
    #               </li>
    #               <li>
    #                  <p>MODIFYING: The integration is being modified.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED: The integration creation fails. </p>
    #               </li>
    #               <li>
    #                  <p>DELETING: The integration is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>SYNCING: The integration is synchronizing.</p>
    #               </li>
    #               <li>
    #                  <p>NEEDS_ATTENTION: The integration needs attention, such as synchronization.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the integration was created, in UTC.</p>
    #   @return [Time]
    # @!attribute errors
    #   <p>A list of errors associated with the integration creation.</p>
    #   @return [Array<Types::IntegrationError>]
    # @!attribute data_filter
    #   <p>Selects source tables for the integration using Maxwell filter syntax.</p>
    #   @return [String]
    # @!attribute integration_config
    #   <p>The configuration settings.</p>
    #   @return [Types::IntegrationConfig]
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
      :integration_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the target table for which to create integration table properties. Currently, this API only supports creating 
    #         integration table properties for target tables, and the provided ARN should be the ARN of the target table in the Glue Data Catalog. Support for 
    #         creating integration table properties for source connections (using the connection ARN) is not yet implemented and will be added in a future release.
    #       </p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table to be replicated.</p>
    #   @return [String]
    # @!attribute source_table_config
    #   <p>A structure for the source table configuration. See the <code>SourceTableConfig</code> structure to see list of supported source properties.</p>
    #   @return [Types::SourceTableConfig]
    # @!attribute target_table_config
    #   <p>A structure for the target table configuration.</p>
    #   @return [Types::TargetTableConfig]
    class CreateIntegrationTablePropertiesRequest < Struct.new(
      :resource_arn,
      :table_name,
      :source_table_config,
      :target_table_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateIntegrationTablePropertiesResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name you assign to this job definition. It must be unique in your account.</p>
    #   @return [String]
    # @!attribute job_mode
    #   <p>A mode that describes how a job was created. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SCRIPT</code> - The job was created using the Glue Studio script editor.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VISUAL</code> - The job was created using the Glue Studio visual editor.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTEBOOK</code> - The job was created using an interactive sessions notebook.</p>
    #               </li>
    #            </ul>
    #            <p>When the <code>JobMode</code> field is missing or null, <code>SCRIPT</code> is assigned as the default value.</p>
    #   @return [String]
    # @!attribute job_run_queuing_enabled
    #   <p>Specifies whether job run queuing is enabled for the job runs for this job.</p>
    #            <p>A value of true means job run queuing is enabled for the job runs. If false or not populated, the job runs will not be considered for queueing.</p>
    #            <p>If this field does not match the value set in the job run, then the value from the job run field will be used.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>Description of the job being defined.</p>
    #   @return [String]
    # @!attribute log_uri
    #   <p>This field is reserved for future use.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role associated with this job.</p>
    #   @return [String]
    # @!attribute execution_property
    #   <p>An <code>ExecutionProperty</code> specifying the maximum number of concurrent runs allowed
    #         for this job.</p>
    #   @return [Types::ExecutionProperty]
    # @!attribute command
    #   <p>The <code>JobCommand</code> that runs this job.</p>
    #   @return [Types::JobCommand]
    # @!attribute default_arguments
    #   <p>The default arguments for every run of this job, specified as name-value pairs.</p>
    #            <p>You can specify arguments here that your own job-execution script
    #         consumes, as well as arguments that Glue itself consumes.</p>
    #            <p>Job arguments may be logged. Do not pass plaintext secrets as arguments. Retrieve secrets
    #         from a Glue Connection, Secrets Manager or other secret management
    #         mechanism if you intend to keep them within the Job. </p>
    #            <p>For information about how to specify and consume your own Job arguments, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling Glue APIs in Python</a> topic in the developer guide.</p>
    #            <p>For information about the arguments you can provide to this field when configuring Spark jobs,
    #        see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by Glue</a> topic in the developer guide.</p>
    #            <p>For information about the arguments you can provide to this field when configuring Ray
    #         jobs, see <a href="https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html">Using
    #         job parameters in Ray jobs</a> in the developer guide.</p>
    #   @return [Hash<String, String>]
    # @!attribute non_overridable_arguments
    #   <p>Arguments for this job that are not overridden when providing job arguments
    #         in a job run, specified as name-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute connections
    #   <p>The connections used for this job.</p>
    #   @return [Types::ConnectionsList]
    # @!attribute max_retries
    #   <p>The maximum number of times to retry this job if it fails.</p>
    #   @return [Integer]
    # @!attribute allocated_capacity
    #   <p>This parameter is deprecated. Use <code>MaxCapacity</code> instead.</p>
    #            <p>The number of Glue data processing units (DPUs) to allocate to this Job. You can
    #         allocate a minimum of 2 DPUs; the default is 10. A DPU is a relative measure of processing
    #         power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information,
    #         see the <a href="https://aws.amazon.com/glue/pricing/">Glue pricing
    #         page</a>.</p>
    #   @deprecated
    #     This property is deprecated, use MaxCapacity instead.
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The job timeout in minutes.  This is the maximum time that a job run
    #         can consume resources before it is terminated and enters <code>TIMEOUT</code>
    #         status.</p>
    #            <p>Jobs must have timeout values less than 7 days or 10080 minutes. Otherwise, the jobs will throw an exception.</p>
    #            <p>When the value is left blank, the timeout is defaulted to 2880 minutes.</p>
    #            <p>Any existing Glue jobs that had a timeout value greater than 7 days will be defaulted to 7 days. For instance if you have specified a timeout of 20 days for a batch job, it will be stopped on the 7th day.</p>
    #            <p>For streaming jobs, if you have set up a maintenance window, it will be restarted during the maintenance window after 7 days.</p>
    #   @return [Integer]
    # @!attribute max_capacity
    #   <p>For Glue version 1.0 or earlier jobs, using the standard worker type, the number of
    #         Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is
    #         a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB
    #         of memory. For more information, see the <a href="https://aws.amazon.com/glue/pricing/">
    #         Glue pricing page</a>.</p>
    #            <p>For Glue version 2.0+ jobs, you cannot specify a <code>Maximum capacity</code>.
    #         Instead, you should specify a <code>Worker type</code> and the <code>Number of workers</code>.</p>
    #            <p>Do not set <code>MaxCapacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>
    #            <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
    #         running a Python shell job, an Apache Spark ETL job, or an Apache Spark streaming ETL
    #         job:</p>
    #            <ul>
    #               <li>
    #                  <p>When you specify a Python shell job (<code>JobCommand.Name</code>="pythonshell"), you can
    #             allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
    #               </li>
    #               <li>
    #                  <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>="glueetl") or Apache 
    #           Spark streaming ETL job (<code>JobCommand.Name</code>="gluestreaming"), you can allocate from 2 to 100 DPUs. 
    #           The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
    #               </li>
    #            </ul>
    #   @return [Float]
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this
    #         job.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to use with this job. You may use tags to limit access to the job. For more information about tags in Glue, see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon Web Services Tags in Glue</a> in the developer guide.</p>
    #   @return [Hash<String, String>]
    # @!attribute notification_property
    #   <p>Specifies configuration properties of a job notification.</p>
    #   @return [Types::NotificationProperty]
    # @!attribute glue_version
    #   <p>In Spark jobs, <code>GlueVersion</code> determines the versions of Apache Spark and Python
    #         that Glue available in a job. The Python version indicates the version
    #         supported for jobs of type Spark. </p>
    #            <p>Ray jobs should set <code>GlueVersion</code> to <code>4.0</code> or greater. However,
    #       the versions of Ray, Python and additional libraries available in your Ray job are determined
    #       by the <code>Runtime</code> parameter of the Job command.</p>
    #            <p>For more information about the available Glue versions and corresponding
    #         Spark and Python versions, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue version</a> in the developer
    #         guide.</p>
    #            <p>Jobs that are created without specifying a Glue version default to Glue 0.9.</p>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>
    #   @return [Integer]
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when a job runs. Accepts a value of
    #         G.1X, G.2X, G.4X, G.8X or G.025X for Spark jobs. Accepts the value Z.2X for Ray jobs.</p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPUs, 16 GB of memory) with 94GB disk, and provides 1 executor per worker. We recommend this worker type for workloads such as data transforms, joins, and queries, to offers a scalable and cost effective way to run most jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPUs, 32 GB of memory) with 138GB disk, and provides 1 executor per worker. We recommend this worker type for workloads such as data transforms, joins, and queries, to offers a scalable and cost effective way to run most jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.4X</code> worker type, each worker maps to 4 DPU (16 vCPUs, 64 GB of memory) with 256GB disk, and provides 1 executor per worker. We recommend this worker type for jobs whose workloads contain your most demanding transforms, aggregations, joins, and queries. This worker type is available only for Glue version 3.0 or later Spark ETL jobs in the following Amazon Web Services Regions: US East (Ohio), US East (N. Virginia), US West (N. California), US West (Oregon), Asia Pacific (Mumbai), Asia Pacific (Seoul), Asia Pacific (Singapore), Asia Pacific (Sydney), Asia Pacific (Tokyo), Canada (Central), Europe (Frankfurt), Europe (Ireland), Europe (London), Europe (Spain), Europe (Stockholm), and South America (São Paulo).</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.8X</code> worker type, each worker maps to 8 DPU (32 vCPUs, 128 GB of memory) with 512GB disk, and provides 1 executor per worker. We recommend this worker type for jobs whose workloads contain your most demanding transforms, aggregations, joins, and queries. This worker type is available only for Glue version 3.0 or later Spark ETL jobs, in the same Amazon Web Services Regions as supported for the <code>G.4X</code> worker type.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.025X</code> worker type, each worker maps to 0.25 DPU (2 vCPUs, 4 GB of memory) with 84GB disk, and provides 1 executor per worker. We recommend this worker type for low volume streaming jobs. This worker type is only available for Glue version 3.0 or later streaming jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>Z.2X</code> worker type, each worker maps to 2 M-DPU (8vCPUs, 64 GB of memory) with 128 GB disk, and provides up to 8 Ray workers based on the autoscaler.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute code_gen_configuration_nodes
    #   <p>The representation of a directed acyclic graph on which both the Glue Studio visual component and Glue Studio code generation is based.</p>
    #   @return [Hash<String, Types::CodeGenConfigurationNode>]
    # @!attribute execution_class
    #   <p>Indicates whether the job is run with a standard or flexible execution class. The standard execution-class is ideal for time-sensitive workloads that require fast job startup and dedicated resources.</p>
    #            <p>The flexible execution class is appropriate for time-insensitive jobs whose start and completion times may vary. </p>
    #            <p>Only jobs with Glue version 3.0 and above and command type <code>glueetl</code> will be allowed to set <code>ExecutionClass</code> to <code>FLEX</code>. The flexible execution class is available for Spark jobs.</p>
    #   @return [String]
    # @!attribute source_control_details
    #   <p>The details for a source control configuration for a job, allowing synchronization of job artifacts to or from a remote repository.</p>
    #   @return [Types::SourceControlDetails]
    # @!attribute maintenance_window
    #   <p>This field specifies a day of the week and hour for a maintenance window for streaming jobs. Glue periodically performs maintenance activities. During these maintenance windows, Glue will need to restart your streaming jobs.</p>
    #            <p>Glue will restart the job within 3 hours of the specified maintenance window. For instance, if you set up the maintenance window for Monday at 10:00AM GMT, your jobs will be restarted between 10:00AM GMT to 1:00PM GMT.</p>
    #   @return [String]
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
      :maintenance_window,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique name that was provided for this job definition.</p>
    #   @return [String]
    class CreateJobResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a JSON classifier for <code>CreateClassifier</code> to create.</p>
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #   @return [String]
    # @!attribute json_path
    #   <p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify.
    #         Glue supports a subset of JsonPath, as described in <a href="https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json">Writing JsonPath Custom Classifiers</a>.</p>
    #   @return [String]
    class CreateJsonClassifierRequest < Struct.new(
      :name,
      :json_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique name that you give the transform when you create it.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the machine learning transform that is being defined. The default is an
    #         empty string.</p>
    #   @return [String]
    # @!attribute input_record_tables
    #   <p>A list of Glue table definitions used by the transform.</p>
    #   @return [Array<Types::GlueTable>]
    # @!attribute parameters
    #   <p>The algorithmic parameters that are specific to the transform type used. Conditionally
    #         dependent on the transform type.</p>
    #   @return [Types::TransformParameters]
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role with the required permissions. The required permissions include both Glue service role permissions to Glue resources, and Amazon S3 permissions required by the transform. </p>
    #            <ul>
    #               <li>
    #                  <p>This role needs Glue service role permissions to allow access to resources in Glue. See <a href="https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html">Attach a Policy to IAM Users That Access Glue</a>.</p>
    #               </li>
    #               <li>
    #                  <p>This role needs permission to your Amazon Simple Storage Service (Amazon S3) sources, targets, temporary directory, scripts, and any libraries used by the task run for this transform.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute glue_version
    #   <p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions">Glue Versions</a> in the developer guide.</p>
    #   @return [String]
    # @!attribute max_capacity
    #   <p>The number of Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of
    #         processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
    #         information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue pricing
    #           page</a>. </p>
    #            <p>
    #               <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p>
    #               </li>
    #            </ul>
    #            <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>
    #            <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>
    #   @return [Float]
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.</p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when this task runs.</p>
    #            <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The timeout of the task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>
    #   @return [Integer]
    # @!attribute max_retries
    #   <p>The maximum number of times to retry a task for this transform after a task run fails.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The tags to use with this machine learning transform. You may use tags to limit access to the machine learning transform. For more information about tags in Glue, see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon Web Services Tags in Glue</a> in the developer guide.</p>
    #   @return [Hash<String, String>]
    # @!attribute transform_encryption
    #   <p>The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.</p>
    #   @return [Types::TransformEncryption]
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
      :transform_encryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>A unique identifier that is generated for the transform.</p>
    #   @return [String]
    class CreateMLTransformResponse < Struct.new(
      :transform_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The catalog ID where the table resides.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>Specifies the name of a database in which you want to create a partition index.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>Specifies the name of a table in which you want to create a partition index.</p>
    #   @return [String]
    # @!attribute partition_index
    #   <p>Specifies a <code>PartitionIndex</code> structure to create a partition index in an existing table.</p>
    #   @return [Types::PartitionIndex]
    class CreatePartitionIndexRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreatePartitionIndexResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The Amazon Web Services account ID of the catalog in which the partition is to be created.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the metadata database in which the partition is
    #         to be created.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the metadata table in which the partition is to be created.</p>
    #   @return [String]
    # @!attribute partition_input
    #   <p>A <code>PartitionInput</code> structure defining the partition
    #         to be created.</p>
    #   @return [Types::PartitionInput]
    class CreatePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreatePartitionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>Name of the registry to be created of max length of 255, and may only contain letters, numbers, hyphen, underscore, dollar sign, or hash mark.  No whitespace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the registry. If description is not provided, there will not be any default value for this.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Amazon Web Services tags that contain a key value pair and may be searched by console, command line, or API.</p>
    #   @return [Hash<String, String>]
    class CreateRegistryInput < Struct.new(
      :registry_name,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the newly created registry.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the registry.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the registry.</p>
    #   @return [Hash<String, String>]
    class CreateRegistryResponse < Struct.new(
      :registry_arn,
      :registry_name,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p> This is a wrapper shape to contain the registry identity fields. If this is not provided, the default registry will be used. The ARN format for the same will be: <code>arn:aws:glue:us-east-2:<customer id>:registry/default-registry:random-5-letter-id</code>.</p>
    #   @return [Types::RegistryId]
    # @!attribute schema_name
    #   <p>Name of the schema to be created of max length of 255, and may only contain letters, numbers, hyphen, underscore, dollar sign, or hash mark. No whitespace.</p>
    #   @return [String]
    # @!attribute data_format
    #   <p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>
    #   @return [String]
    # @!attribute compatibility
    #   <p>The compatibility mode of the schema. The possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>NONE</i>: No compatibility mode applies. You can use this choice in development scenarios or if you do not know the compatibility mode that you want to apply to schemas. Any new version added will be accepted without undergoing a compatibility check.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>DISABLED</i>: This compatibility choice prevents versioning for a particular schema. You can use this choice to prevent future versioning of a schema.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>BACKWARD</i>: This compatibility choice is recommended as it allows data receivers to read both the current and one previous schema version. This means that for instance, a new schema version cannot drop data fields or change the type of these fields, so they can't be read by readers using the previous version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>BACKWARD_ALL</i>: This compatibility choice allows data receivers to read both the current and all previous schema versions. You can use this choice when you need to delete fields or add optional fields, and check compatibility against all previous schema versions. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>FORWARD</i>: This compatibility choice allows data receivers to read both the current and one next schema version, but not necessarily later versions. You can use this choice when you need to add fields or delete optional fields, but only check compatibility against the last schema version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>FORWARD_ALL</i>: This compatibility choice allows data receivers to read written by producers of any new registered schema. You can use this choice when you need to add fields or delete optional fields, and check compatibility against all previous schema versions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>FULL</i>: This compatibility choice allows data receivers to read data written by producers using the previous or next version of the schema, but not necessarily earlier or later versions. You can use this choice when you need to add or remove optional fields, but only check compatibility against the last schema version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>FULL_ALL</i>: This compatibility choice allows data receivers to read data written by producers using all previous schema versions. You can use this choice when you need to add or remove optional fields, and check compatibility against all previous schema versions.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the schema. If description is not provided, there will not be any automatic default value for this.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Amazon Web Services tags that contain a key value pair and may be searched by console, command line, or API. If specified, follows the Amazon Web Services tags-on-create pattern.</p>
    #   @return [Hash<String, String>]
    # @!attribute schema_definition
    #   <p>The schema definition using the <code>DataFormat</code> setting for <code>SchemaName</code>.</p>
    #   @return [String]
    class CreateSchemaInput < Struct.new(
      :registry_id,
      :schema_name,
      :data_format,
      :compatibility,
      :description,
      :tags,
      :schema_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the schema if specified when created.</p>
    #   @return [String]
    # @!attribute data_format
    #   <p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>
    #   @return [String]
    # @!attribute compatibility
    #   <p>The schema compatibility mode.</p>
    #   @return [String]
    # @!attribute schema_checkpoint
    #   <p>The version number of the checkpoint (the last time the compatibility mode was changed).</p>
    #   @return [Integer]
    # @!attribute latest_schema_version
    #   <p>The latest version of the schema associated with the returned schema definition.</p>
    #   @return [Integer]
    # @!attribute next_schema_version
    #   <p>The next version of the schema associated with the returned schema definition.</p>
    #   @return [Integer]
    # @!attribute schema_status
    #   <p>The status of the schema. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the schema.</p>
    #   @return [Hash<String, String>]
    # @!attribute schema_version_id
    #   <p>The unique identifier of the first schema version.</p>
    #   @return [String]
    # @!attribute schema_version_status
    #   <p>The status of the first schema version created.</p>
    #   @return [String]
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
      :schema_version_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dag_nodes
    #   <p>A list of the nodes in the DAG.</p>
    #   @return [Array<Types::CodeGenNode>]
    # @!attribute dag_edges
    #   <p>A list of the edges in the DAG.</p>
    #   @return [Array<Types::CodeGenEdge>]
    # @!attribute language
    #   <p>The programming language of the resulting code from the DAG.</p>
    #   @return [String]
    class CreateScriptRequest < Struct.new(
      :dag_nodes,
      :dag_edges,
      :language,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute python_script
    #   <p>The Python script generated from the DAG.</p>
    #   @return [String]
    # @!attribute scala_code
    #   <p>The Scala code generated from the DAG.</p>
    #   @return [String]
    class CreateScriptResponse < Struct.new(
      :python_script,
      :scala_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the new security configuration.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration for the new security configuration.</p>
    #   @return [Types::EncryptionConfiguration]
    class CreateSecurityConfigurationRequest < Struct.new(
      :name,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name assigned to the new security configuration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the new security configuration was created.</p>
    #   @return [Time]
    class CreateSecurityConfigurationResponse < Struct.new(
      :name,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to create a new session.</p>
    # @!attribute id
    #   <p>The ID of the session request. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the session. </p>
    #   @return [String]
    # @!attribute role
    #   <p>The IAM Role ARN </p>
    #   @return [String]
    # @!attribute command
    #   <p>The <code>SessionCommand</code> that runs the job. </p>
    #   @return [Types::SessionCommand]
    # @!attribute timeout
    #   <p>
    #           The number of minutes before session times out. Default for Spark ETL
    #           jobs is 48 hours (2880 minutes).
    #           Consult the documentation for other job types.
    #       </p>
    #   @return [Integer]
    # @!attribute idle_timeout
    #   <p>
    #           The number of minutes when idle before session times out. Default for
    #           Spark ETL jobs is value of Timeout. Consult the documentation
    #           for other job types.
    #       </p>
    #   @return [Integer]
    # @!attribute default_arguments
    #   <p>A map array of key-value pairs. Max is 75 pairs. </p>
    #   @return [Hash<String, String>]
    # @!attribute connections
    #   <p>The number of connections to use for the session. </p>
    #   @return [Types::ConnectionsList]
    # @!attribute max_capacity
    #   <p>The number of Glue data processing units (DPUs) that can be allocated when the job runs. 
    #         A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB memory. </p>
    #   @return [Float]
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>WorkerType</code> to use for the session. </p>
    #   @return [Integer]
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when a job runs. Accepts a value of
    #         G.1X, G.2X, G.4X, or G.8X for Spark jobs. Accepts the value Z.2X for Ray notebooks.</p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPUs, 16 GB of memory) with 94GB disk, and provides 1 executor per worker. We recommend this worker type for workloads such as data transforms, joins, and queries, to offers a scalable and cost effective way to run most jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPUs, 32 GB of memory) with 138GB disk, and provides 1 executor per worker. We recommend this worker type for workloads such as data transforms, joins, and queries, to offers a scalable and cost effective way to run most jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.4X</code> worker type, each worker maps to 4 DPU (16 vCPUs, 64 GB of memory) with 256GB disk, and provides 1 executor per worker. We recommend this worker type for jobs whose workloads contain your most demanding transforms, aggregations, joins, and queries. This worker type is available only for Glue version 3.0 or later Spark ETL jobs in the following Amazon Web Services Regions: US East (Ohio), US East (N. Virginia), US West (Oregon), Asia Pacific (Singapore), Asia Pacific (Sydney), Asia Pacific (Tokyo), Canada (Central), Europe (Frankfurt), Europe (Ireland), and Europe (Stockholm).</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.8X</code> worker type, each worker maps to 8 DPU (32 vCPUs, 128 GB of memory) with 512GB disk, and provides 1 executor per worker. We recommend this worker type for jobs whose workloads contain your most demanding transforms, aggregations, joins, and queries. This worker type is available only for Glue version 3.0 or later Spark ETL jobs, in the same Amazon Web Services Regions as supported for the <code>G.4X</code> worker type.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>Z.2X</code> worker type, each worker maps to 2 M-DPU (8vCPUs, 64 GB of memory) with 128 GB disk, and provides up to 8 Ray workers based on the autoscaler.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute security_configuration
    #   <p>The name of the SecurityConfiguration structure to be used with the session </p>
    #   @return [String]
    # @!attribute glue_version
    #   <p>The Glue version determines the versions of Apache Spark and Python that Glue supports. 
    #         The GlueVersion must be greater than 2.0. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The map of key value pairs (tags) belonging to the session.</p>
    #   @return [Hash<String, String>]
    # @!attribute request_origin
    #   <p>The origin of the request. </p>
    #   @return [String]
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
      :request_origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session
    #   <p>Returns the session object in the response.</p>
    #   @return [Types::Session]
    class CreateSessionResponse < Struct.new(
      :session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The Catalog ID of the table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database in the catalog in which the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of table optimizer.</p>
    #   @return [String]
    # @!attribute table_optimizer_configuration
    #   <p>A <code>TableOptimizerConfiguration</code> object representing the configuration of a table optimizer.</p>
    #   @return [Types::TableOptimizerConfiguration]
    class CreateTableOptimizerRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :type,
      :table_optimizer_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateTableOptimizerResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which to create the <code>Table</code>.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The catalog database in which to create the new table. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique identifier for the table within the specified database that will be 
    #         created in the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute table_input
    #   <p>The <code>TableInput</code> object that defines the metadata table
    #         to create in the catalog.</p>
    #   @return [Types::TableInput]
    # @!attribute partition_indexes
    #   <p>A list of partition indexes, <code>PartitionIndex</code> structures, to create in the table.</p>
    #   @return [Array<Types::PartitionIndex>]
    # @!attribute transaction_id
    #   <p>The ID of the transaction.</p>
    #   @return [String]
    # @!attribute open_table_format_input
    #   <p>Specifies an <code>OpenTableFormatInput</code> structure when creating an open format table.</p>
    #   @return [Types::OpenTableFormatInput]
    class CreateTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :table_input,
      :partition_indexes,
      :transaction_id,
      :open_table_format_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateTableResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger.</p>
    #   @return [String]
    # @!attribute workflow_name
    #   <p>The name of the workflow associated with the trigger.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the new trigger.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>A <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
    #         something every day at 12:15 UTC, you would specify:
    #         <code>cron(15 12 * * ? *)</code>.</p>
    #            <p>This field is required when the trigger type is SCHEDULED.</p>
    #   @return [String]
    # @!attribute predicate
    #   <p>A predicate to specify when the new trigger should fire.</p>
    #            <p>This field is required when the trigger type is <code>CONDITIONAL</code>.</p>
    #   @return [Types::Predicate]
    # @!attribute actions
    #   <p>The actions initiated by this trigger when it fires.</p>
    #   @return [Array<Types::Action>]
    # @!attribute description
    #   <p>A description of the new trigger.</p>
    #   @return [String]
    # @!attribute start_on_creation
    #   <p>Set to <code>true</code> to start <code>SCHEDULED</code> and <code>CONDITIONAL</code>
    #         triggers when created. True is not supported for <code>ON_DEMAND</code> triggers.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to use with this trigger. You may use tags to limit access to the trigger.
    #         For more information about tags in Glue, see
    #         <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon Web Services Tags in Glue</a> in the developer guide. </p>
    #   @return [Hash<String, String>]
    # @!attribute event_batching_condition
    #   <p>Batch condition that must be met (specified number of events received or batch time window expired)
    #         before EventBridge event trigger fires.</p>
    #   @return [Types::EventBatchingCondition]
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
      :event_batching_condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger.</p>
    #   @return [String]
    class CreateTriggerResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the usage profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the usage profile.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>A <code>ProfileConfiguration</code> object specifying the job and session values for the profile.</p>
    #   @return [Types::ProfileConfiguration]
    # @!attribute tags
    #   <p>A list of tags applied to the usage profile.</p>
    #   @return [Hash<String, String>]
    class CreateUsageProfileRequest < Struct.new(
      :name,
      :description,
      :configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the usage profile that was created.</p>
    #   @return [String]
    class CreateUsageProfileResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which to create the function. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database in which to create the function.</p>
    #   @return [String]
    # @!attribute function_input
    #   <p>A <code>FunctionInput</code> object that defines the function
    #         to create in the Data Catalog.</p>
    #   @return [Types::UserDefinedFunctionInput]
    class CreateUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateUserDefinedFunctionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name to be assigned to the workflow. It should be unique within your account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the workflow.</p>
    #   @return [String]
    # @!attribute default_run_properties
    #   <p>A collection of properties to be used as part of each execution of the workflow.</p>
    #            <p>Run properties may be logged. Do not pass plaintext secrets as properties. Retrieve secrets from a Glue Connection, Amazon Web Services Secrets Manager or other secret management mechanism if you intend to use them within the workflow run.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The tags to be used with this workflow.</p>
    #   @return [Hash<String, String>]
    # @!attribute max_concurrent_runs
    #   <p>You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.</p>
    #   @return [Integer]
    class CreateWorkflowRequest < Struct.new(
      :name,
      :description,
      :default_run_properties,
      :tags,
      :max_concurrent_runs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow which was provided as part of the request.</p>
    #   @return [String]
    class CreateWorkflowResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an XML classifier for <code>CreateClassifier</code> to create.</p>
    # @!attribute classification
    #   <p>An identifier of the data format that the classifier matches.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #   @return [String]
    # @!attribute row_tag
    #   <p>The XML tag designating the element that contains each record in an XML document being
    #         parsed. This can't identify a self-closing element (closed by <code>/></code>). An empty
    #         row element that contains only attributes can be parsed as long as it ends with a closing tag
    #         (for example, <code><row item_a="A" item_b="B"></row></code> is okay, but
    #           <code><row item_a="A" item_b="B" /></code> is not).</p>
    #   @return [String]
    class CreateXMLClassifierRequest < Struct.new(
      :classification,
      :name,
      :row_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A classifier for custom <code>CSV</code> content.</p>
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that this classifier was registered.</p>
    #   @return [Time]
    # @!attribute last_updated
    #   <p>The time that this classifier was last updated.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>The version of this classifier.</p>
    #   @return [Integer]
    # @!attribute delimiter
    #   <p>A custom symbol to denote what separates each column entry in the row.</p>
    #   @return [String]
    # @!attribute quote_symbol
    #   <p>A custom symbol to denote what combines content into a single column value. It must be
    #         different from the column delimiter.</p>
    #   @return [String]
    # @!attribute contains_header
    #   <p>Indicates whether the CSV file contains a header.</p>
    #   @return [String]
    # @!attribute header
    #   <p>A list of strings representing column names.</p>
    #   @return [Array<String>]
    # @!attribute disable_value_trimming
    #   <p>Specifies not to trim values before identifying the type of column values. The default
    #         value is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute allow_single_column
    #   <p>Enables the processing of files that contain only one column.</p>
    #   @return [Boolean]
    # @!attribute custom_datatype_configured
    #   <p>Enables the custom datatype to be configured.</p>
    #   @return [Boolean]
    # @!attribute custom_datatypes
    #   <p>A list of custom datatypes including "BINARY", "BOOLEAN", "DATE", "DECIMAL", "DOUBLE", "FLOAT", "INT", "LONG", "SHORT", "STRING", "TIMESTAMP".</p>
    #   @return [Array<String>]
    # @!attribute serde
    #   <p>Sets the SerDe for processing CSV in the classifier, which will be applied in the Data Catalog. Valid values are <code>OpenCSVSerDe</code>, <code>LazySimpleSerDe</code>, and <code>None</code>. You can specify the <code>None</code> value when you want the crawler to do the detection.</p>
    #   @return [String]
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
      :serde,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # <p>Specifies a transform that uses custom code you provide to perform the data transformation. The output is a collection of DynamicFrames.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #   @return [Array<String>]
    # @!attribute code
    #   <p>The custom code that is used to perform the data transformation.</p>
    #   @return [String]
    # @!attribute class_name
    #   <p>The name defined for the custom code node class.</p>
    #   @return [String]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the custom code transform.</p>
    #   @return [Array<Types::GlueSchema>]
    class CustomCode < Struct.new(
      :name,
      :inputs,
      :code,
      :class_name,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a custom pattern for detecting sensitive data across the columns and rows of your structured data.</p>
    # @!attribute name
    #   <p>A name for the custom pattern that allows it to be retrieved or deleted later. This name must be unique per Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute regex_string
    #   <p>A regular expression string that is used for detecting sensitive data in a custom pattern.</p>
    #   @return [String]
    # @!attribute context_words
    #   <p>A list of context words. If none of these context words are found within the vicinity of the regular expression the data will not be detected as sensitive data.</p>
    #            <p>If no context words are passed only a regular expression is checked.</p>
    #   @return [Array<String>]
    class CustomEntityType < Struct.new(
      :name,
      :regex_string,
      :context_words,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies additional options for DynamoDB ELT catalog operations.</p>
    # @!attribute dynamodb_export
    #   <p>Specifies the DynamoDB export configuration for the ELT operation.</p>
    #   @return [String]
    # @!attribute dynamodb_unnest_ddb_json
    #   <p>Specifies whether to unnest DynamoDB JSON format. When set to <code>true</code>, nested JSON structures in DynamoDB items are flattened.</p>
    #   @return [Boolean]
    class DDBELTCatalogAdditionalOptions < Struct.new(
      :dynamodb_export,
      :dynamodb_unnest_ddb_json,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:dynamodb_unnest_ddb_json] = false unless options.key?(:dynamodb_unnest_ddb_json)
        super
      end
    end

    # <p>Specifies connection options for DynamoDB ELT (Extract, Load, Transform) operations. This structure contains configuration parameters for connecting 
    #       to and extracting data from DynamoDB tables using the ELT connector.</p>
    # @!attribute dynamodb_export
    #   <p>Specifies the export type for DynamoDB data extraction. This parameter determines how data is exported from the DynamoDB table during the ELT process.</p>
    #   @return [String]
    # @!attribute dynamodb_unnest_ddb_json
    #   <p>A boolean value that specifies whether to unnest DynamoDB JSON format during data extraction. When set to <code>true</code>, the connector will 
    #         flatten nested JSON structures from DynamoDB items. When set to <code>false</code>, the original DynamoDB JSON structure is preserved.</p>
    #   @return [Boolean]
    # @!attribute dynamodb_table_arn
    #   <p>The Amazon Resource Name (ARN) of the DynamoDB table to extract data from. This parameter specifies the source table for the ELT operation. 
    #         </p>
    #   @return [String]
    # @!attribute dynamodb_s3_bucket
    #   <p>The name of the Amazon S3 bucket used for intermediate storage during the DynamoDB ELT process. This bucket is used to temporarily store exported 
    #         DynamoDB data before it is processed by the ELT job.</p>
    #   @return [String]
    # @!attribute dynamodb_s3_prefix
    #   <p>The S3 object key prefix for files stored in the intermediate S3 bucket during the DynamoDB ELT process. This prefix helps organize and identify the 
    #         temporary files created during data extraction.</p>
    #   @return [String]
    # @!attribute dynamodb_s3_bucket_owner
    #   <p>The Amazon Web Services account ID of the owner of the S3 bucket specified in <code>DynamodbS3Bucket</code>. This parameter is required when the S3 bucket is owned by 
    #         a different Amazon Web Services account than the one running the ELT job, enabling cross-account access to the intermediate storage bucket.</p>
    #   @return [String]
    # @!attribute dynamodb_sts_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Security Token Service (STS) role to assume for accessing DynamoDB and S3 resources during 
    #         the ELT operation. 
    #         This role must have the necessary permissions to read from the DynamoDB table and write to the intermediate S3 bucket. </p>
    #   @return [String]
    class DDBELTConnectionOptions < Struct.new(
      :dynamodb_export,
      :dynamodb_unnest_ddb_json,
      :dynamodb_table_arn,
      :dynamodb_s3_bucket,
      :dynamodb_s3_prefix,
      :dynamodb_s3_bucket_owner,
      :dynamodb_sts_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:dynamodb_unnest_ddb_json] = false unless options.key?(:dynamodb_unnest_ddb_json)
        super
      end
    end

    # <p>Options to configure how your data quality evaluation results are published.</p>
    # @!attribute evaluation_context
    #   <p>The context of the evaluation.</p>
    #   @return [String]
    # @!attribute results_s3_prefix
    #   <p>The Amazon S3 prefix prepended to the results.</p>
    #   @return [String]
    # @!attribute cloud_watch_metrics_enabled
    #   <p>Enable metrics for your data quality results.</p>
    #   @return [Boolean]
    # @!attribute results_publishing_enabled
    #   <p>Enable publishing for your data quality results.</p>
    #   @return [Boolean]
    class DQResultsPublishingOptions < Struct.new(
      :evaluation_context,
      :results_s3_prefix,
      :cloud_watch_metrics_enabled,
      :results_publishing_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options to configure how your job will stop if your data quality evaluation fails.</p>
    # @!attribute stop_job_on_failure_timing
    #   <p>When to stop job if your data quality evaluation fails. Options are Immediate or AfterDataLoad.</p>
    #   @return [String]
    class DQStopJobOnFailureOptions < Struct.new(
      :stop_job_on_failure_timing,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration information for maintaining Data Catalog security.</p>
    # @!attribute encryption_at_rest
    #   <p>Specifies the encryption-at-rest configuration for the Data Catalog.</p>
    #   @return [Types::EncryptionAtRest]
    # @!attribute connection_password_encryption
    #   <p>When connection password protection is enabled, the Data Catalog uses a customer-provided
    #         key to encrypt the password as part of <code>CreateConnection</code> or
    #           <code>UpdateConnection</code> and store it in the <code>ENCRYPTED_PASSWORD</code> field in
    #         the connection properties. You can enable catalog encryption or only password
    #         encryption.</p>
    #   @return [Types::ConnectionPasswordEncryption]
    class DataCatalogEncryptionSettings < Struct.new(
      :encryption_at_rest,
      :connection_password_encryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input properties to configure data lake access for your catalog resource in the Glue Data Catalog.</p>
    # @!attribute data_lake_access
    #   <p>Turns on or off data lake access for Apache Spark applications that access Amazon Redshift databases in the Data Catalog from any non-Redshift engine, such as Amazon Athena, Amazon EMR, or Glue ETL.</p>
    #   @return [Boolean]
    # @!attribute data_transfer_role
    #   <p>A role that will be assumed by Glue for transferring data into/out of the staging bucket during a query.</p>
    #   @return [String]
    # @!attribute kms_key
    #   <p>An encryption key that will be used for the staging bucket that will be created along with the catalog.</p>
    #   @return [String]
    # @!attribute catalog_type
    #   <p>Specifies a federated catalog type for the native catalog resource. The currently supported type is <code>aws:redshift</code>.</p>
    #   @return [String]
    class DataLakeAccessProperties < Struct.new(
      :data_lake_access,
      :data_transfer_role,
      :kms_key,
      :catalog_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:data_lake_access] = false unless options.key?(:data_lake_access)
        super
      end
    end

    # <p>The output properties of the data lake access configuration for your catalog resource in the Glue Data Catalog.</p>
    # @!attribute data_lake_access
    #   <p>Turns on or off data lake access for Apache Spark applications that access Amazon Redshift databases in the Data Catalog.</p>
    #   @return [Boolean]
    # @!attribute data_transfer_role
    #   <p>A role that will be assumed by Glue for transferring data into/out of the staging bucket during a query.</p>
    #   @return [String]
    # @!attribute kms_key
    #   <p>An encryption key that will be used for the staging bucket that will be created along with the catalog.</p>
    #   @return [String]
    # @!attribute managed_workgroup_name
    #   <p>The managed Redshift Serverless compute name that is created for your catalog resource.</p>
    #   @return [String]
    # @!attribute managed_workgroup_status
    #   <p>The managed Redshift Serverless compute status.</p>
    #   @return [String]
    # @!attribute redshift_database_name
    #   <p>The default Redshift database resource name in the managed compute.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message that gives more detailed information about the managed workgroup status.</p>
    #   @return [String]
    # @!attribute catalog_type
    #   <p>Specifies a federated catalog type for the native catalog resource. The currently supported type is <code>aws:redshift</code>.</p>
    #   @return [String]
    class DataLakeAccessPropertiesOutput < Struct.new(
      :data_lake_access,
      :data_transfer_role,
      :kms_key,
      :managed_workgroup_name,
      :managed_workgroup_status,
      :redshift_database_name,
      :status_message,
      :catalog_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:data_lake_access] = false unless options.key?(:data_lake_access)
        super
      end
    end

    # <p>The Lake Formation principal.</p>
    # @!attribute data_lake_principal_identifier
    #   <p>An identifier for the Lake Formation principal.</p>
    #   @return [String]
    class DataLakePrincipal < Struct.new(
      :data_lake_principal_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of metrics showing the total counts of processed rows and rules, including their pass/fail statistics based on row-level results.</p>
    # @!attribute total_rows_processed
    #   <p>The total number of rows that were processed during the data quality evaluation.</p>
    #   @return [Float]
    # @!attribute total_rows_passed
    #   <p>The total number of rows that passed all applicable data quality rules.</p>
    #   @return [Float]
    # @!attribute total_rows_failed
    #   <p>The total number of rows that failed one or more data quality rules.</p>
    #   @return [Float]
    # @!attribute total_rules_processed
    #   <p>The total number of data quality rules that were evaluated.</p>
    #   @return [Float]
    # @!attribute total_rules_passed
    #   <p>The total number of data quality rules that passed their evaluation criteria.</p>
    #   @return [Float]
    # @!attribute total_rules_failed
    #   <p>The total number of data quality rules that failed their evaluation criteria.</p>
    #   @return [Float]
    class DataQualityAggregatedMetrics < Struct.new(
      :total_rows_processed,
      :total_rows_passed,
      :total_rows_failed,
      :total_rules_processed,
      :total_rules_passed,
      :total_rules_failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the result of the evaluation of a data quality analyzer.</p>
    # @!attribute name
    #   <p>The name of the data quality analyzer.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the data quality analyzer.</p>
    #   @return [String]
    # @!attribute evaluation_message
    #   <p>An evaluation message.</p>
    #   @return [String]
    # @!attribute evaluated_metrics
    #   <p>A map of metrics associated with the evaluation of the analyzer.</p>
    #   @return [Hash<String, Float>]
    class DataQualityAnalyzerResult < Struct.new(
      :name,
      :description,
      :evaluation_message,
      :evaluated_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how Data Quality assets in your account should be encrypted.</p>
    # @!attribute data_quality_encryption_mode
    #   <p>The encryption mode to use for encrypting Data Quality assets. These assets include data quality rulesets, results, statistics, anomaly detection models and observations.</p>
    #            <p>Valid values are <code>SSEKMS</code> for encryption using a customer-managed KMS key, or <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.</p>
    #   @return [String]
    class DataQualityEncryption < Struct.new(
      :data_quality_encryption_mode,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional run options you can specify for an evaluation run.</p>
    # @!attribute cloud_watch_metrics_enabled
    #   <p>Whether or not to enable CloudWatch metrics.</p>
    #   @return [Boolean]
    # @!attribute results_s3_prefix
    #   <p>Prefix for Amazon S3 to store results.</p>
    #   @return [String]
    # @!attribute composite_rule_evaluation_method
    #   <p>Set the evaluation method for composite rules in the ruleset to ROW/COLUMN</p>
    #   @return [String]
    class DataQualityEvaluationRunAdditionalRunOptions < Struct.new(
      :cloud_watch_metrics_enabled,
      :results_s3_prefix,
      :composite_rule_evaluation_method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The database and table in the Glue Data Catalog that is used for input or output data
    #             for Data Quality Operations.</p>
    # @!attribute database_name
    #   <p>A database name in the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>A table name in the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>A unique identifier for the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection to the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute additional_options
    #   <p>Additional options for the table. Currently there are two keys supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>pushDownPredicate</code>: to filter on partitions without having to list and read all the files in your dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>catalogPartitionPredicate</code>: to use server-side partition pruning using partition indexes in the Glue Data Catalog.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute pre_processing_query
    #   <p>SQL Query of SparkSQL format that can be used to pre-process the data for the table in Glue Data Catalog,
    #               before running the Data Quality Operation.</p>
    #   @return [String]
    class DataQualityGlueTable < Struct.new(
      :database_name,
      :table_name,
      :catalog_id,
      :connection_name,
      :additional_options,
      :pre_processing_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the data quality metric value according to the analysis of historical data.</p>
    # @!attribute actual_value
    #   <p>The actual value of the data quality metric.</p>
    #   @return [Float]
    # @!attribute expected_value
    #   <p>The expected value of the data quality metric according to the analysis of historical data.</p>
    #   @return [Float]
    # @!attribute lower_limit
    #   <p>The lower limit of the data quality metric value according to the analysis of historical data.</p>
    #   @return [Float]
    # @!attribute upper_limit
    #   <p>The upper limit of the data quality metric value according to the analysis of historical data.</p>
    #   @return [Float]
    class DataQualityMetricValues < Struct.new(
      :actual_value,
      :expected_value,
      :lower_limit,
      :upper_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the observation generated after evaluating the rules and analyzers.</p>
    # @!attribute description
    #   <p>A description of the data quality observation.</p>
    #   @return [String]
    # @!attribute metric_based_observation
    #   <p>An object of type <code>MetricBasedObservation</code> representing the observation that is based on evaluated data quality metrics.</p>
    #   @return [Types::MetricBasedObservation]
    class DataQualityObservation < Struct.new(
      :description,
      :metric_based_observation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a data quality result.</p>
    # @!attribute result_id
    #   <p>A unique result ID for the data quality result.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The Profile ID for the data quality result.</p>
    #   @return [String]
    # @!attribute score
    #   <p>An aggregate data quality score. Represents the ratio of rules that passed to the total number of rules.</p>
    #   @return [Float]
    # @!attribute data_source
    #   <p>The table associated with the data quality result, if any.</p>
    #   @return [Types::DataSource]
    # @!attribute ruleset_name
    #   <p>The name of the ruleset associated with the data quality result.</p>
    #   @return [String]
    # @!attribute evaluation_context
    #   <p>In the context of a job in Glue Studio, each node in the canvas is typically assigned some sort of name and data quality nodes will have names. In the case of multiple nodes, the <code>evaluationContext</code> can differentiate the nodes.</p>
    #   @return [String]
    # @!attribute started_on
    #   <p>The date and time when this data quality run started.</p>
    #   @return [Time]
    # @!attribute completed_on
    #   <p>The date and time when this data quality run completed.</p>
    #   @return [Time]
    # @!attribute job_name
    #   <p>The job name associated with the data quality result, if any.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>The job run ID associated with the data quality result, if any.</p>
    #   @return [String]
    # @!attribute ruleset_evaluation_run_id
    #   <p>The unique run ID for the ruleset evaluation for this data quality result.</p>
    #   @return [String]
    # @!attribute rule_results
    #   <p>A list of <code>DataQualityRuleResult</code> objects representing the results for each rule. </p>
    #   @return [Array<Types::DataQualityRuleResult>]
    # @!attribute analyzer_results
    #   <p>A list of <code>DataQualityAnalyzerResult</code> objects representing the results for each analyzer. </p>
    #   @return [Array<Types::DataQualityAnalyzerResult>]
    # @!attribute observations
    #   <p>A list of <code>DataQualityObservation</code> objects representing the observations generated after evaluating the rules and analyzers. </p>
    #   @return [Array<Types::DataQualityObservation>]
    # @!attribute aggregated_metrics
    #   <p> A summary of <code>DataQualityAggregatedMetrics</code> objects showing the total counts of processed rows and rules, including their pass/fail statistics based on row-level results. </p>
    #   @return [Types::DataQualityAggregatedMetrics]
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
      :aggregated_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a data quality result.</p>
    # @!attribute result_id
    #   <p>The unique result ID for this data quality result.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The table name associated with the data quality result.</p>
    #   @return [Types::DataSource]
    # @!attribute job_name
    #   <p>The job name associated with the data quality result.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>The job run ID associated with the data quality result.</p>
    #   @return [String]
    # @!attribute started_on
    #   <p>The time that the run started for this data quality result.</p>
    #   @return [Time]
    class DataQualityResultDescription < Struct.new(
      :result_id,
      :data_source,
      :job_name,
      :job_run_id,
      :started_on,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Criteria used to return data quality results.</p>
    # @!attribute data_source
    #   <p>Filter results by the specified data source. For example, retrieving all results for an Glue table.</p>
    #   @return [Types::DataSource]
    # @!attribute job_name
    #   <p>Filter results by the specified job name.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>Filter results by the specified job run ID.</p>
    #   @return [String]
    # @!attribute started_after
    #   <p>Filter results by runs that started after this time.</p>
    #   @return [Time]
    # @!attribute started_before
    #   <p>Filter results by runs that started before this time.</p>
    #   @return [Time]
    class DataQualityResultFilterCriteria < Struct.new(
      :data_source,
      :job_name,
      :job_run_id,
      :started_after,
      :started_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the result of a data quality rule recommendation run.</p>
    # @!attribute run_id
    #   <p>The unique run identifier associated with this run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status for this run.</p>
    #   @return [String]
    # @!attribute started_on
    #   <p>The date and time when this run started.</p>
    #   @return [Time]
    # @!attribute data_source
    #   <p>The data source (Glue table) associated with the recommendation run.</p>
    #   @return [Types::DataSource]
    class DataQualityRuleRecommendationRunDescription < Struct.new(
      :run_id,
      :status,
      :started_on,
      :data_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for listing data quality recommendation runs.</p>
    # @!attribute data_source
    #   <p>Filter based on a specified data source (Glue table).</p>
    #   @return [Types::DataSource]
    # @!attribute started_before
    #   <p>Filter based on time for results started before provided time.</p>
    #   @return [Time]
    # @!attribute started_after
    #   <p>Filter based on time for results started after provided time.</p>
    #   @return [Time]
    class DataQualityRuleRecommendationRunFilter < Struct.new(
      :data_source,
      :started_before,
      :started_after,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the result of the evaluation of a data quality rule.</p>
    # @!attribute name
    #   <p>The name of the data quality rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the data quality rule.</p>
    #   @return [String]
    # @!attribute evaluation_message
    #   <p>An evaluation message.</p>
    #   @return [String]
    # @!attribute result
    #   <p>A pass or fail status for the rule.</p>
    #   @return [String]
    # @!attribute evaluated_metrics
    #   <p>A map of metrics associated with the evaluation of the rule.</p>
    #   @return [Hash<String, Float>]
    # @!attribute evaluated_rule
    #   <p>The evaluated rule.</p>
    #   @return [String]
    # @!attribute rule_metrics
    #   <p>A map containing metrics associated with the evaluation of the rule based on row-level results. </p>
    #   @return [Hash<String, Float>]
    class DataQualityRuleResult < Struct.new(
      :name,
      :description,
      :evaluation_message,
      :result,
      :evaluated_metrics,
      :evaluated_rule,
      :rule_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the result of a data quality ruleset evaluation run.</p>
    # @!attribute run_id
    #   <p>The unique run identifier associated with this run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status for this run.</p>
    #   @return [String]
    # @!attribute started_on
    #   <p>The date and time when the run started.</p>
    #   @return [Time]
    # @!attribute data_source
    #   <p>The data source (an Glue table) associated with the run.</p>
    #   @return [Types::DataSource]
    class DataQualityRulesetEvaluationRunDescription < Struct.new(
      :run_id,
      :status,
      :started_on,
      :data_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter criteria.</p>
    # @!attribute data_source
    #   <p>Filter based on a data source (an Glue table) associated with the run.</p>
    #   @return [Types::DataSource]
    # @!attribute started_before
    #   <p>Filter results by runs that started before this time.</p>
    #   @return [Time]
    # @!attribute started_after
    #   <p>Filter results by runs that started after this time.</p>
    #   @return [Time]
    class DataQualityRulesetEvaluationRunFilter < Struct.new(
      :data_source,
      :started_before,
      :started_after,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The criteria used to filter data quality rulesets.</p>
    # @!attribute name
    #   <p>The name of the ruleset filter criteria.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the ruleset filter criteria.</p>
    #   @return [String]
    # @!attribute created_before
    #   <p>Filter on rulesets created before this date.</p>
    #   @return [Time]
    # @!attribute created_after
    #   <p>Filter on rulesets created after this date.</p>
    #   @return [Time]
    # @!attribute last_modified_before
    #   <p>Filter on rulesets last modified before this date.</p>
    #   @return [Time]
    # @!attribute last_modified_after
    #   <p>Filter on rulesets last modified after this date.</p>
    #   @return [Time]
    # @!attribute target_table
    #   <p>The name and database name of the target table.</p>
    #   @return [Types::DataQualityTargetTable]
    class DataQualityRulesetFilterCriteria < Struct.new(
      :name,
      :description,
      :created_before,
      :created_after,
      :last_modified_before,
      :last_modified_after,
      :target_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a data quality ruleset returned by <code>GetDataQualityRuleset</code>.</p>
    # @!attribute name
    #   <p>The name of the data quality ruleset.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the data quality ruleset.</p>
    #   @return [String]
    # @!attribute created_on
    #   <p>The date and time the data quality ruleset was created.</p>
    #   @return [Time]
    # @!attribute last_modified_on
    #   <p>The date and time the data quality ruleset was last modified.</p>
    #   @return [Time]
    # @!attribute target_table
    #   <p>An object representing an Glue table.</p>
    #   @return [Types::DataQualityTargetTable]
    # @!attribute recommendation_run_id
    #   <p>When a ruleset was created from a recommendation run, this run ID is generated to link the two together.</p>
    #   @return [String]
    # @!attribute rule_count
    #   <p>The number of rules in the ruleset.</p>
    #   @return [Integer]
    class DataQualityRulesetListDetails < Struct.new(
      :name,
      :description,
      :created_on,
      :last_modified_on,
      :target_table,
      :recommendation_run_id,
      :rule_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing an Glue table.</p>
    # @!attribute table_name
    #   <p>The name of the Glue table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database where the Glue table exists.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The catalog id where the Glue table exists.</p>
    #   @return [String]
    class DataQualityTargetTable < Struct.new(
      :table_name,
      :database_name,
      :catalog_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A data source (an Glue table) for which you want data quality results.</p>
    # @!attribute glue_table
    #   <p>An Glue table.</p>
    #   @return [Types::GlueTable]
    # @!attribute data_quality_glue_table
    #   <p>An Glue table for Data Quality Operations.</p>
    #   @return [Types::DataQualityGlueTable]
    class DataSource < Struct.new(
      :glue_table,
      :data_quality_glue_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>Database</code> object represents a logical grouping of tables that might reside
    #       in a Hive metastore or an RDBMS.</p>
    # @!attribute name
    #   <p>The name of the database. For Hive compatibility, this is folded to lowercase when it is
    #         stored.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the database.</p>
    #   @return [String]
    # @!attribute location_uri
    #   <p>The location of the database (for example, an HDFS path).</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>These key-value pairs define parameters and properties
    #         of the database.</p>
    #   @return [Hash<String, String>]
    # @!attribute create_time
    #   <p>The time at which the metadata database was created in the catalog.</p>
    #   @return [Time]
    # @!attribute create_table_default_permissions
    #   <p>Creates a set of default permissions on the table for principals. Used by Lake Formation. Not used in the normal course of Glue operations.</p>
    #   @return [Array<Types::PrincipalPermissions>]
    # @!attribute target_database
    #   <p>A <code>DatabaseIdentifier</code> structure that describes a target database for resource linking.</p>
    #   @return [Types::DatabaseIdentifier]
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the database resides.</p>
    #   @return [String]
    # @!attribute federated_database
    #   <p>A <code>FederatedDatabase</code> structure that references an entity outside the Glue Data Catalog.</p>
    #   @return [Types::FederatedDatabase]
    class Database < Struct.new(
      :name,
      :description,
      :location_uri,
      :parameters,
      :create_time,
      :create_table_default_permissions,
      :target_database,
      :catalog_id,
      :federated_database,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that describes a target database for resource linking.</p>
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the database resides.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Region of the target database.</p>
    #   @return [String]
    class DatabaseIdentifier < Struct.new(
      :catalog_id,
      :database_name,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure used to create or update a database.</p>
    # @!attribute name
    #   <p>The name of the database. For Hive compatibility, this is folded to lowercase when it is
    #         stored.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the database.</p>
    #   @return [String]
    # @!attribute location_uri
    #   <p>The location of the database (for example, an HDFS path). </p>
    #   @return [String]
    # @!attribute parameters
    #   <p>These key-value pairs define parameters and properties
    #         of the database.</p>
    #            <p>These key-value pairs define parameters and properties of the database.</p>
    #   @return [Hash<String, String>]
    # @!attribute create_table_default_permissions
    #   <p>Creates a set of default permissions on the table for principals. Used by Lake Formation. Not used in the normal course of Glue operations.</p>
    #   @return [Array<Types::PrincipalPermissions>]
    # @!attribute target_database
    #   <p>A <code>DatabaseIdentifier</code> structure that describes a target database for resource linking.</p>
    #   @return [Types::DatabaseIdentifier]
    # @!attribute federated_database
    #   <p>A <code>FederatedDatabase</code> structure that references an entity outside the Glue Data Catalog.</p>
    #   @return [Types::FederatedDatabase]
    class DatabaseInput < Struct.new(
      :name,
      :description,
      :location_uri,
      :parameters,
      :create_table_default_permissions,
      :target_database,
      :federated_database,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Inclusion Annotation.</p>
    # @!attribute profile_id
    #   <p>The ID of the data quality profile the statistic belongs to.</p>
    #   @return [String]
    # @!attribute statistic_id
    #   <p>The Statistic ID.</p>
    #   @return [String]
    # @!attribute inclusion_annotation
    #   <p>The inclusion annotation value to apply to the statistic.</p>
    #   @return [String]
    class DatapointInclusionAnnotation < Struct.new(
      :profile_id,
      :statistic_id,
      :inclusion_annotation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure representing the datatype of the value.</p>
    # @!attribute id
    #   <p>The datatype of the value.</p>
    #   @return [String]
    # @!attribute label
    #   <p>A label assigned to the datatype.</p>
    #   @return [String]
    class Datatype < Struct.new(
      :id,
      :label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines column statistics supported for timestamp data columns.</p>
    # @!attribute minimum_value
    #   <p>The lowest value in the column.</p>
    #   @return [Time]
    # @!attribute maximum_value
    #   <p>The highest value in the column.</p>
    #   @return [Time]
    # @!attribute number_of_nulls
    #   <p>The number of null values in the column.</p>
    #   @return [Integer]
    # @!attribute number_of_distinct_values
    #   <p>The number of distinct values in a column.</p>
    #   @return [Integer]
    class DateColumnStatisticsData < Struct.new(
      :minimum_value,
      :maximum_value,
      :number_of_nulls,
      :number_of_distinct_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_nulls] = 0 unless options.key?(:number_of_nulls)
        options[:number_of_distinct_values] = 0 unless options.key?(:number_of_distinct_values)
        super
      end
    end

    # <p>Defines column statistics supported for fixed-point number data columns.</p>
    # @!attribute minimum_value
    #   <p>The lowest value in the column.</p>
    #   @return [Types::DecimalNumber]
    # @!attribute maximum_value
    #   <p>The highest value in the column.</p>
    #   @return [Types::DecimalNumber]
    # @!attribute number_of_nulls
    #   <p>The number of null values in the column.</p>
    #   @return [Integer]
    # @!attribute number_of_distinct_values
    #   <p>The number of distinct values in a column.</p>
    #   @return [Integer]
    class DecimalColumnStatisticsData < Struct.new(
      :minimum_value,
      :maximum_value,
      :number_of_nulls,
      :number_of_distinct_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_nulls] = 0 unless options.key?(:number_of_nulls)
        options[:number_of_distinct_values] = 0 unless options.key?(:number_of_distinct_values)
        super
      end
    end

    # <p>Contains a numeric value in decimal format.</p>
    # @!attribute unscaled_value
    #   <p>The unscaled numeric value.</p>
    #   @return [String]
    # @!attribute scale
    #   <p>The scale that determines where the decimal point falls in the
    #         unscaled value.</p>
    #   @return [Integer]
    class DecimalNumber < Struct.new(
      :unscaled_value,
      :scale,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:scale] = 0 unless options.key?(:scale)
        super
      end
    end

    # @!attribute name
    #   <p>The name of the blueprint to delete.</p>
    #   @return [String]
    class DeleteBlueprintRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Returns the name of the blueprint that was deleted.</p>
    #   @return [String]
    class DeleteBlueprintResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the catalog.</p>
    #   @return [String]
    class DeleteCatalogRequest < Struct.new(
      :catalog_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCatalogResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the classifier to remove.</p>
    #   @return [String]
    class DeleteClassifierRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteClassifierResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #   @return [String]
    # @!attribute partition_values
    #   <p>A list of partition values identifying the partition.</p>
    #   @return [Array<String>]
    # @!attribute column_name
    #   <p>Name of the column.</p>
    #   @return [String]
    class DeleteColumnStatisticsForPartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      :column_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteColumnStatisticsForPartitionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #   @return [String]
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #   @return [String]
    class DeleteColumnStatisticsForTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :column_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteColumnStatisticsForTableResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the database where the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table for which to delete column statistics.</p>
    #   @return [String]
    class DeleteColumnStatisticsTaskSettingsRequest < Struct.new(
      :database_name,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteColumnStatisticsTaskSettingsResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the connection resides. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection to delete.</p>
    #   @return [String]
    class DeleteConnectionRequest < Struct.new(
      :catalog_id,
      :connection_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteConnectionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the crawler to remove.</p>
    #   @return [String]
    class DeleteCrawlerRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCrawlerResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the custom pattern that you want to delete.</p>
    #   @return [String]
    class DeleteCustomEntityTypeRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the custom pattern you deleted.</p>
    #   @return [String]
    class DeleteCustomEntityTypeResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the data quality ruleset.</p>
    #   @return [String]
    class DeleteDataQualityRulesetRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDataQualityRulesetResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the database resides. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the database to delete. For Hive compatibility, this must be all
    #         lowercase.</p>
    #   @return [String]
    class DeleteDatabaseRequest < Struct.new(
      :catalog_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDatabaseResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name of the <code>DevEndpoint</code>.</p>
    #   @return [String]
    class DeleteDevEndpointRequest < Struct.new(
      :endpoint_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDevEndpointResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to delete the existing Glue Identity Center configuration.</p>
    class DeleteGlueIdentityCenterConfigurationRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response from deleting the Glue Identity Center configuration.</p>
    class DeleteGlueIdentityCenterConfigurationResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_identifier
    #   <p>The Amazon Resource Name (ARN) for the integration.</p>
    #   @return [String]
    class DeleteIntegrationRequest < Struct.new(
      :integration_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_arn
    #   <p>The ARN of the source for the integration.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The ARN of the target for the integration.</p>
    #   @return [String]
    # @!attribute integration_name
    #   <p>A unique name for an integration in Glue.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the integration.</p>
    #   @return [String]
    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) for the integration.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ARN of a KMS key used for encrypting the channel.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>An optional set of non-secret key–value pairs that contains additional contextual information for encryption.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>Metadata assigned to the resource consisting of a list of key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute status
    #   <p>The status of the integration being deleted.</p>
    #            <p>The possible statuses are:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATING: The integration is being created.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE: The integration creation succeeds.</p>
    #               </li>
    #               <li>
    #                  <p>MODIFYING: The integration is being modified.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED: The integration creation fails. </p>
    #               </li>
    #               <li>
    #                  <p>DELETING: The integration is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>SYNCING: The integration is synchronizing.</p>
    #               </li>
    #               <li>
    #                  <p>NEEDS_ATTENTION: The integration needs attention, such as synchronization.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the integration was created, in UTC.</p>
    #   @return [Time]
    # @!attribute errors
    #   <p>A list of errors associated with the integration.</p>
    #   @return [Array<Types::IntegrationError>]
    # @!attribute data_filter
    #   <p>Selects source tables for the integration using Maxwell filter syntax.</p>
    #   @return [String]
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
      :data_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The connection ARN of the source, or the database ARN of the target.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table to be replicated.</p>
    #   @return [String]
    class DeleteIntegrationTablePropertiesRequest < Struct.new(
      :resource_arn,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteIntegrationTablePropertiesResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job definition to delete.</p>
    #   @return [String]
    class DeleteJobRequest < Struct.new(
      :job_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job definition that was deleted.</p>
    #   @return [String]
    class DeleteJobResponse < Struct.new(
      :job_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the transform to delete.</p>
    #   @return [String]
    class DeleteMLTransformRequest < Struct.new(
      :transform_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the transform that was deleted.</p>
    #   @return [String]
    class DeleteMLTransformResponse < Struct.new(
      :transform_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The catalog ID where the table resides.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>Specifies the name of a database from which you want to delete a partition index.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>Specifies the name of a table from which you want to delete a partition index.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the partition index to be deleted.</p>
    #   @return [String]
    class DeletePartitionIndexRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :index_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeletePartitionIndexResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partition to be deleted resides. If none is provided,
    #         the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database in which the table in question
    #         resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table that contains the partition to be deleted.</p>
    #   @return [String]
    # @!attribute partition_values
    #   <p>The values that define the partition.</p>
    #   @return [Array<String>]
    class DeletePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeletePartitionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>
    #   @return [Types::RegistryId]
    class DeleteRegistryInput < Struct.new(
      :registry_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry being deleted.</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry being deleted.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the registry. A successful operation will return the <code>Deleting</code> status.</p>
    #   @return [String]
    class DeleteRegistryResponse < Struct.new(
      :registry_name,
      :registry_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_hash_condition
    #   <p>The hash value returned when this policy was set.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the Glue resource for the resource policy to be deleted.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      :policy_hash_condition,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteResourcePolicyResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure that may contain the schema name and Amazon Resource Name (ARN).</p>
    #   @return [Types::SchemaId]
    class DeleteSchemaInput < Struct.new(
      :schema_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema being deleted.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema being deleted.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the schema.</p>
    #   @return [String]
    class DeleteSchemaResponse < Struct.new(
      :schema_arn,
      :schema_name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure that may contain the schema name and Amazon Resource Name (ARN).</p>
    #   @return [Types::SchemaId]
    # @!attribute versions
    #   <p>A version range may be supplied which may be of the format:</p>
    #            <ul>
    #               <li>
    #                  <p>a single version number, 5</p>
    #               </li>
    #               <li>
    #                  <p>a range, 5-8 : deletes versions 5, 6, 7, 8</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteSchemaVersionsInput < Struct.new(
      :schema_id,
      :versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_version_errors
    #   <p>A list of <code>SchemaVersionErrorItem</code> objects, each containing an error and schema version.</p>
    #   @return [Array<Types::SchemaVersionErrorItem>]
    class DeleteSchemaVersionsResponse < Struct.new(
      :schema_version_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the security configuration to delete.</p>
    #   @return [String]
    class DeleteSecurityConfigurationRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSecurityConfigurationResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the session to be deleted.</p>
    #   @return [String]
    # @!attribute request_origin
    #   <p>The name of the origin of the delete session request.</p>
    #   @return [String]
    class DeleteSessionRequest < Struct.new(
      :id,
      :request_origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Returns the ID of the deleted session.</p>
    #   @return [String]
    class DeleteSessionResponse < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The Catalog ID of the table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database in the catalog in which the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of table optimizer.</p>
    #   @return [String]
    class DeleteTableOptimizerRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTableOptimizerResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the table resides. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database in which the table resides. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table to be deleted. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The transaction ID at which to delete the table contents.</p>
    #   @return [String]
    class DeleteTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :transaction_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTableResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The database in the catalog in which the table resides. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table. For Hive compatibility, 
    #         this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID of the table version to be deleted. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1.</p>
    #   @return [String]
    class DeleteTableVersionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTableVersionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger to delete.</p>
    #   @return [String]
    class DeleteTriggerRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger that was deleted.</p>
    #   @return [String]
    class DeleteTriggerResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the usage profile to delete.</p>
    #   @return [String]
    class DeleteUsageProfileRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteUsageProfileResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the function to be deleted is
    #         located. If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database where the function is located.</p>
    #   @return [String]
    # @!attribute function_name
    #   <p>The name of the function definition to be deleted.</p>
    #   @return [String]
    class DeleteUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteUserDefinedFunctionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the workflow to be deleted.</p>
    #   @return [String]
    class DeleteWorkflowRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the workflow specified in input.</p>
    #   @return [String]
    class DeleteWorkflowResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a Delta data store to crawl one or more Delta tables.</p>
    # @!attribute delta_tables
    #   <p>A list of the Amazon S3 paths to the Delta tables.</p>
    #   @return [Array<String>]
    # @!attribute connection_name
    #   <p>The name of the connection to use to connect to the Delta table target.</p>
    #   @return [String]
    # @!attribute write_manifest
    #   <p>Specifies whether to write the manifest files to the Delta table path.</p>
    #   @return [Boolean]
    # @!attribute create_native_delta_table
    #   <p>Specifies whether the crawler will create native tables, to allow integration with query engines that support querying of the Delta transaction log directly.</p>
    #   @return [Boolean]
    class DeltaTarget < Struct.new(
      :delta_tables,
      :connection_name,
      :write_manifest,
      :create_native_delta_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_type
    #   <p>The name of the connection type to be described.</p>
    #   @return [String]
    class DescribeConnectionTypeRequest < Struct.new(
      :connection_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_type
    #   <p>The name of the connection type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the connection type.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>The supported authentication types, data interface types (compute environments), and data operations of the connector.</p>
    #   @return [Types::Capabilities]
    # @!attribute connection_properties
    #   <p>Connection properties which are common across compute environments.</p>
    #   @return [Hash<String, Types::Property>]
    # @!attribute connection_options
    #   <p>Returns properties that can be set when creating a connection in the <code>ConnectionInput.ConnectionProperties</code>. <code>ConnectionOptions</code> defines parameters that can be set in a Spark ETL script in the connection options map passed to a dataframe.</p>
    #   @return [Hash<String, Types::Property>]
    # @!attribute authentication_configuration
    #   <p>The type of authentication used for the connection.</p>
    #   @return [Types::AuthConfiguration]
    # @!attribute compute_environment_configurations
    #   <p>The compute environments that are supported by the connection.</p>
    #   @return [Hash<String, Types::ComputeEnvironmentConfiguration>]
    # @!attribute physical_connection_requirements
    #   <p>Physical requirements for a connection, such as VPC, Subnet and Security Group specifications.</p>
    #   @return [Hash<String, Types::Property>]
    # @!attribute athena_connection_properties
    #   <p>Connection properties specific to the Athena compute environment.</p>
    #   @return [Hash<String, Types::Property>]
    # @!attribute python_connection_properties
    #   <p>Connection properties specific to the Python compute environment.</p>
    #   @return [Hash<String, Types::Property>]
    # @!attribute spark_connection_properties
    #   <p>Connection properties specific to the Spark compute environment.</p>
    #   @return [Hash<String, Types::Property>]
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
      :spark_connection_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_name
    #   <p>The name of the connection that contains the connection type credentials.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The catalog ID of the catalog that contains the connection. This can be null, By default, the Amazon Web Services Account ID is the catalog ID.</p>
    #   @return [String]
    # @!attribute entity_name
    #   <p>The name of the entity that you want to describe from the connection type.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, included if this is a continuation call.</p>
    #   @return [String]
    # @!attribute data_store_api_version
    #   <p>The version of the API used for the data store.</p>
    #   @return [String]
    class DescribeEntityRequest < Struct.new(
      :connection_name,
      :catalog_id,
      :entity_name,
      :next_token,
      :data_store_api_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fields
    #   <p>Describes the fields for that connector entity. This is the list of <code>Field</code> objects. <code>Field</code> is very similar to column in a database. The <code>Field</code> object has information about different properties associated with fields in the connector.</p>
    #   @return [Array<Types::Field>]
    # @!attribute next_token
    #   <p>A continuation token, present if the current segment is not the last.</p>
    #   @return [String]
    class DescribeEntityResponse < Struct.new(
      :fields,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) of the integration.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>A token to specify where to start paginating. This is the marker from a previously truncated response.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The total number of items to return in the output.</p>
    #   @return [Integer]
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the target resource in the integration.</p>
    #   @return [String]
    class DescribeInboundIntegrationsRequest < Struct.new(
      :integration_arn,
      :marker,
      :max_records,
      :target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute inbound_integrations
    #   <p>A list of inbound integrations.</p>
    #   @return [Array<Types::InboundIntegration>]
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request.</p>
    #   @return [String]
    class DescribeInboundIntegrationsResponse < Struct.new(
      :inbound_integrations,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_identifier
    #   <p>The Amazon Resource Name (ARN) for the integration.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The total number of items to return in the output.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>A list of key and values, to filter down the results. Supported keys are "Status", "IntegrationName", and "SourceArn". IntegrationName is limited to only one value.</p>
    #   @return [Array<Types::IntegrationFilter>]
    class DescribeIntegrationsRequest < Struct.new(
      :integration_identifier,
      :marker,
      :max_records,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute integrations
    #   <p>A list of zero-ETL integrations.</p>
    #   @return [Array<Types::Integration>]
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request.</p>
    #   @return [String]
    class DescribeIntegrationsResponse < Struct.new(
      :integrations,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A development endpoint where a developer can remotely debug extract, transform, and load
    #       (ETL) scripts.</p>
    # @!attribute endpoint_name
    #   <p>The name of the <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used in this
    #         <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A list of security group identifiers used in this <code>DevEndpoint</code>.</p>
    #   @return [Array<String>]
    # @!attribute subnet_id
    #   <p>The subnet ID for this <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute yarn_endpoint_address
    #   <p>The YARN endpoint address used by this <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute private_address
    #   <p>A private IP address to access the <code>DevEndpoint</code> within a VPC if the
    #           <code>DevEndpoint</code> is created within one. The <code>PrivateAddress</code> field is
    #         present only when you create the <code>DevEndpoint</code> within your VPC.</p>
    #   @return [String]
    # @!attribute zeppelin_remote_spark_interpreter_port
    #   <p>The Apache Zeppelin port for the remote Apache Spark interpreter.</p>
    #   @return [Integer]
    # @!attribute public_address
    #   <p>The public IP address used by this <code>DevEndpoint</code>. The
    #           <code>PublicAddress</code> field is present only when you create a non-virtual private cloud
    #         (VPC) <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of this <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated to the development endpoint. Accepts a value of Standard, G.1X, or G.2X.</p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
    #               </li>
    #            </ul>
    #            <p>Known issue: when a development endpoint is created with the <code>G.2X</code>
    #               <code>WorkerType</code> configuration, the Spark drivers for the development endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk. </p>
    #   @return [String]
    # @!attribute glue_version
    #   <p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints. </p>
    #            <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue version</a> in the developer guide.</p>
    #            <p>Development endpoints that are created without specifying a Glue version default to Glue 0.9.</p>
    #            <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated to the development endpoint.</p>
    #            <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>
    #   @return [Integer]
    # @!attribute number_of_nodes
    #   <p>The number of Glue Data Processing Units (DPUs) allocated to this
    #           <code>DevEndpoint</code>.</p>
    #   @return [Integer]
    # @!attribute availability_zone
    #   <p>The Amazon Web Services Availability Zone where this <code>DevEndpoint</code> is located.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the virtual private cloud (VPC) used by this <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute extra_python_libs_s3_path
    #   <p>The paths to one or more Python libraries in an Amazon S3 bucket that should be loaded in
    #         your <code>DevEndpoint</code>. Multiple values must be complete paths separated by a
    #         comma.</p>
    #            <note>
    #               <p>You can only use pure Python libraries with a <code>DevEndpoint</code>. Libraries that rely on
    #           C extensions, such as the <a href="http://pandas.pydata.org/">pandas</a> Python data
    #           analysis library, are not currently supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute extra_jars_s3_path
    #   <p>The path to one or more Java <code>.jar</code> files in an S3 bucket that should be loaded
    #         in your <code>DevEndpoint</code>.</p>
    #            <note>
    #               <p>You can only use pure Java/Scala libraries with a <code>DevEndpoint</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason for a current failure in this <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute last_update_status
    #   <p>The status of the last update.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The point in time at which this DevEndpoint was created.</p>
    #   @return [Time]
    # @!attribute last_modified_timestamp
    #   <p>The point in time at which this <code>DevEndpoint</code> was last modified.</p>
    #   @return [Time]
    # @!attribute public_key
    #   <p>The public key to be used by this <code>DevEndpoint</code> for authentication. This
    #         attribute is provided for backward compatibility because the recommended attribute to use is
    #         public keys.</p>
    #   @return [String]
    # @!attribute public_keys
    #   <p>A list of public keys to be used by the <code>DevEndpoints</code> for authentication.
    #         Using this attribute is preferred over a single public key because the public keys allow you
    #         to have a different private key per client.</p>
    #            <note>
    #               <p>If you previously created an endpoint with a public key, you must remove that key to be
    #           able to set a list of public keys. Call the <code>UpdateDevEndpoint</code> API operation
    #           with the public key content in the <code>deletePublicKeys</code> attribute, and the list of
    #           new keys in the <code>addPublicKeys</code> attribute.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this
    #           <code>DevEndpoint</code>.</p>
    #   @return [String]
    # @!attribute arguments
    #   <p>A map of arguments used to configure the <code>DevEndpoint</code>.</p>
    #            <p>Valid arguments are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"--enable-glue-datacatalog": ""</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>
    #   @return [Hash<String, String>]
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
      :arguments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:zeppelin_remote_spark_interpreter_port] = 0 unless options.key?(:zeppelin_remote_spark_interpreter_port)
        options[:number_of_nodes] = 0 unless options.key?(:number_of_nodes)
        super
      end
    end

    # <p>Custom libraries to be loaded into a development endpoint.</p>
    # @!attribute extra_python_libs_s3_path
    #   <p>The paths to one or more Python libraries in an Amazon Simple Storage Service (Amazon S3)
    #         bucket that should be loaded in your <code>DevEndpoint</code>. Multiple values must be
    #         complete paths separated by a comma.</p>
    #            <note>
    #               <p>You can only use pure Python libraries with a <code>DevEndpoint</code>. Libraries that rely on
    #           C extensions, such as the <a href="http://pandas.pydata.org/">pandas</a> Python data
    #           analysis library, are not currently supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute extra_jars_s3_path
    #   <p>The path to one or more Java <code>.jar</code> files in an S3 bucket that should be loaded
    #         in your <code>DevEndpoint</code>.</p>
    #            <note>
    #               <p>You can only use pure Java/Scala libraries with a <code>DevEndpoint</code>.</p>
    #            </note>
    #   @return [String]
    class DevEndpointCustomLibraries < Struct.new(
      :extra_python_libs_s3_path,
      :extra_jars_s3_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the direct JDBC source connection.</p>
    # @!attribute name
    #   <p>The name of the JDBC source connection.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The database of the JDBC source connection.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The table of the JDBC source connection.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The connection name of the JDBC source.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The connection type of the JDBC source.</p>
    #   @return [String]
    # @!attribute redshift_tmp_dir
    #   <p>The temp directory of the JDBC Redshift source.</p>
    #   @return [String]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the direct JDBC source.</p>
    #   @return [Array<Types::GlueSchema>]
    class DirectJDBCSource < Struct.new(
      :name,
      :database,
      :table,
      :connection_name,
      :connection_type,
      :redshift_tmp_dir,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Apache Kafka data store.</p>
    # @!attribute name
    #   <p>The name of the data store.</p>
    #   @return [String]
    # @!attribute streaming_options
    #   <p>Specifies the streaming options.</p>
    #   @return [Types::KafkaStreamingSourceOptions]
    # @!attribute window_size
    #   <p>The amount of time to spend processing each micro batch.</p>
    #   @return [Integer]
    # @!attribute detect_schema
    #   <p>Whether to automatically determine the schema from the incoming data.</p>
    #   @return [Boolean]
    # @!attribute data_preview_options
    #   <p>Specifies options related to data preview for viewing a sample of your data.</p>
    #   @return [Types::StreamingDataPreviewOptions]
    class DirectKafkaSource < Struct.new(
      :name,
      :streaming_options,
      :window_size,
      :detect_schema,
      :data_preview_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a direct Amazon Kinesis data source.</p>
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute window_size
    #   <p>The amount of time to spend processing each micro batch.</p>
    #   @return [Integer]
    # @!attribute detect_schema
    #   <p>Whether to automatically determine the schema from the incoming data.</p>
    #   @return [Boolean]
    # @!attribute streaming_options
    #   <p>Additional options for the Kinesis streaming data source.</p>
    #   @return [Types::KinesisStreamingSourceOptions]
    # @!attribute data_preview_options
    #   <p>Additional options for data preview.</p>
    #   @return [Types::StreamingDataPreviewOptions]
    class DirectKinesisSource < Struct.new(
      :name,
      :window_size,
      :detect_schema,
      :streaming_options,
      :data_preview_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A policy that specifies update behavior for the crawler.</p>
    # @!attribute enable_update_catalog
    #   <p>Whether to use the specified update behavior when the crawler finds a changed schema.</p>
    #   @return [Boolean]
    # @!attribute update_behavior
    #   <p>The update behavior when the crawler finds a changed schema.</p>
    #   @return [String]
    # @!attribute table
    #   <p>Specifies the table in the database that the schema change policy applies to.</p>
    #   @return [String]
    # @!attribute database
    #   <p>Specifies the database that the schema change policy applies to.</p>
    #   @return [String]
    class DirectSchemaChangePolicy < Struct.new(
      :enable_update_catalog,
      :update_behavior,
      :table,
      :database,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines column statistics supported for floating-point number data columns.</p>
    # @!attribute minimum_value
    #   <p>The lowest value in the column.</p>
    #   @return [Float]
    # @!attribute maximum_value
    #   <p>The highest value in the column.</p>
    #   @return [Float]
    # @!attribute number_of_nulls
    #   <p>The number of null values in the column.</p>
    #   @return [Integer]
    # @!attribute number_of_distinct_values
    #   <p>The number of distinct values in a column.</p>
    #   @return [Integer]
    class DoubleColumnStatisticsData < Struct.new(
      :minimum_value,
      :maximum_value,
      :number_of_nulls,
      :number_of_distinct_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:minimum_value] = 0 unless options.key?(:minimum_value)
        options[:maximum_value] = 0 unless options.key?(:maximum_value)
        options[:number_of_nulls] = 0 unless options.key?(:number_of_nulls)
        options[:number_of_distinct_values] = 0 unless options.key?(:number_of_distinct_values)
        super
      end
    end

    # <p>Specifies a transform that removes rows of repeating data from a data set. </p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #   @return [Array<String>]
    # @!attribute columns
    #   <p>The name of the columns to be merged or removed if repeating.</p>
    #   @return [Array<Array<String>>]
    class DropDuplicates < Struct.new(
      :name,
      :inputs,
      :columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a transform that chooses the data property keys that you want to drop.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #   @return [Array<String>]
    # @!attribute paths
    #   <p>A JSON path to a variable in the data structure.</p>
    #   @return [Array<Array<String>>]
    class DropFields < Struct.new(
      :name,
      :inputs,
      :paths,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a transform that removes columns from the dataset if all values in the column are 'null'. By default, Glue Studio will recognize null objects, but some values such as empty strings, strings that are "null", -1 integers or other placeholders such as zeros, are not automatically recognized as nulls.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #   @return [Array<String>]
    # @!attribute null_check_box_list
    #   <p>A structure that represents whether certain values are recognized as null values for removal.</p>
    #   @return [Types::NullCheckBoxList]
    # @!attribute null_text_list
    #   <p>A structure that specifies a list of NullValueField structures that represent a custom null value such as zero or other value being used as a null placeholder unique to the dataset.</p>
    #            <p>The <code>DropNullFields</code> transform removes custom null values only if both the value of the null placeholder and the datatype match the data.</p>
    #   @return [Array<Types::NullValueField>]
    class DropNullFields < Struct.new(
      :name,
      :inputs,
      :null_check_box_list,
      :null_text_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the set of parameters needed to perform the dynamic transform.</p>
    # @!attribute name
    #   <p>Specifies the name of the dynamic transform.</p>
    #   @return [String]
    # @!attribute transform_name
    #   <p>Specifies the name of the dynamic transform as it appears in the Glue Studio visual editor.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>Specifies the inputs for the dynamic transform that are required.</p>
    #   @return [Array<String>]
    # @!attribute parameters
    #   <p>Specifies the parameters of the dynamic transform.</p>
    #   @return [Array<Types::TransformConfigParameter>]
    # @!attribute function_name
    #   <p>Specifies the name of the function of the dynamic transform.</p>
    #   @return [String]
    # @!attribute path
    #   <p>Specifies the path of the dynamic transform source and config files.</p>
    #   @return [String]
    # @!attribute version
    #   <p>This field is not used and will be deprecated in future release.</p>
    #   @return [String]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the dynamic transform.</p>
    #   @return [Array<Types::GlueSchema>]
    class DynamicTransform < Struct.new(
      :name,
      :transform_name,
      :inputs,
      :parameters,
      :function_name,
      :path,
      :version,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a DynamoDB data source in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    # @!attribute pitr_enabled
    #   <p>Specifies whether Point-in-Time Recovery (PITR) is enabled for the DynamoDB table. When set to <code>true</code>, 
    #         allows reading from a specific point in time. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute additional_options
    #   <p>Specifies additional connection options for the DynamoDB data source.</p>
    #   @return [Types::DDBELTCatalogAdditionalOptions]
    class DynamoDBCatalogSource < Struct.new(
      :name,
      :database,
      :table,
      :pitr_enabled,
      :additional_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a DynamoDB ELT connector source for extracting data from DynamoDB tables.</p>
    # @!attribute name
    #   <p>The name of the DynamoDB ELT connector source.</p>
    #   @return [String]
    # @!attribute connection_options
    #   <p>The connection options for the DynamoDB ELT connector source.</p>
    #   @return [Types::DDBELTConnectionOptions]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the DynamoDB ELT connector source.</p>
    #   @return [Array<Types::GlueSchema>]
    class DynamoDBELTConnectorSource < Struct.new(
      :name,
      :connection_options,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Amazon DynamoDB table to crawl.</p>
    # @!attribute path
    #   <p>The name of the DynamoDB table to crawl.</p>
    #   @return [String]
    # @!attribute scan_all
    #   <p>Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table.</p>
    #            <p>A value of <code>true</code> means to scan all records, while a value of <code>false</code> means to sample the records. If no value is specified, the value defaults to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute scan_rate
    #   <p>The percentage of the configured read capacity units to use by the Glue crawler. Read capacity units is a term defined by DynamoDB, and is a numeric value that acts as rate limiter for the number of reads that can be performed on that table per second.</p>
    #            <p>The valid values are null or a value between 0.1 to 1.5. A null value is used when user does not provide a value, and defaults to 0.5 of the configured Read Capacity Unit (for provisioned tables), or 0.25 of the max configured Read Capacity Unit (for tables using on-demand mode).</p>
    #   @return [Float]
    class DynamoDBTarget < Struct.new(
      :path,
      :scan_all,
      :scan_rate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An edge represents a directed connection between two Glue components that are part of the workflow the
    #       edge belongs to.</p>
    # @!attribute source_id
    #   <p>The unique of the node within the workflow where the edge starts.</p>
    #   @return [String]
    # @!attribute destination_id
    #   <p>The unique of the node within the workflow where the edge ends.</p>
    #   @return [String]
    class Edge < Struct.new(
      :source_id,
      :destination_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the encryption-at-rest configuration for the Data Catalog.</p>
    # @!attribute catalog_encryption_mode
    #   <p>The encryption-at-rest mode for encrypting Data Catalog data.</p>
    #   @return [String]
    # @!attribute sse_aws_kms_key_id
    #   <p>The ID of the KMS key to use for encryption at rest.</p>
    #   @return [String]
    # @!attribute catalog_encryption_service_role
    #   <p>The role that Glue assumes to encrypt and decrypt the Data Catalog objects on the caller's behalf.</p>
    #   @return [String]
    class EncryptionAtRest < Struct.new(
      :catalog_encryption_mode,
      :sse_aws_kms_key_id,
      :catalog_encryption_service_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an encryption configuration.</p>
    # @!attribute s3_encryption
    #   <p>The encryption configuration for Amazon Simple Storage Service (Amazon S3) data.</p>
    #   @return [Array<Types::S3Encryption>]
    # @!attribute cloud_watch_encryption
    #   <p>The encryption configuration for Amazon CloudWatch.</p>
    #   @return [Types::CloudWatchEncryption]
    # @!attribute job_bookmarks_encryption
    #   <p>The encryption configuration for job bookmarks.</p>
    #   @return [Types::JobBookmarksEncryption]
    # @!attribute data_quality_encryption
    #   <p>The encryption configuration for Glue Data Quality assets.</p>
    #   @return [Types::DataQualityEncryption]
    class EncryptionConfiguration < Struct.new(
      :s3_encryption,
      :cloud_watch_encryption,
      :job_bookmarks_encryption,
      :data_quality_encryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An entity supported by a given <code>ConnectionType</code>.</p>
    # @!attribute entity_name
    #   <p>The name of the entity.</p>
    #   @return [String]
    # @!attribute label
    #   <p>Label used for the entity.</p>
    #   @return [String]
    # @!attribute is_parent_entity
    #   <p>A Boolean value which helps to determine whether there are sub objects that can be listed.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>A description of the entity.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The type of entities that are present in the response. This value depends on the source connection. For example this is <code>SObjects</code> for Salesforce and <code>databases</code> or <code>schemas</code> or <code>tables</code> for sources like Amazon Redshift.</p>
    #   @return [String]
    # @!attribute custom_properties
    #   <p>An optional map of keys which may be returned for an entity by a connector.</p>
    #   @return [Hash<String, String>]
    class Entity < Struct.new(
      :entity_name,
      :label,
      :is_parent_entity,
      :description,
      :category,
      :custom_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specified entity does not exist</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    # @!attribute from_federation_source
    #   <p>Indicates whether or not the exception relates to a federated source.</p>
    #   @return [Boolean]
    class EntityNotFoundException < Struct.new(
      :message,
      :from_federation_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an error.</p>
    # @!attribute error_code
    #   <p>The code associated with this error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class ErrorDetail < Struct.new(
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing error details.</p>
    # @!attribute error_code
    #   <p>The error code for an error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message for an error.</p>
    #   @return [String]
    class ErrorDetails < Struct.new(
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies your data quality evaluation criteria.</p>
    # @!attribute name
    #   <p>The name of the data quality evaluation.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The inputs of your data quality evaluation.</p>
    #   @return [Array<String>]
    # @!attribute ruleset
    #   <p>The ruleset for your data quality evaluation.</p>
    #   @return [String]
    # @!attribute output
    #   <p>The output of your data quality evaluation.</p>
    #   @return [String]
    # @!attribute publishing_options
    #   <p>Options to configure how your results are published.</p>
    #   @return [Types::DQResultsPublishingOptions]
    # @!attribute stop_job_on_failure_options
    #   <p>Options to configure how your job will stop if your data quality evaluation fails.</p>
    #   @return [Types::DQStopJobOnFailureOptions]
    class EvaluateDataQuality < Struct.new(
      :name,
      :inputs,
      :ruleset,
      :output,
      :publishing_options,
      :stop_job_on_failure_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies your data quality evaluation criteria.</p>
    # @!attribute name
    #   <p>The name of the data quality evaluation.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The inputs of your data quality evaluation. The first input in this list is the primary data source.</p>
    #   @return [Array<String>]
    # @!attribute additional_data_sources
    #   <p>The aliases of all data sources except primary.</p>
    #   @return [Hash<String, String>]
    # @!attribute ruleset
    #   <p>The ruleset for your data quality evaluation.</p>
    #   @return [String]
    # @!attribute publishing_options
    #   <p>Options to configure how your results are published.</p>
    #   @return [Types::DQResultsPublishingOptions]
    # @!attribute additional_options
    #   <p>Options to configure runtime behavior of the transform.</p>
    #   @return [Hash<String, String>]
    # @!attribute stop_job_on_failure_options
    #   <p>Options to configure how your job will stop if your data quality evaluation fails.</p>
    #   @return [Types::DQStopJobOnFailureOptions]
    class EvaluateDataQualityMultiFrame < Struct.new(
      :name,
      :inputs,
      :additional_data_sources,
      :ruleset,
      :publishing_options,
      :additional_options,
      :stop_job_on_failure_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Evaluation metrics provide an estimate of the quality of your machine learning transform.</p>
    # @!attribute transform_type
    #   <p>The type of machine learning transform.</p>
    #   @return [String]
    # @!attribute find_matches_metrics
    #   <p>The evaluation metrics for the find matches algorithm.</p>
    #   @return [Types::FindMatchesMetrics]
    class EvaluationMetrics < Struct.new(
      :transform_type,
      :find_matches_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Batch condition that must be met (specified number of events received or batch time window expired)
    #       before EventBridge event trigger fires.</p>
    # @!attribute batch_size
    #   <p>Number of events that must be received from Amazon EventBridge before EventBridge event trigger fires.</p>
    #   @return [Integer]
    # @!attribute batch_window
    #   <p>Window of time in seconds after which EventBridge event trigger fires. Window starts when first event is received.</p>
    #   @return [Integer]
    class EventBatchingCondition < Struct.new(
      :batch_size,
      :batch_window,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A run attempt for a column statistics task run.</p>
    # @!attribute status
    #   <p>The status of the last column statistics task run.</p>
    #   @return [String]
    # @!attribute column_statistics_task_run_id
    #   <p>A task run ID for the last column statistics task run.</p>
    #   @return [String]
    # @!attribute execution_timestamp
    #   <p>A timestamp when the last column statistics task run occurred.</p>
    #   @return [Time]
    # @!attribute error_message
    #   <p>An error message associated with the last column statistics task run.</p>
    #   @return [String]
    class ExecutionAttempt < Struct.new(
      :status,
      :column_statistics_task_run_id,
      :execution_timestamp,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An execution property of a job.</p>
    # @!attribute max_concurrent_runs
    #   <p>The maximum number of concurrent runs allowed for the job.
    #         The default is 1. An error is returned when this threshold is reached.
    #         The maximum value you can specify is controlled by a service limit.</p>
    #   @return [Integer]
    class ExecutionProperty < Struct.new(
      :max_concurrent_runs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_concurrent_runs] = 0 unless options.key?(:max_concurrent_runs)
        super
      end
    end

    # <p>Specifies configuration properties for an exporting labels task run.</p>
    # @!attribute output_s3_path
    #   <p>The Amazon Simple Storage Service (Amazon S3) path where you will export the
    #         labels.</p>
    #   @return [String]
    class ExportLabelsTaskRunProperties < Struct.new(
      :output_s3_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A catalog that points to an entity outside the Glue Data Catalog.</p>
    # @!attribute identifier
    #   <p>A unique identifier for the federated catalog.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection to an external data source, for example a Redshift-federated catalog.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection used to access the federated catalog, specifying the protocol or method for connection to the 
    #       external data source.</p>
    #   @return [String]
    class FederatedCatalog < Struct.new(
      :identifier,
      :connection_name,
      :connection_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A database that points to an entity outside the Glue Data Catalog.</p>
    # @!attribute identifier
    #   <p>A unique identifier for the federated database.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection to the external metastore.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection used to access the federated database, such as JDBC, ODBC, or other supported connection protocols.</p>
    #   @return [String]
    class FederatedDatabase < Struct.new(
      :identifier,
      :connection_name,
      :connection_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A federated resource already exists.</p>
    # @!attribute message
    #   <p>The message describing the problem.</p>
    #   @return [String]
    # @!attribute associated_glue_resource
    #   <p>The associated Glue resource already exists.</p>
    #   @return [String]
    class FederatedResourceAlreadyExistsException < Struct.new(
      :message,
      :associated_glue_resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A table that points to an entity outside the Glue Data Catalog.</p>
    # @!attribute identifier
    #   <p>A unique identifier for the federated table.</p>
    #   @return [String]
    # @!attribute database_identifier
    #   <p>A unique identifier for the federated database.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection to the external metastore.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection used to access the federated table, specifying the protocol or method for connecting to the external data source.</p>
    #   @return [String]
    class FederatedTable < Struct.new(
      :identifier,
      :database_identifier,
      :connection_name,
      :connection_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A federation source failed.</p>
    # @!attribute federation_source_error_code
    #   <p>The error code of the problem.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message describing the problem.</p>
    #   @return [String]
    class FederationSourceException < Struct.new(
      :federation_source_error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A federation source failed, but the operation may be retried.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class FederationSourceRetryableException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>Field</code> object has information about the different properties associated with a field in the connector.</p>
    # @!attribute field_name
    #   <p>A unique identifier for the field.</p>
    #   @return [String]
    # @!attribute label
    #   <p>A readable label used for the field.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the field.</p>
    #   @return [String]
    # @!attribute field_type
    #   <p>The type of data in the field.</p>
    #   @return [String]
    # @!attribute is_primary_key
    #   <p>Indicates whether this field can used as a primary key for the given entity.</p>
    #   @return [Boolean]
    # @!attribute is_nullable
    #   <p>Indicates whether this field can be nullable or not.</p>
    #   @return [Boolean]
    # @!attribute is_retrievable
    #   <p>Indicates whether this field can be added in Select clause of SQL query or whether it is retrievable or not.</p>
    #   @return [Boolean]
    # @!attribute is_filterable
    #   <p> Indicates whether this field can used in a filter clause (<code>WHERE</code> clause) of a SQL statement when querying data. </p>
    #   @return [Boolean]
    # @!attribute is_partitionable
    #   <p>Indicates whether a given field can be used in partitioning the query made to SaaS.</p>
    #   @return [Boolean]
    # @!attribute is_createable
    #   <p>Indicates whether this field can be created as part of a destination write.</p>
    #   @return [Boolean]
    # @!attribute is_updateable
    #   <p>Indicates whether this field can be updated as part of a destination write.</p>
    #   @return [Boolean]
    # @!attribute is_upsertable
    #   <p>Indicates whether this field can be upserted as part of a destination write.</p>
    #   @return [Boolean]
    # @!attribute is_default_on_create
    #   <p>Indicates whether this field is populated automatically when the object is created, such as a created at timestamp.</p>
    #   @return [Boolean]
    # @!attribute supported_values
    #   <p>A list of supported values for the field.</p>
    #   @return [Array<String>]
    # @!attribute supported_filter_operators
    #   <p>Indicates the support filter operators for this field.</p>
    #   @return [Array<String>]
    # @!attribute parent_field
    #   <p>A parent field name for a nested field.</p>
    #   @return [String]
    # @!attribute native_data_type
    #   <p>The data type returned by the SaaS API, such as “picklist” or “textarea” from Salesforce.</p>
    #   @return [String]
    # @!attribute custom_properties
    #   <p>Optional map of keys which may be returned.</p>
    #   @return [Hash<String, String>]
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
      :custom_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a transform that locates records in the dataset that have missing values and adds a new field with a value determined by imputation. The input data set is used to train the machine learning model that determines what the missing value should be.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #   @return [Array<String>]
    # @!attribute imputed_path
    #   <p>A JSON path to a variable in the data structure for the dataset that is imputed.</p>
    #   @return [String]
    # @!attribute filled_path
    #   <p>A JSON path to a variable in the data structure for the dataset that is filled.</p>
    #   @return [String]
    class FillMissingValues < Struct.new(
      :name,
      :inputs,
      :imputed_path,
      :filled_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a transform that splits a dataset into two, based on a filter condition.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #   @return [Array<String>]
    # @!attribute logical_operator
    #   <p>The operator used to filter rows by comparing the key value to a specified value.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Specifies a filter expression.</p>
    #   @return [Array<Types::FilterExpression>]
    class Filter < Struct.new(
      :name,
      :inputs,
      :logical_operator,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a filter expression.</p>
    # @!attribute operation
    #   <p>The type of operation to perform in the expression.</p>
    #   @return [String]
    # @!attribute negated
    #   <p>Whether the expression is to be negated.</p>
    #   @return [Boolean]
    # @!attribute values
    #   <p>A list of filter values.</p>
    #   @return [Array<Types::FilterValue>]
    class FilterExpression < Struct.new(
      :operation,
      :negated,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single entry in the list of values for a <code>FilterExpression</code>. </p>
    # @!attribute type
    #   <p>The type of filter value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value to be associated.</p>
    #   @return [Array<String>]
    class FilterValue < Struct.new(
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The evaluation metrics for the find matches algorithm. The quality of your machine
    #       learning transform is measured by getting your transform to predict some matches and comparing
    #       the results to known matches from the same dataset. The quality metrics are based on a subset
    #       of your data, so they are not precise.</p>
    # @!attribute area_under_pr_curve
    #   <p>The area under the precision/recall curve (AUPRC) is a single number measuring the overall
    #         quality of the transform, that is independent of the choice made for precision vs. recall.
    #         Higher values indicate that you have a more attractive precision vs. recall tradeoff.</p>
    #            <p>For more information, see <a href="https://en.wikipedia.org/wiki/Precision_and_recall">Precision and recall</a> in Wikipedia.</p>
    #   @return [Float]
    # @!attribute precision
    #   <p>The precision metric indicates when often your transform is correct when it predicts a match. Specifically, it measures how well the transform finds true positives from the total true positives possible.</p>
    #            <p>For more information, see <a href="https://en.wikipedia.org/wiki/Precision_and_recall">Precision and recall</a> in Wikipedia.</p>
    #   @return [Float]
    # @!attribute recall
    #   <p>The recall metric indicates that for an actual match, how often your transform predicts
    #         the match. Specifically, it measures how well the transform finds true positives from the
    #         total records in the source data.</p>
    #            <p>For more information, see <a href="https://en.wikipedia.org/wiki/Precision_and_recall">Precision and recall</a> in Wikipedia.</p>
    #   @return [Float]
    # @!attribute f1
    #   <p>The maximum F1 metric indicates the transform's accuracy between 0 and 1, where 1 is the best accuracy.</p>
    #            <p>For more information, see <a href="https://en.wikipedia.org/wiki/F1_score">F1 score</a> in Wikipedia.</p>
    #   @return [Float]
    # @!attribute confusion_matrix
    #   <p>The confusion matrix shows you what your transform is predicting accurately and what types of errors it is making.</p>
    #            <p>For more information, see <a href="https://en.wikipedia.org/wiki/Confusion_matrix">Confusion matrix</a> in Wikipedia.</p>
    #   @return [Types::ConfusionMatrix]
    # @!attribute column_importances
    #   <p>A list of <code>ColumnImportance</code> structures containing column importance metrics, sorted in order of descending importance.</p>
    #   @return [Array<Types::ColumnImportance>]
    class FindMatchesMetrics < Struct.new(
      :area_under_pr_curve,
      :precision,
      :recall,
      :f1,
      :confusion_matrix,
      :column_importances,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters to configure the find matches transform.</p>
    # @!attribute primary_key_column_name
    #   <p>The name of a column that uniquely identifies rows in the source table. Used to help identify matching records.</p>
    #   @return [String]
    # @!attribute precision_recall_tradeoff
    #   <p>The value selected when tuning your transform for a balance between precision and recall.
    #         A value of 0.5 means no preference; a value of 1.0 means a bias purely for precision, and a
    #         value of 0.0 means a bias for recall. Because this is a tradeoff, choosing values close to 1.0
    #         means very low recall, and choosing values close to 0.0 results in very low precision.</p>
    #            <p>The precision metric indicates how often your model is correct when it predicts a match. </p>
    #            <p>The recall metric indicates that for an actual match, how often your model predicts the
    #         match.</p>
    #   @return [Float]
    # @!attribute accuracy_cost_tradeoff
    #   <p>The value that is selected when tuning your transform for a balance between accuracy and
    #         cost. A value of 0.5 means that the system balances accuracy and cost concerns. A value of 1.0
    #         means a bias purely for accuracy, which typically results in a higher cost, sometimes
    #         substantially higher. A value of 0.0 means a bias purely for cost, which results in a less
    #         accurate <code>FindMatches</code> transform, sometimes with unacceptable accuracy.</p>
    #            <p>Accuracy measures how well the transform finds true positives and true negatives. Increasing accuracy requires more machine resources and cost. But it also results in increased recall. </p>
    #            <p>Cost measures how many compute resources, and thus money, are consumed to run the
    #         transform.</p>
    #   @return [Float]
    # @!attribute enforce_provided_labels
    #   <p>The value to switch on or off to force the output to match the provided labels from users. If the value is <code>True</code>, the <code>find matches</code> transform forces the output to match the provided labels. The results override the normal conflation results. If the value is <code>False</code>, the <code>find matches</code> transform does not ensure all the labels provided are respected, and the results rely on the trained model.</p>
    #            <p>Note that setting this value to true may increase the conflation execution time.</p>
    #   @return [Boolean]
    class FindMatchesParameters < Struct.new(
      :primary_key_column_name,
      :precision_recall_tradeoff,
      :accuracy_cost_tradeoff,
      :enforce_provided_labels,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies configuration properties for a Find Matches task run.</p>
    # @!attribute job_id
    #   <p>The job ID for the Find Matches task run.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name assigned to the job for the Find Matches task run.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>The job run ID for the Find Matches task run.</p>
    #   @return [String]
    class FindMatchesTaskRunProperties < Struct.new(
      :job_id,
      :job_name,
      :job_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the blueprint.</p>
    #   @return [String]
    # @!attribute include_blueprint
    #   <p>Specifies whether or not to include the blueprint in the response.</p>
    #   @return [Boolean]
    # @!attribute include_parameter_spec
    #   <p>Specifies whether or not to include the parameter specification.</p>
    #   @return [Boolean]
    class GetBlueprintRequest < Struct.new(
      :name,
      :include_blueprint,
      :include_parameter_spec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute blueprint
    #   <p>Returns a <code>Blueprint</code> object.</p>
    #   @return [Types::Blueprint]
    class GetBlueprintResponse < Struct.new(
      :blueprint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute blueprint_name
    #   <p>The name of the blueprint.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The run ID for the blueprint run you want to retrieve.</p>
    #   @return [String]
    class GetBlueprintRunRequest < Struct.new(
      :blueprint_name,
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute blueprint_run
    #   <p>Returns a <code>BlueprintRun</code> object.</p>
    #   @return [Types::BlueprintRun]
    class GetBlueprintRunResponse < Struct.new(
      :blueprint_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute blueprint_name
    #   <p>The name of the blueprint.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #   @return [Integer]
    class GetBlueprintRunsRequest < Struct.new(
      :blueprint_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute blueprint_runs
    #   <p>Returns a list of <code>BlueprintRun</code> objects.</p>
    #   @return [Array<Types::BlueprintRun>]
    # @!attribute next_token
    #   <p>A continuation token, if not all blueprint runs have been returned.</p>
    #   @return [String]
    class GetBlueprintRunsResponse < Struct.new(
      :blueprint_runs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the catalog to migrate. Currently, this should be the Amazon Web Services account ID.</p>
    #   @return [String]
    class GetCatalogImportStatusRequest < Struct.new(
      :catalog_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_status
    #   <p>The status of the specified catalog migration.</p>
    #   @return [Types::CatalogImportStatus]
    class GetCatalogImportStatusResponse < Struct.new(
      :import_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the parent catalog in which the catalog resides. If none is provided, the Amazon Web Services Account Number is used by default.</p>
    #   @return [String]
    class GetCatalogRequest < Struct.new(
      :catalog_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>A <code>Catalog</code> object. The definition of the specified catalog in the Glue Data Catalog.</p>
    #   @return [Types::Catalog]
    class GetCatalogResponse < Struct.new(
      :catalog,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute parent_catalog_id
    #   <p>The ID of the parent catalog in which the catalog resides. If none is provided, the Amazon Web Services Account Number is used by default.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of catalogs to return in one response.</p>
    #   @return [Integer]
    # @!attribute recursive
    #   <p>Whether to list all catalogs across the catalog hierarchy, starting from the <code>ParentCatalogId</code>. Defaults to <code>false</code> . When <code>true</code>, all catalog objects in the <code>ParentCatalogID</code> hierarchy are enumerated in the response.</p>
    #   @return [Boolean]
    # @!attribute include_root
    #   <p>Whether to list the default catalog in the account and region in the response. Defaults to <code>false</code>. When <code>true</code> and <code>ParentCatalogId = NULL | Amazon Web Services Account ID</code>, all catalogs and the default catalog are enumerated in the response.</p>
    #            <p>When the <code>ParentCatalogId</code> is not equal to null, and this attribute is passed as <code>false</code> or <code>true</code>, an <code>InvalidInputException</code> is thrown.</p>
    #   @return [Boolean]
    class GetCatalogsRequest < Struct.new(
      :parent_catalog_id,
      :next_token,
      :max_results,
      :recursive,
      :include_root,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_list
    #   <p>An array of <code>Catalog</code> objects. A list of <code>Catalog</code> objects from the specified parent catalog.</p>
    #   @return [Array<Types::Catalog>]
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    #   @return [String]
    class GetCatalogsResponse < Struct.new(
      :catalog_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the classifier to retrieve.</p>
    #   @return [String]
    class GetClassifierRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute classifier
    #   <p>The requested classifier.</p>
    #   @return [Types::Classifier]
    class GetClassifierResponse < Struct.new(
      :classifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The size of the list to return (optional).</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional continuation token.</p>
    #   @return [String]
    class GetClassifiersRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute classifiers
    #   <p>The requested list of classifier
    #         objects.</p>
    #   @return [Array<Types::Classifier>]
    # @!attribute next_token
    #   <p>A continuation token.</p>
    #   @return [String]
    class GetClassifiersResponse < Struct.new(
      :classifiers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #   @return [String]
    # @!attribute partition_values
    #   <p>A list of partition values identifying the partition.</p>
    #   @return [Array<String>]
    # @!attribute column_names
    #   <p>A list of the column names.</p>
    #   @return [Array<String>]
    class GetColumnStatisticsForPartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      :column_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute column_statistics_list
    #   <p>List of ColumnStatistics that failed to be retrieved.</p>
    #   @return [Array<Types::ColumnStatistics>]
    # @!attribute errors
    #   <p>Error occurred during retrieving column statistics data.</p>
    #   @return [Array<Types::ColumnError>]
    class GetColumnStatisticsForPartitionResponse < Struct.new(
      :column_statistics_list,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #   @return [String]
    # @!attribute column_names
    #   <p>A list of the column names.</p>
    #   @return [Array<String>]
    class GetColumnStatisticsForTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :column_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute column_statistics_list
    #   <p>List of ColumnStatistics.</p>
    #   @return [Array<Types::ColumnStatistics>]
    # @!attribute errors
    #   <p>List of ColumnStatistics that failed to be retrieved.</p>
    #   @return [Array<Types::ColumnError>]
    class GetColumnStatisticsForTableResponse < Struct.new(
      :column_statistics_list,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute column_statistics_task_run_id
    #   <p>The identifier for the particular column statistics task run.</p>
    #   @return [String]
    class GetColumnStatisticsTaskRunRequest < Struct.new(
      :column_statistics_task_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute column_statistics_task_run
    #   <p>A <code>ColumnStatisticsTaskRun</code> object representing the details of the column stats run.</p>
    #   @return [Types::ColumnStatisticsTaskRun]
    class GetColumnStatisticsTaskRunResponse < Struct.new(
      :column_statistics_task_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the database where the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    class GetColumnStatisticsTaskRunsRequest < Struct.new(
      :database_name,
      :table_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute column_statistics_task_runs
    #   <p>A list of column statistics task runs.</p>
    #   @return [Array<Types::ColumnStatisticsTaskRun>]
    # @!attribute next_token
    #   <p>A continuation token, if not all task runs have yet been returned.</p>
    #   @return [String]
    class GetColumnStatisticsTaskRunsResponse < Struct.new(
      :column_statistics_task_runs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the database where the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table for which to retrieve column statistics.</p>
    #   @return [String]
    class GetColumnStatisticsTaskSettingsRequest < Struct.new(
      :database_name,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute column_statistics_task_settings
    #   <p>A <code>ColumnStatisticsTaskSettings</code> object representing the settings for the column statistics task.</p>
    #   @return [Types::ColumnStatisticsTaskSettings]
    class GetColumnStatisticsTaskSettingsResponse < Struct.new(
      :column_statistics_task_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the connection resides. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the connection definition to retrieve.</p>
    #   @return [String]
    # @!attribute hide_password
    #   <p>Allows you to retrieve the connection metadata without returning the password. For
    #         instance, the Glue console uses this flag to retrieve the connection, and does not display
    #         the password. Set this parameter when the caller might not have permission to use the KMS
    #         key to decrypt the password, but it does have permission to access the rest of the connection
    #         properties.</p>
    #   @return [Boolean]
    # @!attribute apply_override_for_compute_environment
    #   <p>For connections that may be used in multiple services, specifies returning properties for the specified compute environment.</p>
    #   @return [String]
    class GetConnectionRequest < Struct.new(
      :catalog_id,
      :name,
      :hide_password,
      :apply_override_for_compute_environment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection
    #   <p>The requested connection definition.</p>
    #   @return [Types::Connection]
    class GetConnectionResponse < Struct.new(
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters the connection definitions that are returned by the <code>GetConnections</code>
    #       API operation.</p>
    # @!attribute match_criteria
    #   <p>A criteria string that must match the criteria recorded in the
    #          connection definition for that connection definition to be returned.</p>
    #   @return [Array<String>]
    # @!attribute connection_type
    #   <p>The type of connections to return. Currently, SFTP is not supported.</p>
    #   @return [String]
    # @!attribute connection_schema_version
    #   <p>Denotes if the connection was created with schema version 1 or 2.</p>
    #   @return [Integer]
    class GetConnectionsFilter < Struct.new(
      :match_criteria,
      :connection_type,
      :connection_schema_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the connections reside. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A filter that controls which connections are returned.</p>
    #   @return [Types::GetConnectionsFilter]
    # @!attribute hide_password
    #   <p>Allows you to retrieve the connection metadata without returning the password. For
    #         instance, the Glue console uses this flag to retrieve the connection, and does not display
    #         the password. Set this parameter when the caller might not have permission to use the KMS
    #         key to decrypt the password, but it does have permission to access the rest of the connection
    #         properties.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of connections to return in one response.</p>
    #   @return [Integer]
    class GetConnectionsRequest < Struct.new(
      :catalog_id,
      :filter,
      :hide_password,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_list
    #   <p>A list of requested connection definitions.</p>
    #   @return [Array<Types::Connection>]
    # @!attribute next_token
    #   <p>A continuation token, if the list of connections returned does not
    #         include the last of the filtered connections.</p>
    #   @return [String]
    class GetConnectionsResponse < Struct.new(
      :connection_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute crawler_name_list
    #   <p>A list of the names of crawlers about which to retrieve metrics.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    class GetCrawlerMetricsRequest < Struct.new(
      :crawler_name_list,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute crawler_metrics_list
    #   <p>A list of metrics for the specified crawler.</p>
    #   @return [Array<Types::CrawlerMetrics>]
    # @!attribute next_token
    #   <p>A continuation token, if the returned list does not contain the
    #         last metric available.</p>
    #   @return [String]
    class GetCrawlerMetricsResponse < Struct.new(
      :crawler_metrics_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the crawler to retrieve metadata for.</p>
    #   @return [String]
    class GetCrawlerRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute crawler
    #   <p>The metadata for the specified crawler.</p>
    #   @return [Types::Crawler]
    class GetCrawlerResponse < Struct.new(
      :crawler,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of crawlers to return on each call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #   @return [String]
    class GetCrawlersRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute crawlers
    #   <p>A list of crawler metadata.</p>
    #   @return [Array<Types::Crawler>]
    # @!attribute next_token
    #   <p>A continuation token, if the returned list has not reached the end
    #         of those defined in this customer account.</p>
    #   @return [String]
    class GetCrawlersResponse < Struct.new(
      :crawlers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the custom pattern that you want to retrieve.</p>
    #   @return [String]
    class GetCustomEntityTypeRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the custom pattern that you retrieved.</p>
    #   @return [String]
    # @!attribute regex_string
    #   <p>A regular expression string that is used for detecting sensitive data in a custom pattern.</p>
    #   @return [String]
    # @!attribute context_words
    #   <p>A list of context words if specified when you created the custom pattern. If none of these context words are found within the vicinity of the regular expression the data will not be detected as sensitive data.</p>
    #   @return [Array<String>]
    class GetCustomEntityTypeResponse < Struct.new(
      :name,
      :regex_string,
      :context_words,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog to retrieve the security configuration for. If none is
    #         provided, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    class GetDataCatalogEncryptionSettingsRequest < Struct.new(
      :catalog_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_catalog_encryption_settings
    #   <p>The requested security configuration.</p>
    #   @return [Types::DataCatalogEncryptionSettings]
    class GetDataCatalogEncryptionSettingsResponse < Struct.new(
      :data_catalog_encryption_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statistic_id
    #   <p>The Statistic ID.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The Profile ID.</p>
    #   @return [String]
    class GetDataQualityModelRequest < Struct.new(
      :statistic_id,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The training status of the data quality model.</p>
    #   @return [String]
    # @!attribute started_on
    #   <p>The timestamp when the data quality model training started.</p>
    #   @return [Time]
    # @!attribute completed_on
    #   <p>The timestamp when the data quality model training completed.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>The training failure reason.</p>
    #   @return [String]
    class GetDataQualityModelResponse < Struct.new(
      :status,
      :started_on,
      :completed_on,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statistic_id
    #   <p>The Statistic ID.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The Profile ID.</p>
    #   @return [String]
    class GetDataQualityModelResultRequest < Struct.new(
      :statistic_id,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute completed_on
    #   <p>The timestamp when the data quality model training completed.</p>
    #   @return [Time]
    # @!attribute model
    #   <p>A list of <code>StatisticModelResult</code>
    #            </p>
    #   @return [Array<Types::StatisticModelResult>]
    class GetDataQualityModelResultResponse < Struct.new(
      :completed_on,
      :model,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute result_id
    #   <p>A unique result ID for the data quality result.</p>
    #   @return [String]
    class GetDataQualityResultRequest < Struct.new(
      :result_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response for the data quality result.</p>
    # @!attribute result_id
    #   <p>A unique result ID for the data quality result.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The Profile ID for the data quality result.</p>
    #   @return [String]
    # @!attribute score
    #   <p>An aggregate data quality score. Represents the ratio of rules that passed to the total number of rules.</p>
    #   @return [Float]
    # @!attribute data_source
    #   <p>The table associated with the data quality result, if any.</p>
    #   @return [Types::DataSource]
    # @!attribute ruleset_name
    #   <p>The name of the ruleset associated with the data quality result.</p>
    #   @return [String]
    # @!attribute evaluation_context
    #   <p>In the context of a job in Glue Studio, each node in the canvas is typically assigned some sort of name and data quality nodes will have names. In the case of multiple nodes, the <code>evaluationContext</code> can differentiate the nodes.</p>
    #   @return [String]
    # @!attribute started_on
    #   <p>The date and time when the run for this data quality result started.</p>
    #   @return [Time]
    # @!attribute completed_on
    #   <p>The date and time when the run for this data quality result was completed.</p>
    #   @return [Time]
    # @!attribute job_name
    #   <p>The job name associated with the data quality result, if any.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>The job run ID associated with the data quality result, if any.</p>
    #   @return [String]
    # @!attribute ruleset_evaluation_run_id
    #   <p>The unique run ID associated with the ruleset evaluation.</p>
    #   @return [String]
    # @!attribute rule_results
    #   <p>A list of <code>DataQualityRuleResult</code> objects representing the results for each rule. </p>
    #   @return [Array<Types::DataQualityRuleResult>]
    # @!attribute analyzer_results
    #   <p>A list of <code>DataQualityAnalyzerResult</code> objects representing the results for each analyzer. </p>
    #   @return [Array<Types::DataQualityAnalyzerResult>]
    # @!attribute observations
    #   <p>A list of <code>DataQualityObservation</code> objects representing the observations generated after evaluating the rules and analyzers. </p>
    #   @return [Array<Types::DataQualityObservation>]
    # @!attribute aggregated_metrics
    #   <p> A summary of <code>DataQualityAggregatedMetrics</code> objects showing the total counts of processed rows and rules, including their pass/fail statistics based on row-level results. </p>
    #   @return [Types::DataQualityAggregatedMetrics]
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
      :aggregated_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute run_id
    #   <p>The unique run identifier associated with this run.</p>
    #   @return [String]
    class GetDataQualityRuleRecommendationRunRequest < Struct.new(
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response for the Data Quality rule recommendation run.</p>
    # @!attribute run_id
    #   <p>The unique run identifier associated with this run.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The data source (an Glue table) associated with this run.</p>
    #   @return [Types::DataSource]
    # @!attribute role
    #   <p>An IAM role supplied to encrypt the results of the run.</p>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of <code>G.1X</code> workers to be used in the run. The default is 5.</p>
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The timeout for a run in minutes. This is the maximum time that a run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status for this run.</p>
    #   @return [String]
    # @!attribute error_string
    #   <p>The error strings that are associated with the run.</p>
    #   @return [String]
    # @!attribute started_on
    #   <p>The date and time when this run started.</p>
    #   @return [Time]
    # @!attribute last_modified_on
    #   <p>A timestamp. The last point in time when this data quality rule recommendation run was modified.</p>
    #   @return [Time]
    # @!attribute completed_on
    #   <p>The date and time when this run was completed.</p>
    #   @return [Time]
    # @!attribute execution_time
    #   <p>The amount of time (in seconds) that the run consumed resources.</p>
    #   @return [Integer]
    # @!attribute recommended_ruleset
    #   <p>When a start rule recommendation run completes, it creates a recommended ruleset (a set of rules). This member has those rules in Data Quality Definition Language (DQDL) format.</p>
    #   @return [String]
    # @!attribute created_ruleset_name
    #   <p>The name of the ruleset that was created by the run.</p>
    #   @return [String]
    # @!attribute data_quality_security_configuration
    #   <p>The name of the security configuration created with the data quality encryption option.</p>
    #   @return [String]
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
      :data_quality_security_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:execution_time] = 0 unless options.key?(:execution_time)
        super
      end
    end

    # @!attribute run_id
    #   <p>The unique run identifier associated with this run.</p>
    #   @return [String]
    class GetDataQualityRulesetEvaluationRunRequest < Struct.new(
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute run_id
    #   <p>The unique run identifier associated with this run.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The data source (an Glue table) associated with this evaluation run.</p>
    #   @return [Types::DataSource]
    # @!attribute role
    #   <p>An IAM role supplied to encrypt the results of the run.</p>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of <code>G.1X</code> workers to be used in the run. The default is 5.</p>
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The timeout for a run in minutes. This is the maximum time that a run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>
    #   @return [Integer]
    # @!attribute additional_run_options
    #   <p>Additional run options you can specify for an evaluation run.</p>
    #   @return [Types::DataQualityEvaluationRunAdditionalRunOptions]
    # @!attribute status
    #   <p>The status for this run.</p>
    #   @return [String]
    # @!attribute error_string
    #   <p>The error strings that are associated with the run.</p>
    #   @return [String]
    # @!attribute started_on
    #   <p>The date and time when this run started.</p>
    #   @return [Time]
    # @!attribute last_modified_on
    #   <p>A timestamp. The last point in time when this data quality rule recommendation run was modified.</p>
    #   @return [Time]
    # @!attribute completed_on
    #   <p>The date and time when this run was completed.</p>
    #   @return [Time]
    # @!attribute execution_time
    #   <p>The amount of time (in seconds) that the run consumed resources.</p>
    #   @return [Integer]
    # @!attribute ruleset_names
    #   <p>A list of ruleset names for the run. Currently, this parameter takes only one Ruleset name.</p>
    #   @return [Array<String>]
    # @!attribute result_ids
    #   <p>A list of result IDs for the data quality results for the run.</p>
    #   @return [Array<String>]
    # @!attribute additional_data_sources
    #   <p>A map of reference strings to additional data sources you can specify for an evaluation run.</p>
    #   @return [Hash<String, Types::DataSource>]
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
      :additional_data_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:execution_time] = 0 unless options.key?(:execution_time)
        super
      end
    end

    # @!attribute name
    #   <p>The name of the ruleset.</p>
    #   @return [String]
    class GetDataQualityRulesetRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the data quality ruleset response.</p>
    # @!attribute name
    #   <p>The name of the ruleset.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the ruleset.</p>
    #   @return [String]
    # @!attribute ruleset
    #   <p>A Data Quality Definition Language (DQDL) ruleset. For more information, see the Glue developer guide.</p>
    #   @return [String]
    # @!attribute target_table
    #   <p>The name and database name of the target table.</p>
    #   @return [Types::DataQualityTargetTable]
    # @!attribute created_on
    #   <p>A timestamp. The time and date that this data quality ruleset was created.</p>
    #   @return [Time]
    # @!attribute last_modified_on
    #   <p>A timestamp. The last point in time when this data quality ruleset was modified.</p>
    #   @return [Time]
    # @!attribute recommendation_run_id
    #   <p>When a ruleset was created from a recommendation run, this run ID is generated to link the two together.</p>
    #   @return [String]
    # @!attribute data_quality_security_configuration
    #   <p>The name of the security configuration created with the data quality encryption option.</p>
    #   @return [String]
    class GetDataQualityRulesetResponse < Struct.new(
      :name,
      :description,
      :ruleset,
      :target_table,
      :created_on,
      :last_modified_on,
      :recommendation_run_id,
      :data_quality_security_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the database resides. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the database to retrieve. For Hive compatibility, this 
    #         should be all lowercase.</p>
    #   @return [String]
    class GetDatabaseRequest < Struct.new(
      :catalog_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database
    #   <p>The definition of the specified database in the Data Catalog.</p>
    #   @return [Types::Database]
    class GetDatabaseResponse < Struct.new(
      :database,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog from which to retrieve <code>Databases</code>. If none is
    #         provided, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of databases to return in one response.</p>
    #   @return [Integer]
    # @!attribute resource_share_type
    #   <p>Allows you to specify that you want to list the databases shared with your account. The allowable values are <code>FEDERATED</code>, <code>FOREIGN</code> or <code>ALL</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>If set to <code>FEDERATED</code>, will list the federated databases (referencing an external entity) shared with your account.</p>
    #               </li>
    #               <li>
    #                  <p>If set to <code>FOREIGN</code>, will list the databases shared with your account. </p>
    #               </li>
    #               <li>
    #                  <p>If set to <code>ALL</code>, will list the databases shared with your account, as well as the databases in yor local account. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute attributes_to_get
    #   <p>Specifies the database fields returned by the <code>GetDatabases</code> call. This parameter doesn’t accept an empty list. The request must include the <code>NAME</code>.</p>
    #   @return [Array<String>]
    class GetDatabasesRequest < Struct.new(
      :catalog_id,
      :next_token,
      :max_results,
      :resource_share_type,
      :attributes_to_get,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_list
    #   <p>A list of <code>Database</code> objects from the specified catalog.</p>
    #   @return [Array<Types::Database>]
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens,
    #         returned if the current segment of the list is not the last.</p>
    #   @return [String]
    class GetDatabasesResponse < Struct.new(
      :database_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute python_script
    #   <p>The Python script to transform.</p>
    #   @return [String]
    class GetDataflowGraphRequest < Struct.new(
      :python_script,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dag_nodes
    #   <p>A list of the nodes in the resulting DAG.</p>
    #   @return [Array<Types::CodeGenNode>]
    # @!attribute dag_edges
    #   <p>A list of the edges in the resulting DAG.</p>
    #   @return [Array<Types::CodeGenEdge>]
    class GetDataflowGraphResponse < Struct.new(
      :dag_nodes,
      :dag_edges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_name
    #   <p>Name of the <code>DevEndpoint</code> to retrieve information for.</p>
    #   @return [String]
    class GetDevEndpointRequest < Struct.new(
      :endpoint_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dev_endpoint
    #   <p>A <code>DevEndpoint</code> definition.</p>
    #   @return [Types::DevEndpoint]
    class GetDevEndpointResponse < Struct.new(
      :dev_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum size of information to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    class GetDevEndpointsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dev_endpoints
    #   <p>A list of <code>DevEndpoint</code> definitions.</p>
    #   @return [Array<Types::DevEndpoint>]
    # @!attribute next_token
    #   <p>A continuation token, if not all <code>DevEndpoint</code> definitions have yet been
    #         returned.</p>
    #   @return [String]
    class GetDevEndpointsResponse < Struct.new(
      :dev_endpoints,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_name
    #   <p>The name of the connection that contains the connection type credentials.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The catalog ID of the catalog that contains the connection. This can be null, By default, the Amazon Web Services Account ID is the catalog ID.</p>
    #   @return [String]
    # @!attribute entity_name
    #   <p>Name of the entity that we want to query the preview data from the given connection type.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, included if this is a continuation call.</p>
    #   @return [String]
    # @!attribute data_store_api_version
    #   <p>The API version of the SaaS connector.</p>
    #   @return [String]
    # @!attribute connection_options
    #   <p>Connector options that are required to query the data.</p>
    #   @return [Hash<String, String>]
    # @!attribute filter_predicate
    #   <p>A filter predicate that you can apply in the query request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Limits the number of records fetched with the request.</p>
    #   @return [Integer]
    # @!attribute order_by
    #   <p>A parameter that orders the response preview data.</p>
    #   @return [String]
    # @!attribute selected_fields
    #   <p> List of fields that we want to fetch as part of preview data.</p>
    #   @return [Array<String>]
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
      :selected_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute records
    #   <p>A list of the requested objects.</p>
    #   @return [Array<JSON>]
    # @!attribute next_token
    #   <p>A continuation token, present if the current segment is not the last.</p>
    #   @return [String]
    class GetEntityRecordsResponse < Struct.new(
      :records,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to retrieve the Glue Identity Center configuration.</p>
    class GetGlueIdentityCenterConfigurationRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing the Glue Identity Center configuration details.</p>
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity Center application associated with the Glue configuration.</p>
    #   @return [String]
    # @!attribute instance_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity Center instance associated with the Glue configuration.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>A list of Identity Center scopes that define the permissions and access levels for the Glue configuration.</p>
    #   @return [Array<String>]
    class GetGlueIdentityCenterConfigurationResponse < Struct.new(
      :application_arn,
      :instance_arn,
      :scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The connection ARN of the source, or the database ARN of the target.</p>
    #   @return [String]
    class GetIntegrationResourcePropertyRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The connection ARN of the source, or the database ARN of the target.</p>
    #   @return [String]
    # @!attribute source_processing_properties
    #   <p>The resource properties associated with the integration source.</p>
    #   @return [Types::SourceProcessingProperties]
    # @!attribute target_processing_properties
    #   <p>The resource properties associated with the integration target.</p>
    #   @return [Types::TargetProcessingProperties]
    class GetIntegrationResourcePropertyResponse < Struct.new(
      :resource_arn,
      :source_processing_properties,
      :target_processing_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the target table for which to retrieve integration table properties. Currently, this API only supports retrieving 
    #         properties for target tables, and the provided ARN should be the ARN of the target table in the Glue Data Catalog. Support for retrieving integration 
    #         table properties for source connections (using the connection ARN) is not yet implemented and will be added in a future release.
    #       </p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table to be replicated.</p>
    #   @return [String]
    class GetIntegrationTablePropertiesRequest < Struct.new(
      :resource_arn,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the target table for which to retrieve integration table properties. Currently, this API only supports retrieving 
    #         properties for target tables, and the provided ARN should be the ARN of the target table in the Glue Data Catalog. Support for retrieving integration 
    #         table properties for source connections (using the connection ARN) is not yet implemented and will be added in a future release.
    #       </p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table to be replicated.</p>
    #   @return [String]
    # @!attribute source_table_config
    #   <p>A structure for the source table configuration.</p>
    #   @return [Types::SourceTableConfig]
    # @!attribute target_table_config
    #   <p>A structure for the target table configuration.</p>
    #   @return [Types::TargetTableConfig]
    class GetIntegrationTablePropertiesResponse < Struct.new(
      :resource_arn,
      :table_name,
      :source_table_config,
      :target_table_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job in question.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The unique run identifier associated with this job run.</p>
    #   @return [String]
    class GetJobBookmarkRequest < Struct.new(
      :job_name,
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_bookmark_entry
    #   <p>A structure that defines a point that a job can resume processing.</p>
    #   @return [Types::JobBookmarkEntry]
    class GetJobBookmarkResponse < Struct.new(
      :job_bookmark_entry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job definition to retrieve.</p>
    #   @return [String]
    class GetJobRequest < Struct.new(
      :job_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>The requested job definition.</p>
    #   @return [Types::Job]
    class GetJobResponse < Struct.new(
      :job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>Name of the job definition being run.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The ID of the job run.</p>
    #   @return [String]
    # @!attribute predecessors_included
    #   <p>True if a list of predecessor runs should be returned.</p>
    #   @return [Boolean]
    class GetJobRunRequest < Struct.new(
      :job_name,
      :run_id,
      :predecessors_included,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_run
    #   <p>The requested job-run metadata.</p>
    #   @return [Types::JobRun]
    class GetJobRunResponse < Struct.new(
      :job_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job definition for which to retrieve all job runs.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the response.</p>
    #   @return [Integer]
    class GetJobRunsRequest < Struct.new(
      :job_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_runs
    #   <p>A list of job-run metadata objects.</p>
    #   @return [Array<Types::JobRun>]
    # @!attribute next_token
    #   <p>A continuation token, if not all requested job runs have been returned.</p>
    #   @return [String]
    class GetJobRunsResponse < Struct.new(
      :job_runs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the response.</p>
    #   @return [Integer]
    class GetJobsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>A list of job definitions.</p>
    #   @return [Array<Types::Job>]
    # @!attribute next_token
    #   <p>A continuation token, if not all job definitions have yet been returned.</p>
    #   @return [String]
    class GetJobsResponse < Struct.new(
      :jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #   @return [String]
    # @!attribute task_run_id
    #   <p>The unique identifier of the task run.</p>
    #   @return [String]
    class GetMLTaskRunRequest < Struct.new(
      :transform_id,
      :task_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the task run.</p>
    #   @return [String]
    # @!attribute task_run_id
    #   <p>The unique run identifier associated with this run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status for this task run.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>The names of the log groups that are associated with the task run.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>The list of properties that are associated with the task run.</p>
    #   @return [Types::TaskRunProperties]
    # @!attribute error_string
    #   <p>The error strings that are associated with the task run.</p>
    #   @return [String]
    # @!attribute started_on
    #   <p>The date and time when this task run started.</p>
    #   @return [Time]
    # @!attribute last_modified_on
    #   <p>The date and time when this task run was last modified.</p>
    #   @return [Time]
    # @!attribute completed_on
    #   <p>The date and time when this task run was completed.</p>
    #   @return [Time]
    # @!attribute execution_time
    #   <p>The amount of time (in seconds) that the task run consumed resources.</p>
    #   @return [Integer]
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
      :execution_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:execution_time] = 0 unless options.key?(:execution_time)
        super
      end
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token for pagination of the results. The default is empty.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. </p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>The filter criteria, in the <code>TaskRunFilterCriteria</code> structure, for the task run.</p>
    #   @return [Types::TaskRunFilterCriteria]
    # @!attribute sort
    #   <p>The sorting criteria, in the <code>TaskRunSortCriteria</code> structure, for the task run.</p>
    #   @return [Types::TaskRunSortCriteria]
    class GetMLTaskRunsRequest < Struct.new(
      :transform_id,
      :next_token,
      :max_results,
      :filter,
      :sort,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_runs
    #   <p>A list of task runs that are associated with the transform.</p>
    #   @return [Array<Types::TaskRun>]
    # @!attribute next_token
    #   <p>A pagination token, if more results are available.</p>
    #   @return [String]
    class GetMLTaskRunsResponse < Struct.new(
      :task_runs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the transform, generated at the time that the transform was
    #         created.</p>
    #   @return [String]
    class GetMLTransformRequest < Struct.new(
      :transform_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the transform, generated at the time that the transform was
    #         created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique name given to the transform when it was created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the transform.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The last known status of the transform (to indicate whether it can be used or not). One of "NOT_READY", "READY", or "DELETING".</p>
    #   @return [String]
    # @!attribute created_on
    #   <p>The date and time when the transform was created.</p>
    #   @return [Time]
    # @!attribute last_modified_on
    #   <p>The date and time when the transform was last modified.</p>
    #   @return [Time]
    # @!attribute input_record_tables
    #   <p>A list of Glue table definitions used by the transform.</p>
    #   @return [Array<Types::GlueTable>]
    # @!attribute parameters
    #   <p>The configuration parameters that are specific to the algorithm used.</p>
    #   @return [Types::TransformParameters]
    # @!attribute evaluation_metrics
    #   <p>The latest evaluation metrics.</p>
    #   @return [Types::EvaluationMetrics]
    # @!attribute label_count
    #   <p>The number of labels available for this transform.</p>
    #   @return [Integer]
    # @!attribute schema
    #   <p>The <code>Map<Column, Type></code> object that represents the schema that this
    #         transform accepts. Has an upper bound of 100 columns.</p>
    #   @return [Array<Types::SchemaColumn>]
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role with the required
    #         permissions.</p>
    #   @return [String]
    # @!attribute glue_version
    #   <p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions">Glue Versions</a> in the developer guide.</p>
    #   @return [String]
    # @!attribute max_capacity
    #   <p>The number of Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of
    #         processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
    #         information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue pricing
    #           page</a>. </p>
    #            <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>
    #   @return [Float]
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.</p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when this task runs.</p>
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The timeout for a task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>
    #   @return [Integer]
    # @!attribute max_retries
    #   <p>The maximum number of times to retry a task for this transform after a task run fails.</p>
    #   @return [Integer]
    # @!attribute transform_encryption
    #   <p>The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.</p>
    #   @return [Types::TransformEncryption]
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
      :transform_encryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:label_count] = 0 unless options.key?(:label_count)
        super
      end
    end

    # @!attribute next_token
    #   <p>A paginated token to offset the results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>The filter transformation criteria.</p>
    #   @return [Types::TransformFilterCriteria]
    # @!attribute sort
    #   <p>The sorting criteria.</p>
    #   @return [Types::TransformSortCriteria]
    class GetMLTransformsRequest < Struct.new(
      :next_token,
      :max_results,
      :filter,
      :sort,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transforms
    #   <p>A list of machine learning transforms.</p>
    #   @return [Array<Types::MLTransform>]
    # @!attribute next_token
    #   <p>A pagination token, if more results are available.</p>
    #   @return [String]
    class GetMLTransformsResponse < Struct.new(
      :transforms,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source
    #   <p>Specifies the source table.</p>
    #   @return [Types::CatalogEntry]
    # @!attribute sinks
    #   <p>A list of target tables.</p>
    #   @return [Array<Types::CatalogEntry>]
    # @!attribute location
    #   <p>Parameters for the mapping.</p>
    #   @return [Types::Location]
    class GetMappingRequest < Struct.new(
      :source,
      :sinks,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute mapping
    #   <p>A list of mappings to the specified targets.</p>
    #   @return [Array<Types::MappingEntry>]
    class GetMappingResponse < Struct.new(
      :mapping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The catalog ID where the table resides.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>Specifies the name of a database from which you want to retrieve partition indexes.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>Specifies the name of a table for which you want to retrieve the partition indexes.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, included if this is a continuation call.</p>
    #   @return [String]
    class GetPartitionIndexesRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute partition_index_descriptor_list
    #   <p>A list of index descriptors.</p>
    #   @return [Array<Types::PartitionIndexDescriptor>]
    # @!attribute next_token
    #   <p>A continuation token, present if the current list segment is not the last.</p>
    #   @return [String]
    class GetPartitionIndexesResponse < Struct.new(
      :partition_index_descriptor_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partition in question resides. If none is provided,
    #         the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database where the partition resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the partition's table.</p>
    #   @return [String]
    # @!attribute partition_values
    #   <p>The values that define the partition.</p>
    #   @return [Array<String>]
    class GetPartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute partition
    #   <p>The requested information, in the form of a <code>Partition</code>
    #         object.</p>
    #   @return [Types::Partition]
    class GetPartitionResponse < Struct.new(
      :partition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside. If none is provided,
    #         the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>An expression that filters the partitions to be returned.</p>
    #            <p>The expression uses SQL syntax similar to the SQL <code>WHERE</code> filter clause. The
    #         SQL statement parser <a href="http://jsqlparser.sourceforge.net/home.php">JSQLParser</a> parses the expression. </p>
    #            <p>
    #               <i>Operators</i>: The following are the operators that you can use in the
    #           <code>Expression</code> API call:</p>
    #            <dl>
    #               <dt>=</dt>
    #               <dd>
    #                  <p>Checks whether the values of the two operands are equal; if yes, then the condition becomes
    #               true.</p>
    #                  <p>Example: Assume 'variable a' holds 10 and 'variable b' holds 20. </p>
    #                  <p>(a = b) is not true.</p>
    #               </dd>
    #               <dt>< ></dt>
    #               <dd>
    #                  <p>Checks whether the values of two operands are equal; if the values are not equal,
    #               then the condition becomes true.</p>
    #                  <p>Example: (a < > b) is true.</p>
    #               </dd>
    #               <dt>></dt>
    #               <dd>
    #                  <p>Checks whether the value of the left operand is greater than the value of the right
    #               operand; if yes, then the condition becomes true.</p>
    #                  <p>Example: (a > b) is not true.</p>
    #               </dd>
    #               <dt><</dt>
    #               <dd>
    #                  <p>Checks whether the value of the left operand is less than the value of the right
    #               operand; if yes, then the condition becomes true.</p>
    #                  <p>Example: (a < b) is true.</p>
    #               </dd>
    #               <dt>>=</dt>
    #               <dd>
    #                  <p>Checks whether the value of the left operand is greater than or equal to the value
    #               of the right operand; if yes, then the condition becomes true.</p>
    #                  <p>Example: (a >= b) is not true.</p>
    #               </dd>
    #               <dt><=</dt>
    #               <dd>
    #                  <p>Checks whether the value of the left operand is less than or equal to the value of
    #               the right operand; if yes, then the condition becomes true.</p>
    #                  <p>Example: (a <= b) is true.</p>
    #               </dd>
    #               <dt>AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL</dt>
    #               <dd>
    #                  <p>Logical operators.</p>
    #               </dd>
    #            </dl>
    #            <p>
    #               <i>Supported Partition Key Types</i>: The following are the supported
    #         partition keys.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>string</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>date</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>timestamp</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>int</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>bigint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>long</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tinyint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>smallint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>decimal</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If an type is encountered that is not valid, an exception is thrown. </p>
    #            <p>The following list shows the valid operators on each type. When you define a crawler, the
    #           <code>partitionKey</code> type is created as a <code>STRING</code>, to be compatible with the catalog
    #         partitions. </p>
    #            <p>
    #               <i>Sample API Call</i>: </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve
    #         these partitions.</p>
    #   @return [String]
    # @!attribute segment
    #   <p>The segment of the table's partitions to scan in this request.</p>
    #   @return [Types::Segment]
    # @!attribute max_results
    #   <p>The maximum number of partitions to return in a single response.</p>
    #   @return [Integer]
    # @!attribute exclude_column_schema
    #   <p>When true, specifies not returning the partition column schema. Useful when you are interested only in other partition attributes such as partition values or location. This approach avoids the problem of a large response by not returning duplicate data.</p>
    #   @return [Boolean]
    # @!attribute transaction_id
    #   <p>The transaction ID at which to read the partition contents.</p>
    #   @return [String]
    # @!attribute query_as_of_time
    #   <p>The time as of when to read the partition contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with <code>TransactionId</code>.</p>
    #   @return [Time]
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
      :query_as_of_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute partitions
    #   <p>A list of requested partitions.</p>
    #   @return [Array<Types::Partition>]
    # @!attribute next_token
    #   <p>A continuation token, if the returned list of partitions does not include the last
    #         one.</p>
    #   @return [String]
    class GetPartitionsResponse < Struct.new(
      :partitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute mapping
    #   <p>The list of mappings from a source table to target tables.</p>
    #   @return [Array<Types::MappingEntry>]
    # @!attribute source
    #   <p>The source table.</p>
    #   @return [Types::CatalogEntry]
    # @!attribute sinks
    #   <p>The target tables.</p>
    #   @return [Array<Types::CatalogEntry>]
    # @!attribute location
    #   <p>The parameters for the mapping.</p>
    #   @return [Types::Location]
    # @!attribute language
    #   <p>The programming language of the code to perform the mapping.</p>
    #   @return [String]
    # @!attribute additional_plan_options_map
    #   <p>A map to hold additional optional key-value parameters.</p>
    #            <p>Currently, these key-value pairs are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>inferSchema</code>  —  Specifies whether to set <code>inferSchema</code> to true or false for the default script generated by an Glue job. For example, to set <code>inferSchema</code> to true, pass the following key value pair:</p>
    #                  <p>
    #                     <code>--additional-plan-options-map '{"inferSchema":"true"}'</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class GetPlanRequest < Struct.new(
      :mapping,
      :source,
      :sinks,
      :location,
      :language,
      :additional_plan_options_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute python_script
    #   <p>A Python script to perform the mapping.</p>
    #   @return [String]
    # @!attribute scala_code
    #   <p>The Scala code to perform the mapping.</p>
    #   @return [String]
    class GetPlanResponse < Struct.new(
      :python_script,
      :scala_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>
    #   @return [Types::RegistryId]
    class GetRegistryInput < Struct.new(
      :registry_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the registry.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the registry.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time the registry was created.</p>
    #   @return [String]
    # @!attribute updated_time
    #   <p>The date and time the registry was updated.</p>
    #   @return [String]
    class GetRegistryResponse < Struct.new(
      :registry_name,
      :registry_arn,
      :description,
      :status,
      :created_time,
      :updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #   @return [Integer]
    class GetResourcePoliciesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute get_resource_policies_response_list
    #   <p>A list of the individual resource policies and the account-level resource policy.</p>
    #   @return [Array<Types::GluePolicy>]
    # @!attribute next_token
    #   <p>A continuation token, if the returned list does not contain the last resource policy available.</p>
    #   @return [String]
    class GetResourcePoliciesResponse < Struct.new(
      :get_resource_policies_response_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the Glue resource for which to retrieve the resource policy. If not
    #         supplied, the Data Catalog resource policy is returned. Use <code>GetResourcePolicies</code>
    #         to view all existing resource policies. For more information see <a href="https://docs.aws.amazon.com/glue/latest/dg/glue-specifying-resource-arns.html">Specifying Glue Resource ARNs</a>.
    #       </p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_in_json
    #   <p>Contains the requested policy document, in JSON format.</p>
    #   @return [String]
    # @!attribute policy_hash
    #   <p>Contains the hash value associated with this policy.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The date and time at which the policy was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The date and time at which the policy was last updated.</p>
    #   @return [Time]
    class GetResourcePolicyResponse < Struct.new(
      :policy_in_json,
      :policy_hash,
      :create_time,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    #            <ul>
    #               <li>
    #                  <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #               </li>
    #               <li>
    #                  <p>SchemaId$SchemaName: The name of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #               </li>
    #            </ul>
    #   @return [Types::SchemaId]
    # @!attribute schema_definition
    #   <p>The definition of the schema for which schema details are required.</p>
    #   @return [String]
    class GetSchemaByDefinitionInput < Struct.new(
      :schema_id,
      :schema_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_version_id
    #   <p>The schema ID of the schema version.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #   @return [String]
    # @!attribute data_format
    #   <p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the schema version.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time the schema was created.</p>
    #   @return [String]
    class GetSchemaByDefinitionResponse < Struct.new(
      :schema_version_id,
      :schema_arn,
      :data_format,
      :status,
      :created_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    #            <ul>
    #               <li>
    #                  <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #               <li>
    #                  <p>SchemaId$SchemaName: The name of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #            </ul>
    #   @return [Types::SchemaId]
    class GetSchemaInput < Struct.new(
      :schema_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of schema if specified when created</p>
    #   @return [String]
    # @!attribute data_format
    #   <p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>
    #   @return [String]
    # @!attribute compatibility
    #   <p>The compatibility mode of the schema.</p>
    #   @return [String]
    # @!attribute schema_checkpoint
    #   <p>The version number of the checkpoint (the last time the compatibility mode was changed).</p>
    #   @return [Integer]
    # @!attribute latest_schema_version
    #   <p>The latest version of the schema associated with the returned schema definition.</p>
    #   @return [Integer]
    # @!attribute next_schema_version
    #   <p>The next version of the schema associated with the returned schema definition.</p>
    #   @return [Integer]
    # @!attribute schema_status
    #   <p>The status of the schema.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time the schema was created.</p>
    #   @return [String]
    # @!attribute updated_time
    #   <p>The date and time the schema was updated.</p>
    #   @return [String]
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
      :updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    #            <ul>
    #               <li>
    #                  <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #               <li>
    #                  <p>SchemaId$SchemaName: The name of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #            </ul>
    #   @return [Types::SchemaId]
    # @!attribute schema_version_id
    #   <p>The <code>SchemaVersionId</code> of the schema version. This field is required for fetching by schema ID. Either this or the <code>SchemaId</code> wrapper has to be provided.</p>
    #   @return [String]
    # @!attribute schema_version_number
    #   <p>The version number of the schema.</p>
    #   @return [Types::SchemaVersionNumber]
    class GetSchemaVersionInput < Struct.new(
      :schema_id,
      :schema_version_id,
      :schema_version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_version_id
    #   <p>The <code>SchemaVersionId</code> of the schema version.</p>
    #   @return [String]
    # @!attribute schema_definition
    #   <p>The schema definition for the schema ID.</p>
    #   @return [String]
    # @!attribute data_format
    #   <p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the schema.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the schema version. </p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time the schema version was created.</p>
    #   @return [String]
    class GetSchemaVersionResponse < Struct.new(
      :schema_version_id,
      :schema_definition,
      :data_format,
      :schema_arn,
      :version_number,
      :status,
      :created_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    #            <ul>
    #               <li>
    #                  <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #               </li>
    #               <li>
    #                  <p>SchemaId$SchemaName: The name of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #               </li>
    #            </ul>
    #   @return [Types::SchemaId]
    # @!attribute first_schema_version_number
    #   <p>The first of the two schema versions to be compared.</p>
    #   @return [Types::SchemaVersionNumber]
    # @!attribute second_schema_version_number
    #   <p>The second of the two schema versions to be compared.</p>
    #   @return [Types::SchemaVersionNumber]
    # @!attribute schema_diff_type
    #   <p>Refers to <code>SYNTAX_DIFF</code>, which is the currently supported diff type.</p>
    #   @return [String]
    class GetSchemaVersionsDiffInput < Struct.new(
      :schema_id,
      :first_schema_version_number,
      :second_schema_version_number,
      :schema_diff_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute diff
    #   <p>The difference between schemas as a string in JsonPatch format.</p>
    #   @return [String]
    class GetSchemaVersionsDiffResponse < Struct.new(
      :diff,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the security configuration to retrieve.</p>
    #   @return [String]
    class GetSecurityConfigurationRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_configuration
    #   <p>The requested security configuration.</p>
    #   @return [Types::SecurityConfiguration]
    class GetSecurityConfigurationResponse < Struct.new(
      :security_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    class GetSecurityConfigurationsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_configurations
    #   <p>A list of security configurations.</p>
    #   @return [Array<Types::SecurityConfiguration>]
    # @!attribute next_token
    #   <p>A continuation token, if there are more security
    #         configurations to return.</p>
    #   @return [String]
    class GetSecurityConfigurationsResponse < Struct.new(
      :security_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the session. </p>
    #   @return [String]
    # @!attribute request_origin
    #   <p>The origin of the request. </p>
    #   @return [String]
    class GetSessionRequest < Struct.new(
      :id,
      :request_origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session
    #   <p>The session object is returned in the response.</p>
    #   @return [Types::Session]
    class GetSessionResponse < Struct.new(
      :session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The Session ID of the statement.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The Id of the statement.</p>
    #   @return [Integer]
    # @!attribute request_origin
    #   <p>The origin of the request.</p>
    #   @return [String]
    class GetStatementRequest < Struct.new(
      :session_id,
      :id,
      :request_origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statement
    #   <p>Returns the statement.</p>
    #   @return [Types::Statement]
    class GetStatementResponse < Struct.new(
      :statement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The Catalog ID of the table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database in the catalog in which the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of table optimizer.</p>
    #   @return [String]
    class GetTableOptimizerRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The Catalog ID of the table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database in the catalog in which the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute table_optimizer
    #   <p>The optimizer associated with the specified table.</p>
    #   @return [Types::TableOptimizer]
    class GetTableOptimizerResponse < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :table_optimizer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the table resides. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database in the catalog in which the table resides.
    #         For Hive compatibility, this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table for which to retrieve the definition. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The transaction ID at which to read the table contents. </p>
    #   @return [String]
    # @!attribute query_as_of_time
    #   <p>The time as of when to read the table contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with <code>TransactionId</code>.</p>
    #   @return [Time]
    # @!attribute include_status_details
    #   <p>Specifies whether to include status details related to a request to create or update an Glue Data Catalog view.</p>
    #   @return [Boolean]
    class GetTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :transaction_id,
      :query_as_of_time,
      :include_status_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table
    #   <p>The <code>Table</code> object that defines the specified table.</p>
    #   @return [Types::Table]
    class GetTableResponse < Struct.new(
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The database in the catalog in which the table resides. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table. For Hive compatibility,
    #         this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID value of the table version to be retrieved. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1. </p>
    #   @return [String]
    class GetTableVersionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_version
    #   <p>The requested table version.</p>
    #   @return [Types::TableVersion]
    class GetTableVersionResponse < Struct.new(
      :table_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The database in the catalog in which the table resides. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of table versions to return in one response.</p>
    #   @return [Integer]
    class GetTableVersionsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_versions
    #   <p>A list of strings identifying available versions of the
    #         specified table.</p>
    #   @return [Array<Types::TableVersion>]
    # @!attribute next_token
    #   <p>A continuation token, if the list of available versions does
    #         not include the last one.</p>
    #   @return [String]
    class GetTableVersionsResponse < Struct.new(
      :table_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The database in the catalog whose tables to list. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>A regular expression pattern. If present, only those tables
    #         whose names match the pattern are returned.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, included if this is a continuation call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of tables to return in a single response.</p>
    #   @return [Integer]
    # @!attribute transaction_id
    #   <p>The transaction ID at which to read the table contents.</p>
    #   @return [String]
    # @!attribute query_as_of_time
    #   <p>The time as of when to read the table contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with <code>TransactionId</code>.</p>
    #   @return [Time]
    # @!attribute include_status_details
    #   <p>Specifies whether to include status details related to a request to create or update an Glue Data Catalog view.</p>
    #   @return [Boolean]
    # @!attribute attributes_to_get
    #   <p> Specifies the table fields returned by the <code>GetTables</code> call. This parameter doesn’t accept an empty list. The request must include <code>NAME</code>.</p>
    #            <p>The following are the valid combinations of values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NAME</code> - Names of all tables in the database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NAME</code>, <code>TABLE_TYPE</code> - Names of all tables and the table types.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class GetTablesRequest < Struct.new(
      :catalog_id,
      :database_name,
      :expression,
      :next_token,
      :max_results,
      :transaction_id,
      :query_as_of_time,
      :include_status_details,
      :attributes_to_get,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_list
    #   <p>A list of the requested <code>Table</code> objects.</p>
    #   @return [Array<Types::Table>]
    # @!attribute next_token
    #   <p>A continuation token, present if the current list segment is not the last.</p>
    #   @return [String]
    class GetTablesResponse < Struct.new(
      :table_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to retrieve tags.</p>
    #   @return [String]
    class GetTagsRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The requested tags.</p>
    #   @return [Hash<String, String>]
    class GetTagsResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger to retrieve.</p>
    #   @return [String]
    class GetTriggerRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute trigger
    #   <p>The requested trigger definition.</p>
    #   @return [Types::Trigger]
    class GetTriggerResponse < Struct.new(
      :trigger,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    # @!attribute dependent_job_name
    #   <p>The name of the job to retrieve triggers for. The trigger that can start this job is
    #         returned, and if there is no such trigger, all triggers are returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the response.</p>
    #   @return [Integer]
    class GetTriggersRequest < Struct.new(
      :next_token,
      :dependent_job_name,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute triggers
    #   <p>A list of triggers for the specified job.</p>
    #   @return [Array<Types::Trigger>]
    # @!attribute next_token
    #   <p>A continuation token, if not all the requested triggers
    #         have yet been returned.</p>
    #   @return [String]
    class GetTriggersResponse < Struct.new(
      :triggers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute region
    #   <p>Specified only if the base tables belong to a different Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The catalog ID where the partition resides.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>(Required) Specifies the name of a database that contains the partition.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>(Required) Specifies the name of a table that contains the partition.</p>
    #   @return [String]
    # @!attribute partition_values
    #   <p>(Required) A list of partition key values.</p>
    #   @return [Array<String>]
    # @!attribute audit_context
    #   <p>A structure containing Lake Formation audit context information.</p>
    #   @return [Types::AuditContext]
    # @!attribute supported_permission_types
    #   <p>(Required) A list of supported permission types. </p>
    #   @return [Array<String>]
    # @!attribute query_session_context
    #   <p>A structure used as a protocol between query engines and Lake Formation or Glue. Contains both a Lake Formation generated authorization identifier and information from the request's authorization context.</p>
    #   @return [Types::QuerySessionContext]
    class GetUnfilteredPartitionMetadataRequest < Struct.new(
      :region,
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      :audit_context,
      :supported_permission_types,
      :query_session_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute partition
    #   <p>A Partition object containing the partition metadata.</p>
    #   @return [Types::Partition]
    # @!attribute authorized_columns
    #   <p>A list of column names that the user has been granted access to.</p>
    #   @return [Array<String>]
    # @!attribute is_registered_with_lake_formation
    #   <p>A Boolean value that indicates whether the partition location is registered 
    #             with Lake Formation.</p>
    #   @return [Boolean]
    class GetUnfilteredPartitionMetadataResponse < Struct.new(
      :partition,
      :authorized_columns,
      :is_registered_with_lake_formation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_registered_with_lake_formation] = false unless options.key?(:is_registered_with_lake_formation)
        super
      end
    end

    # @!attribute region
    #   <p>Specified only if the base tables belong to a different Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside. If none is provided, 
    #             the AWS account ID is used by default. </p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table that contains the partition.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>An expression that filters the partitions to be returned.</p>
    #            <p>The expression uses SQL syntax similar to the SQL <code>WHERE</code> filter clause. The
    #         SQL statement parser <a href="http://jsqlparser.sourceforge.net/home.php">JSQLParser</a> parses the expression. </p>
    #            <p>
    #               <i>Operators</i>: The following are the operators that you can use in the
    #           <code>Expression</code> API call:</p>
    #            <dl>
    #               <dt>=</dt>
    #               <dd>
    #                  <p>Checks whether the values of the two operands are equal; if yes, then the condition becomes
    #               true.</p>
    #                  <p>Example: Assume 'variable a' holds 10 and 'variable b' holds 20. </p>
    #                  <p>(a = b) is not true.</p>
    #               </dd>
    #               <dt>< ></dt>
    #               <dd>
    #                  <p>Checks whether the values of two operands are equal; if the values are not equal,
    #               then the condition becomes true.</p>
    #                  <p>Example: (a < > b) is true.</p>
    #               </dd>
    #               <dt>></dt>
    #               <dd>
    #                  <p>Checks whether the value of the left operand is greater than the value of the right
    #               operand; if yes, then the condition becomes true.</p>
    #                  <p>Example: (a > b) is not true.</p>
    #               </dd>
    #               <dt><</dt>
    #               <dd>
    #                  <p>Checks whether the value of the left operand is less than the value of the right
    #               operand; if yes, then the condition becomes true.</p>
    #                  <p>Example: (a < b) is true.</p>
    #               </dd>
    #               <dt>>=</dt>
    #               <dd>
    #                  <p>Checks whether the value of the left operand is greater than or equal to the value
    #               of the right operand; if yes, then the condition becomes true.</p>
    #                  <p>Example: (a >= b) is not true.</p>
    #               </dd>
    #               <dt><=</dt>
    #               <dd>
    #                  <p>Checks whether the value of the left operand is less than or equal to the value of
    #               the right operand; if yes, then the condition becomes true.</p>
    #                  <p>Example: (a <= b) is true.</p>
    #               </dd>
    #               <dt>AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL</dt>
    #               <dd>
    #                  <p>Logical operators.</p>
    #               </dd>
    #            </dl>
    #            <p>
    #               <i>Supported Partition Key Types</i>: The following are the supported
    #         partition keys.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>string</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>date</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>timestamp</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>int</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>bigint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>long</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tinyint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>smallint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>decimal</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If an type is encountered that is not valid, an exception is thrown. </p>
    #   @return [String]
    # @!attribute audit_context
    #   <p>A structure containing Lake Formation audit context information.</p>
    #   @return [Types::AuditContext]
    # @!attribute supported_permission_types
    #   <p>A list of supported permission types. </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve
    #         these partitions.</p>
    #   @return [String]
    # @!attribute segment
    #   <p>The segment of the table's partitions to scan in this request.</p>
    #   @return [Types::Segment]
    # @!attribute max_results
    #   <p>The maximum number of partitions to return in a single response.</p>
    #   @return [Integer]
    # @!attribute query_session_context
    #   <p>A structure used as a protocol between query engines and Lake Formation or Glue. Contains both a Lake Formation generated authorization identifier and information from the request's authorization context.</p>
    #   @return [Types::QuerySessionContext]
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
      :query_session_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute unfiltered_partitions
    #   <p>A list of requested partitions.</p>
    #   @return [Array<Types::UnfilteredPartition>]
    # @!attribute next_token
    #   <p>A continuation token, if the returned list of partitions does not include the last
    #         one.</p>
    #   @return [String]
    class GetUnfilteredPartitionsMetadataResponse < Struct.new(
      :unfiltered_partitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute region
    #   <p>Specified only if the base tables belong to a different Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The catalog ID where the table resides.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>(Required) Specifies the name of a database that contains the table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>(Required) Specifies the name of a table for which you are requesting metadata.</p>
    #   @return [String]
    # @!attribute audit_context
    #   <p>A structure containing Lake Formation audit context information.</p>
    #   @return [Types::AuditContext]
    # @!attribute supported_permission_types
    #   <p>Indicates the level of filtering a third-party analytical engine is capable of enforcing when calling the <code>GetUnfilteredTableMetadata</code> API operation. Accepted values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COLUMN_PERMISSION</code> - Column permissions ensure that users can access only specific columns in the table. If there are particular columns contain sensitive data, data lake administrators can define column filters that exclude access to specific columns.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CELL_FILTER_PERMISSION</code> - Cell-level filtering combines column filtering (include or exclude columns) and row filter expressions to restrict access to individual elements in the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NESTED_PERMISSION</code> - Nested permissions combines cell-level filtering and nested column filtering to restrict access to columns and/or nested columns in specific rows based on row filter expressions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NESTED_CELL_PERMISSION</code> - Nested cell permissions combines nested permission with nested cell-level filtering. This allows different subsets of nested columns to be restricted based on an array of row filter expressions. </p>
    #               </li>
    #            </ul>
    #            <p>Note: Each of these permission types follows a hierarchical order where each subsequent permission type includes all permission of the previous type.</p>
    #            <p>Important: If you provide a supported permission type that doesn't match the user's level of permissions on the table, then Lake Formation raises an exception. For example, if the third-party engine calling the <code>GetUnfilteredTableMetadata</code> operation can enforce only column-level filtering, and the user has nested cell filtering applied on the table, Lake Formation throws an exception, and will not return unfiltered table metadata and data access credentials.</p>
    #   @return [Array<String>]
    # @!attribute parent_resource_arn
    #   <p>The resource ARN of the view.</p>
    #   @return [String]
    # @!attribute root_resource_arn
    #   <p>The resource ARN of the root view in a chain of nested views.</p>
    #   @return [String]
    # @!attribute supported_dialect
    #   <p>A structure specifying the dialect and dialect version used by the query engine.</p>
    #   @return [Types::SupportedDialect]
    # @!attribute permissions
    #   <p>The Lake Formation data permissions of the caller on the table. Used to authorize the call when no view context is found.</p>
    #   @return [Array<String>]
    # @!attribute query_session_context
    #   <p>A structure used as a protocol between query engines and Lake Formation or Glue. Contains both a Lake Formation generated authorization identifier and information from the request's authorization context.</p>
    #   @return [Types::QuerySessionContext]
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
      :query_session_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table
    #   <p>A Table object containing the table metadata.</p>
    #   @return [Types::Table]
    # @!attribute authorized_columns
    #   <p>A list of column names that the user has been granted access to.</p>
    #   @return [Array<String>]
    # @!attribute is_registered_with_lake_formation
    #   <p>A Boolean value that indicates whether the partition location is registered 
    #             with Lake Formation.</p>
    #   @return [Boolean]
    # @!attribute cell_filters
    #   <p>A list of column row filters.</p>
    #   @return [Array<Types::ColumnRowFilter>]
    # @!attribute query_authorization_id
    #   <p>A cryptographically generated query identifier generated by Glue or Lake Formation.</p>
    #   @return [String]
    # @!attribute is_multi_dialect_view
    #   <p>Specifies whether the view supports the SQL dialects of one or more different query engines and can therefore be read by those engines.</p>
    #   @return [Boolean]
    # @!attribute resource_arn
    #   <p>The resource ARN of the parent resource extracted from the request.</p>
    #   @return [String]
    # @!attribute is_protected
    #   <p>A flag that instructs the engine not to push user-provided operations into the logical plan of the view during query planning. However, if set this flag does not guarantee that the engine will comply. Refer to the engine's documentation to understand the guarantees provided, if any.</p>
    #   @return [Boolean]
    # @!attribute permissions
    #   <p>The Lake Formation data permissions of the caller on the table. Used to authorize the call when no view context is found.</p>
    #   @return [Array<String>]
    # @!attribute row_filter
    #   <p>The filter that applies to the table. For example when applying the filter in SQL, it would go in the <code>WHERE</code> clause and can be evaluated by using an <code>AND</code> operator with any other predicates applied by the user querying the table.</p>
    #   @return [String]
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
      :row_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_registered_with_lake_formation] = false unless options.key?(:is_registered_with_lake_formation)
        options[:is_multi_dialect_view] = false unless options.key?(:is_multi_dialect_view)
        options[:is_protected] = false unless options.key?(:is_protected)
        super
      end
    end

    # @!attribute name
    #   <p>The name of the usage profile to retrieve.</p>
    #   @return [String]
    class GetUsageProfileRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the usage profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the usage profile.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>A <code>ProfileConfiguration</code> object specifying the job and session values for the profile.</p>
    #   @return [Types::ProfileConfiguration]
    # @!attribute created_on
    #   <p>The date and time when the usage profile was created.</p>
    #   @return [Time]
    # @!attribute last_modified_on
    #   <p>The date and time when the usage profile was last modified.</p>
    #   @return [Time]
    class GetUsageProfileResponse < Struct.new(
      :name,
      :description,
      :configuration,
      :created_on,
      :last_modified_on,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the function to be retrieved is located. If none is
    #         provided, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database where the function is located.</p>
    #   @return [String]
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #   @return [String]
    class GetUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_defined_function
    #   <p>The requested function definition.</p>
    #   @return [Types::UserDefinedFunction]
    class GetUserDefinedFunctionResponse < Struct.new(
      :user_defined_function,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the functions to be retrieved are located. If none is
    #         provided, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database where the functions are located. If none is provided, functions from all the
    #         databases across the catalog will be returned.</p>
    #   @return [String]
    # @!attribute pattern
    #   <p>An optional function-name pattern string that filters the function
    #         definitions returned.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of functions to return in one response.</p>
    #   @return [Integer]
    class GetUserDefinedFunctionsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :pattern,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_defined_functions
    #   <p>A list of requested function definitions.</p>
    #   @return [Array<Types::UserDefinedFunction>]
    # @!attribute next_token
    #   <p>A continuation token, if the list of functions returned does
    #         not include the last requested function.</p>
    #   @return [String]
    class GetUserDefinedFunctionsResponse < Struct.new(
      :user_defined_functions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow to retrieve.</p>
    #   @return [String]
    # @!attribute include_graph
    #   <p>Specifies whether to include a graph when returning the workflow resource metadata.</p>
    #   @return [Boolean]
    class GetWorkflowRequest < Struct.new(
      :name,
      :include_graph,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow
    #   <p>The resource metadata for the workflow.</p>
    #   @return [Types::Workflow]
    class GetWorkflowResponse < Struct.new(
      :workflow,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the workflow which was run.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The ID of the workflow run whose run properties should be returned.</p>
    #   @return [String]
    class GetWorkflowRunPropertiesRequest < Struct.new(
      :name,
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute run_properties
    #   <p>The workflow run properties which were set during the specified run.</p>
    #   @return [Hash<String, String>]
    class GetWorkflowRunPropertiesResponse < Struct.new(
      :run_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the workflow being run.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The ID of the workflow run.</p>
    #   @return [String]
    # @!attribute include_graph
    #   <p>Specifies whether to include the workflow graph in response or not.</p>
    #   @return [Boolean]
    class GetWorkflowRunRequest < Struct.new(
      :name,
      :run_id,
      :include_graph,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute run
    #   <p>The requested workflow run metadata.</p>
    #   @return [Types::WorkflowRun]
    class GetWorkflowRunResponse < Struct.new(
      :run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the workflow whose metadata of runs should be returned.</p>
    #   @return [String]
    # @!attribute include_graph
    #   <p>Specifies whether to include the workflow graph in response or not.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>The maximum size of the response.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of workflow runs to be included in the response.</p>
    #   @return [Integer]
    class GetWorkflowRunsRequest < Struct.new(
      :name,
      :include_graph,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute runs
    #   <p>A list of workflow run metadata objects.</p>
    #   @return [Array<Types::WorkflowRun>]
    # @!attribute next_token
    #   <p>A continuation token, if not all requested workflow runs have been returned.</p>
    #   @return [String]
    class GetWorkflowRunsResponse < Struct.new(
      :runs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An encryption operation failed.</p>
    # @!attribute message
    #   <p>The message describing the problem.</p>
    #   @return [String]
    class GlueEncryptionException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure for returning a resource policy.</p>
    # @!attribute policy_in_json
    #   <p>Contains the requested policy document, in JSON format.</p>
    #   @return [String]
    # @!attribute policy_hash
    #   <p>Contains the hash value associated with this policy.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The date and time at which the policy was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The date and time at which the policy was last updated.</p>
    #   @return [Time]
    class GluePolicy < Struct.new(
      :policy_in_json,
      :policy_hash,
      :create_time,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a user-defined schema when a schema cannot be determined by Glue.</p>
    # @!attribute columns
    #   <p>Specifies the column definitions that make up a Glue schema.</p>
    #   @return [Array<Types::GlueStudioSchemaColumn>]
    class GlueSchema < Struct.new(
      :columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a single column in a Glue schema definition.</p>
    # @!attribute name
    #   <p>The name of the column in the Glue Studio schema.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The hive type for this column in the Glue Studio schema.</p>
    #   @return [String]
    # @!attribute glue_studio_type
    #   <p>The data type of the column as defined in Glue Studio.</p>
    #   @return [String]
    class GlueStudioSchemaColumn < Struct.new(
      :name,
      :type,
      :glue_studio_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The database and table in the Glue Data Catalog that is used for input or output data.</p>
    # @!attribute database_name
    #   <p>A database name in the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>A table name in the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>A unique identifier for the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection to the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute additional_options
    #   <p>Additional options for the table. Currently there are two keys supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>pushDownPredicate</code>: to filter on partitions without having to list and read all the files in your dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>catalogPartitionPredicate</code>: to use server-side partition pruning using partition indexes in the Glue Data Catalog.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class GlueTable < Struct.new(
      :database_name,
      :table_name,
      :catalog_id,
      :connection_name,
      :additional_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the data store in the governed Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data store.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The database table to read from.</p>
    #   @return [String]
    # @!attribute partition_predicate
    #   <p>Partitions satisfying this predicate are deleted. Files within the retention period in these partitions are not deleted. Set to <code>""</code> – empty by default.</p>
    #   @return [String]
    # @!attribute additional_options
    #   <p>Specifies additional connection options.</p>
    #   @return [Types::S3SourceAdditionalOptions]
    class GovernedCatalogSource < Struct.new(
      :name,
      :database,
      :table,
      :partition_predicate,
      :additional_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a data target that writes to Amazon S3 using the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute partition_keys
    #   <p>Specifies native partitioning using a sequence of keys.</p>
    #   @return [Array<Array<String>>]
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #   @return [String]
    # @!attribute schema_change_policy
    #   <p>A policy that specifies update behavior for the governed catalog.</p>
    #   @return [Types::CatalogSchemaChangePolicy]
    class GovernedCatalogTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :table,
      :database,
      :schema_change_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A classifier that uses <code>grok</code> patterns.</p>
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #   @return [String]
    # @!attribute classification
    #   <p>An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, and
    #         so on.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that this classifier was registered.</p>
    #   @return [Time]
    # @!attribute last_updated
    #   <p>The time that this classifier was last updated.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>The version of this classifier.</p>
    #   @return [Integer]
    # @!attribute grok_pattern
    #   <p>The grok pattern applied to a data store by this classifier.
    #          For more information, see built-in patterns in <a href="https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html">Writing Custom Classifiers</a>.</p>
    #   @return [String]
    # @!attribute custom_patterns
    #   <p>Optional custom grok patterns defined by this classifier.
    #         For more information, see custom patterns in <a href="https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html">Writing Custom Classifiers</a>.</p>
    #   @return [String]
    class GrokClassifier < Struct.new(
      :name,
      :classification,
      :creation_time,
      :last_updated,
      :version,
      :grok_pattern,
      :custom_patterns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # <p>Specifies a group of filters with a logical operator that determines how the filters are combined to evaluate routing conditions.</p>
    # @!attribute group_name
    #   <p>The name of the filter group.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A list of filter expressions that define the conditions for this group.</p>
    #   @return [Array<Types::FilterExpression>]
    # @!attribute logical_operator
    #   <p>The logical operator used to combine the filters in this group. Determines whether all filters must match (AND) or any filter can match (OR).</p>
    #   @return [String]
    class GroupFilters < Struct.new(
      :group_name,
      :filters,
      :logical_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Apache Hudi data source.</p>
    # @!attribute paths
    #   <p>An array of Amazon S3 location strings for Hudi, each indicating the root folder with which the metadata files for a Hudi table resides. The Hudi folder may be located in a child folder of the root folder.</p>
    #            <p>The crawler will scan all folders underneath a path for a Hudi folder.</p>
    #   @return [Array<String>]
    # @!attribute connection_name
    #   <p>The name of the connection to use to connect to the Hudi target. If your Hudi files are stored in buckets that require VPC authorization, you can set their connection properties here.</p>
    #   @return [String]
    # @!attribute exclusions
    #   <p>A list of glob patterns used to exclude from the crawl.
    #         For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html">Catalog Tables with a Crawler</a>.</p>
    #   @return [Array<String>]
    # @!attribute maximum_traversal_depth
    #   <p>The maximum depth of Amazon S3 paths that the crawler can traverse to discover the Hudi metadata folder in your Amazon S3 path. Used to limit the crawler run time.</p>
    #   @return [Integer]
    class HudiTarget < Struct.new(
      :paths,
      :connection_name,
      :exclusions,
      :maximum_traversal_depth,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an Iceberg compaction optimizer. This configuration defines parameters for optimizing the layout of data files in Iceberg tables.</p>
    # @!attribute strategy
    #   <p>The strategy to use for compaction. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>binpack</code>: Combines small files into larger files, typically targeting sizes over 100MB, while applying any pending deletes. 
    #             This is the recommended compaction strategy for most use cases.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sort</code>: Organizes data based on specified columns which are sorted hierarchically during compaction, improving query 
    #           performance for filtered operations. This strategy is recommended when your queries frequently filter on specific columns. To use this strategy, 
    #           you must first define a sort order in your Iceberg table properties using the <code>sort_order</code> table property.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>z-order</code>: Optimizes data organization by blending multiple attributes into a single scalar value that can be used for sorting, 
    #             allowing efficient querying across multiple dimensions. This strategy is recommended when you need to query data across multiple dimensions 
    #             simultaneously. To use this strategy, you must first define a sort order in your Iceberg table properties using the 
    #             <code>sort_order</code> table property.
    #           </p>
    #               </li>
    #            </ul>
    #            <p>If an input is not provided, the default value 'binpack' will be used.</p>
    #   @return [String]
    # @!attribute min_input_files
    #   <p>The minimum number of data files that must be present in a partition before compaction will actually compact files. This parameter helps control when compaction is triggered, preventing unnecessary compaction operations on partitions with few files. If an input is not provided, the default value 100 will be used.</p>
    #   @return [Integer]
    # @!attribute delete_file_threshold
    #   <p>The minimum number of deletes that must be present in a data file to make it eligible for compaction. This parameter helps optimize compaction by focusing on files that contain a significant number of delete operations, which can improve query performance by removing deleted records. If an input is not provided, the default value 1 will be used.</p>
    #   @return [Integer]
    class IcebergCompactionConfiguration < Struct.new(
      :strategy,
      :min_input_files,
      :delete_file_threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Compaction metrics for Iceberg for the optimizer run.</p>
    # @!attribute number_of_bytes_compacted
    #   <p>The number of bytes removed by the compaction job run.</p>
    #   @return [Integer]
    # @!attribute number_of_files_compacted
    #   <p>The number of files removed by the compaction job run.</p>
    #   @return [Integer]
    # @!attribute dpu_hours
    #   <p>The number of DPU hours consumed by the job.</p>
    #   @return [Float]
    # @!attribute number_of_dpus
    #   <p>The number of DPUs consumed by the job, rounded up to the nearest whole number.</p>
    #   @return [Integer]
    # @!attribute job_duration_in_hour
    #   <p>The duration of the job in hours.</p>
    #   @return [Float]
    class IcebergCompactionMetrics < Struct.new(
      :number_of_bytes_compacted,
      :number_of_files_compacted,
      :dpu_hours,
      :number_of_dpus,
      :job_duration_in_hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_bytes_compacted] = 0 unless options.key?(:number_of_bytes_compacted)
        options[:number_of_files_compacted] = 0 unless options.key?(:number_of_files_compacted)
        options[:dpu_hours] = 0 unless options.key?(:dpu_hours)
        options[:number_of_dpus] = 0 unless options.key?(:number_of_dpus)
        options[:job_duration_in_hour] = 0 unless options.key?(:job_duration_in_hour)
        super
      end
    end

    # <p>A structure that defines an Apache Iceberg metadata table to create in the catalog.</p>
    # @!attribute metadata_operation
    #   <p>A required metadata operation. Can only be set to <code>CREATE</code>.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The table version for the Iceberg table. Defaults to 2.</p>
    #   @return [String]
    # @!attribute create_iceberg_table_input
    #   <p>The configuration parameters required to create a new Iceberg table in the Glue Data Catalog, including table properties 
    #         and metadata specifications.</p>
    #   @return [Types::CreateIcebergTableInput]
    class IcebergInput < Struct.new(
      :metadata_operation,
      :version,
      :create_iceberg_table_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that specifies Iceberg table optimization properties for the catalog, including configurations for compaction, retention, and orphan file deletion operations.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that will be assumed to perform Iceberg table optimization operations.</p>
    #   @return [String]
    # @!attribute compaction
    #   <p>A map of key-value pairs that specify configuration parameters for Iceberg table compaction operations, which optimize the layout of data files to improve query performance.</p>
    #   @return [Hash<String, String>]
    # @!attribute retention
    #   <p>A map of key-value pairs that specify configuration parameters for Iceberg table retention operations, which manage the lifecycle of table snapshots to control storage costs.</p>
    #   @return [Hash<String, String>]
    # @!attribute orphan_file_deletion
    #   <p>A map of key-value pairs that specify configuration parameters for Iceberg orphan file deletion operations, which identify and remove files that are no longer referenced by the table metadata.</p>
    #   @return [Hash<String, String>]
    class IcebergOptimizationProperties < Struct.new(
      :role_arn,
      :compaction,
      :retention,
      :orphan_file_deletion,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the output properties of Iceberg table optimization configuration for your catalog resource in the Glue 
    #       Data Catalog.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that is used to perform Iceberg table optimization operations.</p>
    #   @return [String]
    # @!attribute compaction
    #   <p>A map of key-value pairs that specify configuration parameters for Iceberg table compaction operations, which optimize the layout of data files to improve query performance.</p>
    #   @return [Hash<String, String>]
    # @!attribute retention
    #   <p>A map of key-value pairs that specify configuration parameters for Iceberg table retention operations, which manage the lifecycle of table snapshots to control storage costs.</p>
    #   @return [Hash<String, String>]
    # @!attribute orphan_file_deletion
    #   <p>A map of key-value pairs that specify configuration parameters for Iceberg orphan file deletion operations, which identify and remove files that are no longer referenced by the table metadata.</p>
    #   @return [Hash<String, String>]
    # @!attribute last_updated_time
    #   <p>The timestamp when the Iceberg optimization properties were last updated.</p>
    #   @return [Time]
    class IcebergOptimizationPropertiesOutput < Struct.new(
      :role_arn,
      :compaction,
      :retention,
      :orphan_file_deletion,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an Iceberg orphan file deletion optimizer.</p>
    # @!attribute orphan_file_retention_period_in_days
    #   <p>The number of days that orphan files should be retained before file deletion. If an input is not provided, the default value 3 will be used.</p>
    #   @return [Integer]
    # @!attribute location
    #   <p>Specifies a directory in which to look for files (defaults to the table's location). You may choose a sub-directory rather than the top-level table location.</p>
    #   @return [String]
    # @!attribute run_rate_in_hours
    #   <p>The interval in hours between orphan file deletion job runs. This parameter controls how frequently the orphan file deletion optimizer will run to clean up orphan files. The value must be between 3 and 168 hours (7 days). If an input is not provided, the default value 24 will be used.</p>
    #   @return [Integer]
    class IcebergOrphanFileDeletionConfiguration < Struct.new(
      :orphan_file_retention_period_in_days,
      :location,
      :run_rate_in_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Orphan file deletion metrics for Iceberg for the optimizer run.</p>
    # @!attribute number_of_orphan_files_deleted
    #   <p>The number of orphan files deleted by the orphan file deletion job run.</p>
    #   @return [Integer]
    # @!attribute dpu_hours
    #   <p>The number of DPU hours consumed by the job.</p>
    #   @return [Float]
    # @!attribute number_of_dpus
    #   <p>The number of DPUs consumed by the job, rounded up to the nearest whole number.</p>
    #   @return [Integer]
    # @!attribute job_duration_in_hour
    #   <p>The duration of the job in hours.</p>
    #   @return [Float]
    class IcebergOrphanFileDeletionMetrics < Struct.new(
      :number_of_orphan_files_deleted,
      :dpu_hours,
      :number_of_dpus,
      :job_duration_in_hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_orphan_files_deleted] = 0 unless options.key?(:number_of_orphan_files_deleted)
        options[:dpu_hours] = 0 unless options.key?(:dpu_hours)
        options[:number_of_dpus] = 0 unless options.key?(:number_of_dpus)
        options[:job_duration_in_hour] = 0 unless options.key?(:job_duration_in_hour)
        super
      end
    end

    # <p>Defines a single partition field within an Iceberg partition specification, including the source field, transformation function, partition name, 
    #       and unique identifier.</p>
    # @!attribute source_id
    #   <p>The identifier of the source field from the table schema that this partition field is based on.</p>
    #   @return [Integer]
    # @!attribute transform
    #   <p>The transformation function applied to the source field to create the partition, such as identity, bucket, truncate, year, month, day, or hour.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the partition field as it will appear in the partitioned table structure.</p>
    #   @return [String]
    # @!attribute field_id
    #   <p>The unique identifier assigned to this partition field within the Iceberg table's partition specification.</p>
    #   @return [Integer]
    class IcebergPartitionField < Struct.new(
      :source_id,
      :transform,
      :name,
      :field_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:source_id] = 0 unless options.key?(:source_id)
        options[:field_id] = 0 unless options.key?(:field_id)
        super
      end
    end

    # <p>Defines the partitioning specification for an Iceberg table, determining how table data will be organized and partitioned for optimal query performance.</p>
    # @!attribute fields
    #   <p>The list of partition fields that define how the table data should be partitioned, including source fields and their transformations.</p>
    #   @return [Array<Types::IcebergPartitionField>]
    # @!attribute spec_id
    #   <p>The unique identifier for this partition specification within the Iceberg table's metadata history.</p>
    #   @return [Integer]
    class IcebergPartitionSpec < Struct.new(
      :fields,
      :spec_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:spec_id] = 0 unless options.key?(:spec_id)
        super
      end
    end

    # <p>The configuration for an Iceberg snapshot retention optimizer.</p>
    # @!attribute snapshot_retention_period_in_days
    #   <p>The number of days to retain the Iceberg snapshots. If an input is not provided, the corresponding Iceberg table configuration field will be used or if not present, the default value 5 will be used.</p>
    #   @return [Integer]
    # @!attribute number_of_snapshots_to_retain
    #   <p>The number of Iceberg snapshots to retain within the retention period. If an input is not provided, the corresponding Iceberg table configuration field will be used or if not present, the default value 1 will be used.</p>
    #   @return [Integer]
    # @!attribute clean_expired_files
    #   <p>If set to false, snapshots are only deleted from table metadata, and the underlying data and metadata files are not deleted.</p>
    #   @return [Boolean]
    # @!attribute run_rate_in_hours
    #   <p>The interval in hours between retention job runs. This parameter controls how frequently the retention optimizer will run to clean up expired snapshots. The value must be between 3 and 168 hours (7 days). If an input is not provided, the default value 24 will be used.</p>
    #   @return [Integer]
    class IcebergRetentionConfiguration < Struct.new(
      :snapshot_retention_period_in_days,
      :number_of_snapshots_to_retain,
      :clean_expired_files,
      :run_rate_in_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Snapshot retention metrics for Iceberg for the optimizer run.</p>
    # @!attribute number_of_data_files_deleted
    #   <p>The number of data files deleted by the retention job run.</p>
    #   @return [Integer]
    # @!attribute number_of_manifest_files_deleted
    #   <p>The number of manifest files deleted by the retention job run.</p>
    #   @return [Integer]
    # @!attribute number_of_manifest_lists_deleted
    #   <p>The number of manifest lists deleted by the retention job run.</p>
    #   @return [Integer]
    # @!attribute dpu_hours
    #   <p>The number of DPU hours consumed by the job.</p>
    #   @return [Float]
    # @!attribute number_of_dpus
    #   <p>The number of DPUs consumed by the job, rounded up to the nearest whole number.</p>
    #   @return [Integer]
    # @!attribute job_duration_in_hour
    #   <p>The duration of the job in hours.</p>
    #   @return [Float]
    class IcebergRetentionMetrics < Struct.new(
      :number_of_data_files_deleted,
      :number_of_manifest_files_deleted,
      :number_of_manifest_lists_deleted,
      :dpu_hours,
      :number_of_dpus,
      :job_duration_in_hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_data_files_deleted] = 0 unless options.key?(:number_of_data_files_deleted)
        options[:number_of_manifest_files_deleted] = 0 unless options.key?(:number_of_manifest_files_deleted)
        options[:number_of_manifest_lists_deleted] = 0 unless options.key?(:number_of_manifest_lists_deleted)
        options[:dpu_hours] = 0 unless options.key?(:dpu_hours)
        options[:number_of_dpus] = 0 unless options.key?(:number_of_dpus)
        options[:job_duration_in_hour] = 0 unless options.key?(:job_duration_in_hour)
        super
      end
    end

    # <p>Defines the schema structure for an Iceberg table, including field definitions, data types, and schema metadata.</p>
    # @!attribute schema_id
    #   <p>The unique identifier for this schema version within the Iceberg table's schema evolution history.</p>
    #   @return [Integer]
    # @!attribute identifier_field_ids
    #   <p>The list of field identifiers that uniquely identify records in the table, used for row-level operations and deduplication.</p>
    #   @return [Array<Integer>]
    # @!attribute type
    #   <p>The root type of the schema structure, typically "struct" for Iceberg table schemas.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The list of field definitions that make up the table schema, including field names, types, and metadata.</p>
    #   @return [Array<Types::IcebergStructField>]
    class IcebergSchema < Struct.new(
      :schema_id,
      :identifier_field_ids,
      :type,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:schema_id] = 0 unless options.key?(:schema_id)
        super
      end
    end

    # <p>Defines a single field within an Iceberg sort order specification, including the source field, transformation, sort direction, and null value ordering.</p>
    # @!attribute source_id
    #   <p>The identifier of the source field from the table schema that this sort field is based on.</p>
    #   @return [Integer]
    # @!attribute transform
    #   <p>The transformation function applied to the source field before sorting, such as identity, bucket, or truncate.</p>
    #   @return [String]
    # @!attribute direction
    #   <p>The sort direction for this field, either ascending or descending.</p>
    #   @return [String]
    # @!attribute null_order
    #   <p>The ordering behavior for null values in this field, specifying whether nulls should appear first or last in the sort order.</p>
    #   @return [String]
    class IcebergSortField < Struct.new(
      :source_id,
      :transform,
      :direction,
      :null_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:source_id] = 0 unless options.key?(:source_id)
        super
      end
    end

    # <p>Defines the sort order specification for an Iceberg table, determining how data should be ordered within partitions to 
    #       optimize query performance.</p>
    # @!attribute order_id
    #   <p>The unique identifier for this sort order specification within the Iceberg table's metadata.</p>
    #   @return [Integer]
    # @!attribute fields
    #   <p>The list of fields and their sort directions that define the ordering criteria for the Iceberg table data.</p>
    #   @return [Array<Types::IcebergSortField>]
    class IcebergSortOrder < Struct.new(
      :order_id,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:order_id] = 0 unless options.key?(:order_id)
        super
      end
    end

    # <p>Defines a single field within an Iceberg table schema, including its identifier, name, data type, nullability, and documentation.</p>
    # @!attribute id
    #   <p>The unique identifier assigned to this field within the Iceberg table schema, used for schema evolution and field tracking.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the field as it appears in the table schema and query operations.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type definition for this field, specifying the structure and format of the data it contains.</p>
    #   @return [JSON]
    # @!attribute required
    #   <p>Indicates whether this field is required (non-nullable) or optional (nullable) in the table schema.</p>
    #   @return [Boolean]
    # @!attribute doc
    #   <p>Optional documentation or description text that provides additional context about the purpose and usage of this field.</p>
    #   @return [String]
    class IcebergStructField < Struct.new(
      :id,
      :name,
      :type,
      :required,
      :doc,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:id] = 0 unless options.key?(:id)
        options[:required] = false unless options.key?(:required)
        super
      end
    end

    # <p>Defines a complete set of updates to be applied to an Iceberg table, including schema changes, partitioning modifications, sort order 
    #       adjustments, location updates, and property changes.</p>
    # @!attribute schema
    #   <p>The updated schema definition for the Iceberg table, specifying any changes to field structure, data types, or schema metadata.</p>
    #   @return [Types::IcebergSchema]
    # @!attribute partition_spec
    #   <p>The updated partitioning specification that defines how the table data should be reorganized and partitioned.</p>
    #   @return [Types::IcebergPartitionSpec]
    # @!attribute sort_order
    #   <p>The updated sort order specification that defines how data should be ordered within partitions for optimal query performance.</p>
    #   @return [Types::IcebergSortOrder]
    # @!attribute location
    #   <p>The updated S3 location where the Iceberg table data will be stored.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>Updated key-value pairs of table properties and configuration settings for the Iceberg table.</p>
    #   @return [Hash<String, String>]
    class IcebergTableUpdate < Struct.new(
      :schema,
      :partition_spec,
      :sort_order,
      :location,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Apache Iceberg data source where Iceberg tables are stored in Amazon S3.</p>
    # @!attribute paths
    #   <p>One or more Amazon S3 paths that contains Iceberg metadata folders as <code>s3://bucket/prefix</code>.</p>
    #   @return [Array<String>]
    # @!attribute connection_name
    #   <p>The name of the connection to use to connect to the Iceberg target.</p>
    #   @return [String]
    # @!attribute exclusions
    #   <p>A list of glob patterns used to exclude from the crawl.
    #         For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html">Catalog Tables with a Crawler</a>.</p>
    #   @return [Array<String>]
    # @!attribute maximum_traversal_depth
    #   <p>The maximum depth of Amazon S3 paths that the crawler can traverse to discover the Iceberg metadata folder in your Amazon S3 path. Used to limit the crawler run time.</p>
    #   @return [Integer]
    class IcebergTarget < Struct.new(
      :paths,
      :connection_name,
      :exclusions,
      :maximum_traversal_depth,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The same unique identifier was associated with two different records.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class IdempotentParameterMismatchException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The blueprint is in an invalid state to perform a requested operation.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class IllegalBlueprintStateException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The session is in an invalid state to perform a requested operation.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class IllegalSessionStateException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The workflow is in an invalid state to perform a requested operation.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class IllegalWorkflowStateException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the catalog to import. Currently, this should be the Amazon Web Services account ID.</p>
    #   @return [String]
    class ImportCatalogToGlueRequest < Struct.new(
      :catalog_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ImportCatalogToGlueResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies configuration properties for an importing labels task run.</p>
    # @!attribute input_s3_path
    #   <p>The Amazon Simple Storage Service (Amazon S3) path from where you will import the
    #         labels.</p>
    #   @return [String]
    # @!attribute replace
    #   <p>Indicates whether to overwrite your existing labels.</p>
    #   @return [Boolean]
    class ImportLabelsTaskRunProperties < Struct.new(
      :input_s3_path,
      :replace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:replace] = false unless options.key?(:replace)
        super
      end
    end

    # <p>A structure for an integration that writes data into a resource.</p>
    # @!attribute source_arn
    #   <p>The ARN of the source resource for the integration.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The ARN of the target resource for the integration.</p>
    #   @return [String]
    # @!attribute integration_arn
    #   <p>The ARN of the zero-ETL integration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The possible statuses are:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATING: The integration is being created.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE: The integration creation succeeds.</p>
    #               </li>
    #               <li>
    #                  <p>MODIFYING: The integration is being modified.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED: The integration creation fails. </p>
    #               </li>
    #               <li>
    #                  <p>DELETING: The integration is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>SYNCING: The integration is synchronizing.</p>
    #               </li>
    #               <li>
    #                  <p>NEEDS_ATTENTION: The integration needs attention, such as synchronization.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time that the integration was created, in UTC.</p>
    #   @return [Time]
    # @!attribute integration_config
    #   <p>Properties associated with the integration.</p>
    #   @return [Types::IntegrationConfig]
    # @!attribute errors
    #   <p>A list of errors associated with the integration.</p>
    #   @return [Array<Types::IntegrationError>]
    class InboundIntegration < Struct.new(
      :source_arn,
      :target_arn,
      :integration_arn,
      :status,
      :create_time,
      :integration_config,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a zero-ETL integration.</p>
    # @!attribute source_arn
    #   <p>The ARN for the source of the integration.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The ARN for the target of the integration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the integration.</p>
    #   @return [String]
    # @!attribute integration_name
    #   <p>A unique name for the integration.</p>
    #   @return [String]
    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) for the integration.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ARN of a KMS key used for encrypting the channel.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>An optional set of non-secret key–value pairs that contains additional contextual information for encryption. This can only be provided if <code>KMSKeyId</code> is provided.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>Metadata assigned to the resource consisting of a list of key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute status
    #   <p>The possible statuses are:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATING: The integration is being created.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE: The integration creation succeeds.</p>
    #               </li>
    #               <li>
    #                  <p>MODIFYING: The integration is being modified.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED: The integration creation fails. </p>
    #               </li>
    #               <li>
    #                  <p>DELETING: The integration is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>SYNCING: The integration is synchronizing.</p>
    #               </li>
    #               <li>
    #                  <p>NEEDS_ATTENTION: The integration needs attention, such as synchronization.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time that the integration was created, in UTC.</p>
    #   @return [Time]
    # @!attribute integration_config
    #   <p>Properties associated with the integration.</p>
    #   @return [Types::IntegrationConfig]
    # @!attribute errors
    #   <p>A list of errors associated with the integration.</p>
    #   @return [Array<Types::IntegrationError>]
    # @!attribute data_filter
    #   <p>Selects source tables for the integration using Maxwell filter syntax.</p>
    #   @return [String]
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
      :data_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Properties associated with the integration.</p>
    # @!attribute refresh_interval
    #   <p>Specifies the frequency at which CDC (Change Data Capture) pulls or incremental loads should occur. This parameter provides flexibility to align 
    #         the refresh rate with your specific data update patterns, system load considerations, and performance optimization goals. Time increment can be set from  
    #       15 minutes to 8640 minutes (six days). Currently supports creation of <code>RefreshInterval</code> only.</p>
    #   @return [String]
    # @!attribute source_properties
    #   <p>
    #         A collection of key-value pairs that specify additional properties for the integration source. These properties provide configuration options that 
    #         can be used to customize the behavior of the ODB source during data integration operations.
    #       </p>
    #   @return [Hash<String, String>]
    # @!attribute continuous_sync
    #   <p>Enables continuous synchronization for on-demand data extractions from SaaS applications to Amazon Web Services data services like Amazon Redshift 
    #         and Amazon S3.</p>
    #   @return [Boolean]
    class IntegrationConfig < Struct.new(
      :refresh_interval,
      :source_properties,
      :continuous_sync,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation conflicts with another operation.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class IntegrationConflictOperationFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error associated with a zero-ETL integration.</p>
    # @!attribute error_code
    #   <p>The code associated with this error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class IntegrationError < Struct.new(
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that can be used when invoking a <code>DescribeIntegrations</code> request.</p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of filter values.</p>
    #   @return [Array<String>]
    class IntegrationFilter < Struct.new(
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified integration could not be found.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class IntegrationNotFoundFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that describes how data is partitioned on the target.</p>
    # @!attribute field_name
    #   <p>The field name used to partition data on the target. Avoid using columns that have unique values for each row (for example, `LastModifiedTimestamp`, 
    #         `SystemModTimeStamp`) as the partition column. These columns are not suitable for partitioning because they create a large number of small partitions, 
    #         which can lead to performance issues.</p>
    #   @return [String]
    # @!attribute function_spec
    #   <p>Specifies the function used to partition data on the target. The accepted values for this parameter are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>identity</code> - Uses source values directly without transformation</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>year</code> - Extracts the year from timestamp values (e.g., 2023)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>month</code> - Extracts the month from timestamp values (e.g., 2023-01)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>day</code> - Extracts the day from timestamp values (e.g., 2023-01-15)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>hour</code> - Extracts the hour from timestamp values (e.g., 2023-01-15-14)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute conversion_spec
    #   <p>Specifies the timestamp format of the source data. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>epoch_sec</code> - Unix epoch timestamp in seconds</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>epoch_milli</code> - Unix epoch timestamp in milliseconds</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>iso</code> - ISO 8601 formatted timestamp</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #           Only specify <code>ConversionSpec</code> when using timestamp-based partition functions (year, month, day, or hour). 
    #           Glue Zero-ETL uses this parameter to correctly transform source data into timestamp format before partitioning.
    #         </p>
    #               <p>
    #           Do not use high-cardinality columns with the <code>identity</code> partition function. High-cardinality columns include:
    #         </p>
    #               <ul>
    #                  <li>
    #                     <p>Primary keys</p>
    #                  </li>
    #                  <li>
    #                     <p>Timestamp fields (such as <code>LastModifiedTimestamp</code>, <code>CreatedDate</code>)</p>
    #                  </li>
    #                  <li>
    #                     <p>System-generated timestamps</p>
    #                  </li>
    #               </ul>
    #               <p>
    #           Using high-cardinality columns with identity partitioning creates many small partitions, which can significantly degrade ingestion performance.
    #         </p>
    #            </note>
    #   @return [String]
    class IntegrationPartition < Struct.new(
      :field_name,
      :function_spec,
      :conversion_spec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data processed through your integration exceeded your quota.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class IntegrationQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal service error occurred.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class InternalServiceException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input provided was not valid.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    # @!attribute from_federation_source
    #   <p>Indicates whether or not the exception relates to a federated source.</p>
    #   @return [Boolean]
    class InvalidInputException < Struct.new(
      :message,
      :from_federation_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The integration is in an invalid state.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class InvalidIntegrationStateFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error that indicates your data is in an invalid state.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class InvalidStateException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional connection options for the connector.</p>
    # @!attribute filter_predicate
    #   <p>Extra condition clause to filter data from source. For example:</p>
    #            <p>
    #               <code>BillingCity='Mountain View'</code>
    #            </p>
    #            <p>When using a query instead of a table name, you should validate that the query works with the specified <code>filterPredicate</code>.</p>
    #   @return [String]
    # @!attribute partition_column
    #   <p>The name of an integer column that is used for partitioning. This option works only when it's included with <code>lowerBound</code>, <code>upperBound</code>, and <code>numPartitions</code>. This option works the same way as in the Spark SQL JDBC reader.</p>
    #   @return [String]
    # @!attribute lower_bound
    #   <p>The minimum value of <code>partitionColumn</code> that is used to decide partition stride.</p>
    #   @return [Integer]
    # @!attribute upper_bound
    #   <p>The maximum value of <code>partitionColumn</code> that is used to decide partition stride.</p>
    #   @return [Integer]
    # @!attribute num_partitions
    #   <p>The number of partitions. This value, along with <code>lowerBound</code> (inclusive) and <code>upperBound</code> (exclusive), form partition strides for generated <code>WHERE</code> clause expressions that are used to split the <code>partitionColumn</code>.</p>
    #   @return [Integer]
    # @!attribute job_bookmark_keys
    #   <p>The name of the job bookmark keys on which to sort.</p>
    #   @return [Array<String>]
    # @!attribute job_bookmark_keys_sort_order
    #   <p>Specifies an ascending or descending sort order.</p>
    #   @return [String]
    # @!attribute data_type_mapping
    #   <p>Custom data type mapping that builds a mapping from a JDBC data type to an Glue data type. For example, the option <code>"dataTypeMapping":{"FLOAT":"STRING"}</code> maps data fields of JDBC type <code>FLOAT</code> into the Java <code>String</code> type by calling the <code>ResultSet.getString()</code> method of the driver, and uses it to build the Glue record. The <code>ResultSet</code> object is implemented by each driver, so the behavior is specific to the driver you use. Refer to the documentation for your JDBC driver to understand how the driver performs the conversions.</p>
    #   @return [Hash<String, String>]
    class JDBCConnectorOptions < Struct.new(
      :filter_predicate,
      :partition_column,
      :lower_bound,
      :upper_bound,
      :num_partitions,
      :job_bookmark_keys,
      :job_bookmark_keys_sort_order,
      :data_type_mapping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a connector to a JDBC data source.</p>
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection that is associated with the connector.</p>
    #   @return [String]
    # @!attribute connector_name
    #   <p>The name of a connector that assists with accessing the data store in Glue Studio.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection, such as marketplace.jdbc or custom.jdbc, designating a connection to a JDBC data store.</p>
    #   @return [String]
    # @!attribute additional_options
    #   <p>Additional connection options for the connector.</p>
    #   @return [Types::JDBCConnectorOptions]
    # @!attribute connection_table
    #   <p>The name of the table in the data source.</p>
    #   @return [String]
    # @!attribute query
    #   <p>The table or SQL query to get the data from. You can specify either <code>ConnectionTable</code> or <code>query</code>, but not both.</p>
    #   @return [String]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the custom JDBC source.</p>
    #   @return [Array<Types::GlueSchema>]
    class JDBCConnectorSource < Struct.new(
      :name,
      :connection_name,
      :connector_name,
      :connection_type,
      :additional_options,
      :connection_table,
      :query,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a data target that writes to Amazon S3 in Apache Parquet columnar storage.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute connection_name
    #   <p>The name of the connection that is associated with the connector.</p>
    #   @return [String]
    # @!attribute connection_table
    #   <p>The name of the table in the data target.</p>
    #   @return [String]
    # @!attribute connector_name
    #   <p>The name of a connector that will be used.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection, such as marketplace.jdbc or custom.jdbc, designating a connection to a JDBC data target.</p>
    #   @return [String]
    # @!attribute additional_options
    #   <p>Additional connection options for the connector.</p>
    #   @return [Hash<String, String>]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the JDBC target.</p>
    #   @return [Array<Types::GlueSchema>]
    class JDBCConnectorTarget < Struct.new(
      :name,
      :inputs,
      :connection_name,
      :connection_table,
      :connector_name,
      :connection_type,
      :additional_options,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a JDBC data store to crawl.</p>
    # @!attribute connection_name
    #   <p>The name of the connection to use to connect to the JDBC target.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path of the JDBC target.</p>
    #   @return [String]
    # @!attribute exclusions
    #   <p>A list of glob patterns used to exclude from the crawl.
    #         For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html">Catalog Tables with a Crawler</a>.</p>
    #   @return [Array<String>]
    # @!attribute enable_additional_metadata
    #   <p>Specify a value of <code>RAWTYPES</code> or <code>COMMENTS</code> to enable additional metadata in table responses. <code>RAWTYPES</code> provides the native-level datatype. <code>COMMENTS</code> provides comments associated with a column or table in the database.</p>
    #            <p>If you do not need additional metadata, keep the field empty.</p>
    #   @return [Array<String>]
    class JdbcTarget < Struct.new(
      :connection_name,
      :path,
      :exclusions,
      :enable_additional_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a job definition.</p>
    # @!attribute name
    #   <p>The name you assign to this job definition.</p>
    #   @return [String]
    # @!attribute job_mode
    #   <p>A mode that describes how a job was created. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SCRIPT</code> - The job was created using the Glue Studio script editor.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VISUAL</code> - The job was created using the Glue Studio visual editor.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTEBOOK</code> - The job was created using an interactive sessions notebook.</p>
    #               </li>
    #            </ul>
    #            <p>When the <code>JobMode</code> field is missing or null, <code>SCRIPT</code> is assigned as the default value.</p>
    #   @return [String]
    # @!attribute job_run_queuing_enabled
    #   <p>Specifies whether job run queuing is enabled for the job runs for this job.</p>
    #            <p>A value of true means job run queuing is enabled for the job runs. If false or not populated, the job runs will not be considered for queueing.</p>
    #            <p>If this field does not match the value set in the job run, then the value from the job run field will be used.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>A description of the job.</p>
    #   @return [String]
    # @!attribute log_uri
    #   <p>This field is reserved for future use.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role associated with this job.</p>
    #   @return [String]
    # @!attribute created_on
    #   <p>The time and date that this job definition was created.</p>
    #   @return [Time]
    # @!attribute last_modified_on
    #   <p>The last point in time when this job definition was modified.</p>
    #   @return [Time]
    # @!attribute execution_property
    #   <p>An <code>ExecutionProperty</code> specifying the maximum number of concurrent runs allowed
    #         for this job.</p>
    #   @return [Types::ExecutionProperty]
    # @!attribute command
    #   <p>The <code>JobCommand</code> that runs this job.</p>
    #   @return [Types::JobCommand]
    # @!attribute default_arguments
    #   <p>The default arguments for every run of this job, specified as name-value pairs.</p>
    #            <p>You can specify arguments here that your own job-execution script
    #         consumes, as well as arguments that Glue itself consumes.</p>
    #            <p>Job arguments may be logged. Do not pass plaintext secrets as arguments. Retrieve secrets
    #         from a Glue Connection, Secrets Manager or other secret management
    #         mechanism if you intend to keep them within the Job. </p>
    #            <p>For information about how to specify and consume your own Job arguments, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling Glue APIs in Python</a> topic in the developer guide.</p>
    #            <p>For information about the arguments you can provide to this field when configuring Spark jobs,
    #        see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by Glue</a> topic in the developer guide.</p>
    #            <p>For information about the arguments you can provide to this field when configuring Ray
    #         jobs, see <a href="https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html">Using
    #         job parameters in Ray jobs</a> in the developer guide.</p>
    #   @return [Hash<String, String>]
    # @!attribute non_overridable_arguments
    #   <p>Arguments for this job that are not overridden when providing job arguments
    #         in a job run, specified as name-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute connections
    #   <p>The connections used for this job.</p>
    #   @return [Types::ConnectionsList]
    # @!attribute max_retries
    #   <p>The maximum number of times to retry this job after a JobRun fails.</p>
    #   @return [Integer]
    # @!attribute allocated_capacity
    #   <p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p>
    #            <p>The number of Glue data processing units (DPUs) allocated to runs of this job. You can
    #         allocate a minimum of 2 DPUs; the default is 10. A DPU is a relative measure of processing
    #         power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information,
    #         see the <a href="https://aws.amazon.com/glue/pricing/">Glue pricing
    #         page</a>.</p>
    #            <p></p>
    #   @deprecated
    #     This property is deprecated, use MaxCapacity instead.
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The job timeout in minutes.  This is the maximum time that a job run
    #         can consume resources before it is terminated and enters <code>TIMEOUT</code>
    #         status.</p>
    #            <p>Jobs must have timeout values less than 7 days or 10080 minutes. Otherwise, the jobs will throw an exception.</p>
    #            <p>When the value is left blank, the timeout is defaulted to 2880 minutes.</p>
    #            <p>Any existing Glue jobs that had a timeout value greater than 7 days will be defaulted to 7 days. For instance if you have specified a timeout of 20 days for a batch job, it will be stopped on the 7th day.</p>
    #            <p>For streaming jobs, if you have set up a maintenance window, it will be restarted during the maintenance window after 7 days.</p>
    #   @return [Integer]
    # @!attribute max_capacity
    #   <p>For Glue version 1.0 or earlier jobs, using the standard worker type, the number of
    #         Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is
    #         a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB
    #         of memory. For more information, see the <a href="https://aws.amazon.com/glue/pricing/">
    #           Glue pricing page</a>.</p>
    #            <p>For Glue version 2.0 or later jobs, you cannot specify a <code>Maximum capacity</code>.
    #         Instead, you should specify a <code>Worker type</code> and the <code>Number of workers</code>.</p>
    #            <p>Do not set <code>MaxCapacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>
    #            <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
    #         running a Python shell job, an Apache Spark ETL job, or an Apache Spark streaming ETL
    #         job:</p>
    #            <ul>
    #               <li>
    #                  <p>When you specify a Python shell job (<code>JobCommand.Name</code>="pythonshell"), you can
    #             allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
    #               </li>
    #               <li>
    #                  <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>="glueetl") or Apache 
    #               Spark streaming ETL job (<code>JobCommand.Name</code>="gluestreaming"), you can allocate from 2 to 100 DPUs. 
    #               The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
    #               </li>
    #            </ul>
    #   @return [Float]
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when a job runs.</p>
    #            <p>Glue provides multiple worker types to accommodate different workload requirements:</p>
    #            <p>G Worker Types (General-purpose compute workers):</p>
    #            <ul>
    #               <li>
    #                  <p>G.1X: 1 DPU (4 vCPUs, 16 GB memory, 94GB disk)</p>
    #               </li>
    #               <li>
    #                  <p>G.2X: 2 DPU (8 vCPUs, 32 GB memory, 138GB disk)</p>
    #               </li>
    #               <li>
    #                  <p>G.4X: 4 DPU (16 vCPUs, 64 GB memory, 256GB disk)</p>
    #               </li>
    #               <li>
    #                  <p>G.8X: 8 DPU (32 vCPUs, 128 GB memory, 512GB disk)</p>
    #               </li>
    #               <li>
    #                  <p>G.12X: 12 DPU (48 vCPUs, 192 GB memory, 768GB disk)</p>
    #               </li>
    #               <li>
    #                  <p>G.16X: 16 DPU (64 vCPUs, 256 GB memory, 1024GB disk)</p>
    #               </li>
    #            </ul>
    #            <p>R Worker Types (Memory-optimized workers):</p>
    #            <ul>
    #               <li>
    #                  <p>R.1X: 1 M-DPU (4 vCPUs, 32 GB memory)</p>
    #               </li>
    #               <li>
    #                  <p>R.2X: 2 M-DPU (8 vCPUs, 64 GB memory)</p>
    #               </li>
    #               <li>
    #                  <p>R.4X: 4 M-DPU (16 vCPUs, 128 GB memory)</p>
    #               </li>
    #               <li>
    #                  <p>R.8X: 8 M-DPU (32 vCPUs, 256 GB memory)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>
    #   @return [Integer]
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this
    #         job.</p>
    #   @return [String]
    # @!attribute notification_property
    #   <p>Specifies configuration properties of a job notification.</p>
    #   @return [Types::NotificationProperty]
    # @!attribute glue_version
    #   <p>In Spark jobs, <code>GlueVersion</code> determines the versions of Apache Spark and Python
    #         that Glue available in a job. The Python version indicates the version
    #         supported for jobs of type Spark. </p>
    #            <p>Ray jobs should set <code>GlueVersion</code> to <code>4.0</code> or greater. However,
    #       the versions of Ray, Python and additional libraries available in your Ray job are determined
    #       by the <code>Runtime</code> parameter of the Job command.</p>
    #            <p>For more information about the available Glue versions and corresponding
    #         Spark and Python versions, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue version</a> in the developer
    #         guide.</p>
    #            <p>Jobs that are created without specifying a Glue version default to Glue 0.9.</p>
    #   @return [String]
    # @!attribute code_gen_configuration_nodes
    #   <p>The representation of a directed acyclic graph on which both the Glue Studio visual component and Glue Studio code generation is based.</p>
    #   @return [Hash<String, Types::CodeGenConfigurationNode>]
    # @!attribute execution_class
    #   <p>Indicates whether the job is run with a standard or flexible execution class. The standard execution class is ideal for time-sensitive workloads that require fast job startup and dedicated resources.</p>
    #            <p>The flexible execution class is appropriate for time-insensitive jobs whose start and completion times may vary. </p>
    #            <p>Only jobs with Glue version 3.0 and above and command type <code>glueetl</code> will be allowed to set <code>ExecutionClass</code> to <code>FLEX</code>. The flexible execution class is available for Spark jobs.</p>
    #   @return [String]
    # @!attribute source_control_details
    #   <p>The details for a source control configuration for a job, allowing synchronization of job artifacts to or from a remote repository.</p>
    #   @return [Types::SourceControlDetails]
    # @!attribute maintenance_window
    #   <p>This field specifies a day of the week and hour for a maintenance window for streaming jobs. Glue periodically performs maintenance activities. During these maintenance windows, Glue will need to restart your streaming jobs.</p>
    #            <p>Glue will restart the job within 3 hours of the specified maintenance window. For instance, if you set up the maintenance window for Monday at 10:00AM GMT, your jobs will be restarted between 10:00AM GMT to 1:00PM GMT.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>The name of an Glue usage profile associated with the job.</p>
    #   @return [String]
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
      :profile_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_retries] = 0 unless options.key?(:max_retries)
        options[:allocated_capacity] = 0 unless options.key?(:allocated_capacity)
        super
      end
    end

    # <p>Defines a point that a job can resume processing.</p>
    # @!attribute job_name
    #   <p>The name of the job in question.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the job.</p>
    #   @return [Integer]
    # @!attribute run
    #   <p>The run ID number.</p>
    #   @return [Integer]
    # @!attribute attempt
    #   <p>The attempt ID number.</p>
    #   @return [Integer]
    # @!attribute previous_run_id
    #   <p>The unique run identifier associated with the previous job run.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The run ID number.</p>
    #   @return [String]
    # @!attribute job_bookmark
    #   <p>The bookmark itself.</p>
    #   @return [String]
    class JobBookmarkEntry < Struct.new(
      :job_name,
      :version,
      :run,
      :attempt,
      :previous_run_id,
      :run_id,
      :job_bookmark,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        options[:run] = 0 unless options.key?(:run)
        options[:attempt] = 0 unless options.key?(:attempt)
        super
      end
    end

    # <p>Specifies how job bookmark data should be encrypted.</p>
    # @!attribute job_bookmarks_encryption_mode
    #   <p>The encryption mode to use for job bookmarks data.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.</p>
    #   @return [String]
    class JobBookmarksEncryption < Struct.new(
      :job_bookmarks_encryption_mode,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies code that runs when a job is run.</p>
    # @!attribute name
    #   <p>The name of the job command. For an Apache Spark ETL job, this must be
    #         <code>glueetl</code>. For a Python shell job, it must be <code>pythonshell</code>. 
    #         For an Apache Spark streaming ETL job, this must be <code>gluestreaming</code>. For a Ray job,
    #         this must be <code>glueray</code>.</p>
    #   @return [String]
    # @!attribute script_location
    #   <p>Specifies the Amazon Simple Storage Service (Amazon S3) path to a script that runs a
    #         job.</p>
    #   @return [String]
    # @!attribute python_version
    #   <p>The Python version being used to run a Python shell job. Allowed values are 2 or 3.</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>In Ray jobs, Runtime is used to specify the versions of Ray, Python and additional
    #         libraries available in your environment. This field is not used in other job types. For
    #         supported runtime environment values, see <a href="https://docs.aws.amazon.com/glue/latest/dg/ray-jobs-section.html">Supported Ray runtime environments</a>
    #         in the Glue Developer Guide.</p>
    #   @return [String]
    class JobCommand < Struct.new(
      :name,
      :script_location,
      :python_version,
      :runtime,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a Job node present in the workflow.</p>
    # @!attribute job_runs
    #   <p>The information for the job runs represented by the job node.</p>
    #   @return [Array<Types::JobRun>]
    class JobNodeDetails < Struct.new(
      :job_runs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a job run.</p>
    # @!attribute id
    #   <p>The ID of this job run.</p>
    #   @return [String]
    # @!attribute attempt
    #   <p>The number of the attempt to run this job.</p>
    #   @return [Integer]
    # @!attribute previous_run_id
    #   <p>The ID of the previous run of this job. For example, the <code>JobRunId</code> specified
    #         in the <code>StartJobRun</code> action.</p>
    #   @return [String]
    # @!attribute trigger_name
    #   <p>The name of the trigger that started this job run.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the job definition being used in this run.</p>
    #   @return [String]
    # @!attribute job_mode
    #   <p>A mode that describes how a job was created. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SCRIPT</code> - The job was created using the Glue Studio script editor.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VISUAL</code> - The job was created using the Glue Studio visual editor.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTEBOOK</code> - The job was created using an interactive sessions notebook.</p>
    #               </li>
    #            </ul>
    #            <p>When the <code>JobMode</code> field is missing or null, <code>SCRIPT</code> is assigned as the default value.</p>
    #   @return [String]
    # @!attribute job_run_queuing_enabled
    #   <p>Specifies whether job run queuing is enabled for the job run.</p>
    #            <p>A value of true means job run queuing is enabled for the job run. If false or not populated, the job run will not be considered for queueing.</p>
    #   @return [Boolean]
    # @!attribute started_on
    #   <p>The date and time at which this job run was started.</p>
    #   @return [Time]
    # @!attribute last_modified_on
    #   <p>The last time that this job run was modified.</p>
    #   @return [Time]
    # @!attribute completed_on
    #   <p>The date and time that this job run completed.</p>
    #   @return [Time]
    # @!attribute job_run_state
    #   <p>The current state of the job run. For more information about the statuses of jobs that have terminated abnormally, see <a href="https://docs.aws.amazon.com/glue/latest/dg/job-run-statuses.html">Glue Job Run Statuses</a>.</p>
    #   @return [String]
    # @!attribute arguments
    #   <p>The job arguments associated with this run. For this job run, they replace the default
    #         arguments set in the job definition itself.</p>
    #            <p>You can specify arguments here that your own job-execution script
    #         consumes, as well as arguments that Glue itself consumes.</p>
    #            <p>Job arguments may be logged. Do not pass plaintext secrets as arguments. Retrieve secrets
    #         from a Glue Connection, Secrets Manager or other secret management
    #         mechanism if you intend to keep them within the Job. </p>
    #            <p>For information about how to specify and consume your own Job arguments, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling Glue APIs in Python</a> topic in the developer guide.</p>
    #            <p>For information about the arguments you can provide to this field when configuring Spark jobs,
    #        see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by Glue</a> topic in the developer guide.</p>
    #            <p>For information about the arguments you can provide to this field when configuring Ray
    #         jobs, see <a href="https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html">Using
    #         job parameters in Ray jobs</a> in the developer guide.</p>
    #   @return [Hash<String, String>]
    # @!attribute error_message
    #   <p>An error message associated with this job run.</p>
    #   @return [String]
    # @!attribute predecessor_runs
    #   <p>A list of predecessors to this job run.</p>
    #   @return [Array<Types::Predecessor>]
    # @!attribute allocated_capacity
    #   <p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p>
    #            <p>The number of Glue data processing units (DPUs) allocated to this JobRun.
    #         From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure
    #         of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
    #         For more information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue
    #           pricing page</a>.</p>
    #   @deprecated
    #     This property is deprecated, use MaxCapacity instead.
    #   @return [Integer]
    # @!attribute execution_time
    #   <p>The amount of time (in seconds) that the job run consumed resources.</p>
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The <code>JobRun</code> timeout in minutes. This is the maximum time that a job run can
    #         consume resources before it is terminated and enters <code>TIMEOUT</code> status. This value overrides the timeout value set in the parent job.</p>
    #            <p>Jobs must have timeout values less than 7 days or 10080 minutes. Otherwise, the jobs will throw an exception.</p>
    #            <p>When the value is left blank, the timeout is defaulted to 2880 minutes.</p>
    #            <p>Any existing Glue jobs that had a timeout value greater than 7 days will be defaulted to 7 days. For instance if you have specified a timeout of 20 days for a batch job, it will be stopped on the 7th day.</p>
    #            <p>For streaming jobs, if you have set up a maintenance window, it will be restarted during the maintenance window after 7 days.</p>
    #   @return [Integer]
    # @!attribute max_capacity
    #   <p>For Glue version 1.0 or earlier jobs, using the standard worker type, the number of
    #         Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is
    #         a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB
    #         of memory. For more information, see the <a href="https://aws.amazon.com/glue/pricing/">
    #           Glue pricing page</a>.</p>
    #            <p>For Glue version 2.0+ jobs, you cannot specify a <code>Maximum capacity</code>.
    #         Instead, you should specify a <code>Worker type</code> and the <code>Number of workers</code>.</p>
    #            <p>Do not set <code>MaxCapacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>
    #            <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
    #         running a Python shell job, an Apache Spark ETL job, or an Apache Spark streaming ETL
    #         job:</p>
    #            <ul>
    #               <li>
    #                  <p>When you specify a Python shell job (<code>JobCommand.Name</code>="pythonshell"), you can
    #             allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
    #               </li>
    #               <li>
    #                  <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>="glueetl") or Apache 
    #           Spark streaming ETL job (<code>JobCommand.Name</code>="gluestreaming"), you can allocate from 2 to 100 DPUs. 
    #           The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
    #               </li>
    #            </ul>
    #   @return [Float]
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when a job runs. Accepts a value of
    #             G.1X, G.2X, G.4X, G.8X or G.025X for Spark jobs. Accepts the value Z.2X for Ray jobs.</p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPUs, 16 GB of memory) with 94GB disk, and provides 1 executor per worker. We recommend this worker type for workloads such as data transforms, joins, and queries, to offers a scalable and cost effective way to run most jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPUs, 32 GB of memory) with 138GB disk, and provides 1 executor per worker. We recommend this worker type for workloads such as data transforms, joins, and queries, to offers a scalable and cost effective way to run most jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.4X</code> worker type, each worker maps to 4 DPU (16 vCPUs, 64 GB of memory) with 256GB disk, and provides 1 executor per worker. We recommend this worker type for jobs whose workloads contain your most demanding transforms, aggregations, joins, and queries. This worker type is available only for Glue version 3.0 or later Spark ETL jobs in the following Amazon Web Services Regions: US East (Ohio), US East (N. Virginia), US West (Oregon), Asia Pacific (Singapore), Asia Pacific (Sydney), Asia Pacific (Tokyo), Canada (Central), Europe (Frankfurt), Europe (Ireland), and Europe (Stockholm).</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.8X</code> worker type, each worker maps to 8 DPU (32 vCPUs, 128 GB of memory) with 512GB disk, and provides 1 executor per worker. We recommend this worker type for jobs whose workloads contain your most demanding transforms, aggregations, joins, and queries. This worker type is available only for Glue version 3.0 or later Spark ETL jobs, in the same Amazon Web Services Regions as supported for the <code>G.4X</code> worker type.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.025X</code> worker type, each worker maps to 0.25 DPU (2 vCPUs, 4 GB of memory) with 84GB disk, and provides 1 executor per worker. We recommend this worker type for low volume streaming jobs. This worker type is only available for Glue version 3.0 or later streaming jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>Z.2X</code> worker type, each worker maps to 2 M-DPU (8vCPUs, 64 GB of memory) with 128 GB disk, and provides up to 8 Ray workers based on the autoscaler.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>
    #   @return [Integer]
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this job
    #         run.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>The name of the log group for secure logging that can be server-side encrypted in Amazon
    #         CloudWatch using KMS. This name can be <code>/aws-glue/jobs/</code>, in which case the
    #         default encryption is <code>NONE</code>. If you add a role name and
    #         <code>SecurityConfiguration</code> name (in other words,
    #         <code>/aws-glue/jobs-yourRoleName-yourSecurityConfigurationName/</code>), then that security
    #         configuration is used to encrypt the log group.</p>
    #   @return [String]
    # @!attribute notification_property
    #   <p>Specifies configuration properties of a job run notification.</p>
    #   @return [Types::NotificationProperty]
    # @!attribute glue_version
    #   <p>In Spark jobs, <code>GlueVersion</code> determines the versions of Apache Spark and Python
    #         that Glue available in a job. The Python version indicates the version
    #         supported for jobs of type Spark. </p>
    #            <p>Ray jobs should set <code>GlueVersion</code> to <code>4.0</code> or greater. However,
    #       the versions of Ray, Python and additional libraries available in your Ray job are determined
    #       by the <code>Runtime</code> parameter of the Job command.</p>
    #            <p>For more information about the available Glue versions and corresponding
    #         Spark and Python versions, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue version</a> in the developer
    #         guide.</p>
    #            <p>Jobs that are created without specifying a Glue version default to Glue 0.9.</p>
    #   @return [String]
    # @!attribute dpu_seconds
    #   <p>This field can be set for either job runs with execution class <code>FLEX</code> or when Auto Scaling is enabled, and represents the total time each executor ran during the lifecycle of a job run in seconds, multiplied by a DPU factor (1 for <code>G.1X</code>, 2 for <code>G.2X</code>, or 0.25 for <code>G.025X</code> workers). This value may be different than the <code>executionEngineRuntime</code> * <code>MaxCapacity</code> as in the case of Auto Scaling jobs, as the number of executors running at a given time may be less than the <code>MaxCapacity</code>. Therefore, it is possible that the value of <code>DPUSeconds</code> is less than <code>executionEngineRuntime</code> * <code>MaxCapacity</code>.</p>
    #   @return [Float]
    # @!attribute execution_class
    #   <p>Indicates whether the job is run with a standard or flexible execution class. The standard execution-class is ideal for time-sensitive workloads that require fast job startup and dedicated resources.</p>
    #            <p>The flexible execution class is appropriate for time-insensitive jobs whose start and completion times may vary. </p>
    #            <p>Only jobs with Glue version 3.0 and above and command type <code>glueetl</code> will be allowed to set <code>ExecutionClass</code> to <code>FLEX</code>. The flexible execution class is available for Spark jobs.</p>
    #   @return [String]
    # @!attribute maintenance_window
    #   <p>This field specifies a day of the week and hour for a maintenance window for streaming jobs. Glue periodically performs maintenance activities. During these maintenance windows, Glue will need to restart your streaming jobs.</p>
    #            <p>Glue will restart the job within 3 hours of the specified maintenance window. For instance, if you set up the maintenance window for Monday at 10:00AM GMT, your jobs will be restarted between 10:00AM GMT to 1:00PM GMT.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>The name of an Glue usage profile associated with the job run.</p>
    #   @return [String]
    # @!attribute state_detail
    #   <p>This field holds details that pertain to the state of a job run. The field is nullable.</p>
    #            <p>For example, when a job run is in a WAITING state as a result of job run queuing, the field has the reason why the job run is in that state.</p>
    #   @return [String]
    # @!attribute execution_role_session_policy
    #   <p>This inline session policy to the StartJobRun API allows you to dynamically restrict the permissions of the specified 
    #         execution role for the scope of the job, without requiring the creation of additional IAM roles.</p>
    #   @return [String]
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
      :state_detail,
      :execution_role_session_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:attempt] = 0 unless options.key?(:attempt)
        options[:allocated_capacity] = 0 unless options.key?(:allocated_capacity)
        options[:execution_time] = 0 unless options.key?(:execution_time)
        super
      end
    end

    # <p>Specifies information used to update an existing job definition. The previous job
    #       definition is completely overwritten by this information.</p>
    # @!attribute job_mode
    #   <p>A mode that describes how a job was created. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SCRIPT</code> - The job was created using the Glue Studio script editor.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VISUAL</code> - The job was created using the Glue Studio visual editor.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTEBOOK</code> - The job was created using an interactive sessions notebook.</p>
    #               </li>
    #            </ul>
    #            <p>When the <code>JobMode</code> field is missing or null, <code>SCRIPT</code> is assigned as the default value.</p>
    #   @return [String]
    # @!attribute job_run_queuing_enabled
    #   <p>Specifies whether job run queuing is enabled for the job runs for this job.</p>
    #            <p>A value of true means job run queuing is enabled for the job runs. If false or not populated, the job runs will not be considered for queueing.</p>
    #            <p>If this field does not match the value set in the job run, then the value from the job run field will be used.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>Description of the job being defined.</p>
    #   @return [String]
    # @!attribute log_uri
    #   <p>This field is reserved for future use.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role associated with this job
    #         (required).</p>
    #   @return [String]
    # @!attribute execution_property
    #   <p>An <code>ExecutionProperty</code> specifying the maximum number of concurrent runs allowed
    #         for this job.</p>
    #   @return [Types::ExecutionProperty]
    # @!attribute command
    #   <p>The <code>JobCommand</code> that runs this job (required).</p>
    #   @return [Types::JobCommand]
    # @!attribute default_arguments
    #   <p>The default arguments for every run of this job, specified as name-value pairs.</p>
    #            <p>You can specify arguments here that your own job-execution script
    #         consumes, as well as arguments that Glue itself consumes.</p>
    #            <p>Job arguments may be logged. Do not pass plaintext secrets as arguments. Retrieve secrets
    #         from a Glue Connection, Secrets Manager or other secret management
    #         mechanism if you intend to keep them within the Job. </p>
    #            <p>For information about how to specify and consume your own Job arguments, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling Glue APIs in Python</a> topic in the developer guide.</p>
    #            <p>For information about the arguments you can provide to this field when configuring Spark jobs,
    #        see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by Glue</a> topic in the developer guide.</p>
    #            <p>For information about the arguments you can provide to this field when configuring Ray
    #         jobs, see <a href="https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html">Using
    #         job parameters in Ray jobs</a> in the developer guide.</p>
    #   @return [Hash<String, String>]
    # @!attribute non_overridable_arguments
    #   <p>Arguments for this job that are not overridden when providing job arguments
    #         in a job run, specified as name-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute connections
    #   <p>The connections used for this job.</p>
    #   @return [Types::ConnectionsList]
    # @!attribute max_retries
    #   <p>The maximum number of times to retry this job if it fails.</p>
    #   @return [Integer]
    # @!attribute allocated_capacity
    #   <p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p>
    #            <p>The number of Glue data processing units (DPUs) to allocate to this job. You can
    #         allocate a minimum of 2 DPUs; the default is 10. A DPU is a relative measure of processing
    #         power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information,
    #         see the <a href="https://aws.amazon.com/glue/pricing/">Glue pricing
    #         page</a>.</p>
    #   @deprecated
    #     This property is deprecated, use MaxCapacity instead.
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The job timeout in minutes.  This is the maximum time that a job run
    #         can consume resources before it is terminated and enters <code>TIMEOUT</code>
    #         status.</p>
    #            <p>Jobs must have timeout values less than 7 days or 10080 minutes. Otherwise, the jobs will throw an exception.</p>
    #            <p>When the value is left blank, the timeout is defaulted to 2880 minutes.</p>
    #            <p>Any existing Glue jobs that had a timeout value greater than 7 days will be defaulted to 7 days. For instance if you have specified a timeout of 20 days for a batch job, it will be stopped on the 7th day.</p>
    #            <p>For streaming jobs, if you have set up a maintenance window, it will be restarted during the maintenance window after 7 days.</p>
    #   @return [Integer]
    # @!attribute max_capacity
    #   <p>For Glue version 1.0 or earlier jobs, using the standard worker type, the number of
    #         Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is
    #         a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB
    #         of memory. For more information, see the <a href="https://aws.amazon.com/glue/pricing/">
    #         Glue pricing page</a>.</p>
    #            <p>For Glue version 2.0+ jobs, you cannot specify a <code>Maximum capacity</code>.
    #         Instead, you should specify a <code>Worker type</code> and the <code>Number of workers</code>.</p>
    #            <p>Do not set <code>MaxCapacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>
    #            <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
    #         running a Python shell job, an Apache Spark ETL job, or an Apache Spark streaming ETL
    #         job:</p>
    #            <ul>
    #               <li>
    #                  <p>When you specify a Python shell job (<code>JobCommand.Name</code>="pythonshell"), you can
    #             allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
    #               </li>
    #               <li>
    #                  <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>="glueetl") or Apache 
    #           Spark streaming ETL job (<code>JobCommand.Name</code>="gluestreaming"), you can allocate from 2 to 100 DPUs. 
    #           The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
    #               </li>
    #            </ul>
    #   @return [Float]
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when a job runs. Accepts a value of
    #         G.1X, G.2X, G.4X, G.8X or G.025X for Spark jobs. Accepts the value Z.2X for Ray jobs. For more information, see 
    #         <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html#create-job">Defining job properties for Spark jobs   
    #         </a>
    #            </p>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>
    #   @return [Integer]
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this
    #         job.</p>
    #   @return [String]
    # @!attribute notification_property
    #   <p>Specifies the configuration properties of a job notification.</p>
    #   @return [Types::NotificationProperty]
    # @!attribute glue_version
    #   <p>In Spark jobs, <code>GlueVersion</code> determines the versions of Apache Spark and Python
    #         that Glue available in a job. The Python version indicates the version
    #         supported for jobs of type Spark. </p>
    #            <p>Ray jobs should set <code>GlueVersion</code> to <code>4.0</code> or greater. However,
    #       the versions of Ray, Python and additional libraries available in your Ray job are determined
    #       by the <code>Runtime</code> parameter of the Job command.</p>
    #            <p>For more information about the available Glue versions and corresponding
    #         Spark and Python versions, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue version</a> in the developer
    #         guide.</p>
    #            <p>Jobs that are created without specifying a Glue version default to Glue 0.9.</p>
    #   @return [String]
    # @!attribute code_gen_configuration_nodes
    #   <p>The representation of a directed acyclic graph on which both the Glue Studio visual component and Glue Studio code generation is based.</p>
    #   @return [Hash<String, Types::CodeGenConfigurationNode>]
    # @!attribute execution_class
    #   <p>Indicates whether the job is run with a standard or flexible execution class. The standard execution-class is ideal for time-sensitive workloads that require fast job startup and dedicated resources.</p>
    #            <p>The flexible execution class is appropriate for time-insensitive jobs whose start and completion times may vary. </p>
    #            <p>Only jobs with Glue version 3.0 and above and command type <code>glueetl</code> will be allowed to set <code>ExecutionClass</code> to <code>FLEX</code>. The flexible execution class is available for Spark jobs.</p>
    #   @return [String]
    # @!attribute source_control_details
    #   <p>The details for a source control configuration for a job, allowing synchronization of job artifacts to or from a remote repository.</p>
    #   @return [Types::SourceControlDetails]
    # @!attribute maintenance_window
    #   <p>This field specifies a day of the week and hour for a maintenance window for streaming jobs. Glue periodically performs maintenance activities. During these maintenance windows, Glue will need to restart your streaming jobs.</p>
    #            <p>Glue will restart the job within 3 hours of the specified maintenance window. For instance, if you set up the maintenance window for Monday at 10:00AM GMT, your jobs will be restarted between 10:00AM GMT to 1:00PM GMT.</p>
    #   @return [String]
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
      :maintenance_window,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_retries] = 0 unless options.key?(:max_retries)
        options[:allocated_capacity] = 0 unless options.key?(:allocated_capacity)
        super
      end
    end

    # <p>Specifies a transform that joins two datasets into one dataset using a comparison phrase on the specified data property keys. You can use inner, outer, left, right, left semi, and left anti joins.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #   @return [Array<String>]
    # @!attribute join_type
    #   <p>Specifies the type of join to be performed on the datasets.</p>
    #   @return [String]
    # @!attribute columns
    #   <p>A list of the two columns to be joined.</p>
    #   @return [Array<Types::JoinColumn>]
    class Join < Struct.new(
      :name,
      :inputs,
      :join_type,
      :columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a column to be joined.</p>
    # @!attribute from
    #   <p>The column to be joined.</p>
    #   @return [String]
    # @!attribute keys
    #   <p>The key of the column to be joined.</p>
    #   @return [Array<Array<String>>]
    class JoinColumn < Struct.new(
      :from,
      :keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A classifier for <code>JSON</code> content.</p>
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that this classifier was registered.</p>
    #   @return [Time]
    # @!attribute last_updated
    #   <p>The time that this classifier was last updated.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>The version of this classifier.</p>
    #   @return [Integer]
    # @!attribute json_path
    #   <p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify.
    #         Glue supports a subset of JsonPath, as described in <a href="https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json">Writing JsonPath Custom Classifiers</a>.</p>
    #   @return [String]
    class JsonClassifier < Struct.new(
      :name,
      :creation_time,
      :last_updated,
      :version,
      :json_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # <p>The KMS key specified is not accessible.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class KMSKeyNotAccessibleFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional options for streaming.</p>
    # @!attribute bootstrap_servers
    #   <p>A list of bootstrap server URLs, for example, as <code>b-1.vpc-test-2.o4q88o.c6.kafka.us-east-1.amazonaws.com:9094</code>. This option must be specified in the API call or defined in the table metadata in the Data Catalog.</p>
    #   @return [String]
    # @!attribute security_protocol
    #   <p>The protocol used to communicate with brokers. The possible values are <code>"SSL"</code> or <code>"PLAINTEXT"</code>.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The topic name as specified in Apache Kafka. You must specify at least one of <code>"topicName"</code>, <code>"assign"</code> or <code>"subscribePattern"</code>.</p>
    #   @return [String]
    # @!attribute assign
    #   <p>The specific <code>TopicPartitions</code> to consume. You must specify at least one of <code>"topicName"</code>, <code>"assign"</code> or <code>"subscribePattern"</code>.</p>
    #   @return [String]
    # @!attribute subscribe_pattern
    #   <p>A Java regex string that identifies the topic list to subscribe to. You must specify at least one of <code>"topicName"</code>, <code>"assign"</code> or <code>"subscribePattern"</code>.</p>
    #   @return [String]
    # @!attribute classification
    #   <p>An optional classification.</p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>Specifies the delimiter character.</p>
    #   @return [String]
    # @!attribute starting_offsets
    #   <p>The starting position in the Kafka topic to read data from. The possible values are <code>"earliest"</code> or <code>"latest"</code>. The default value is <code>"latest"</code>.</p>
    #   @return [String]
    # @!attribute ending_offsets
    #   <p>The end point when a batch query is ended. Possible values are either <code>"latest"</code> or a JSON string that specifies an ending offset for each <code>TopicPartition</code>.</p>
    #   @return [String]
    # @!attribute poll_timeout_ms
    #   <p>The timeout in milliseconds to poll data from Kafka in Spark job executors. The default value is <code>512</code>.</p>
    #   @return [Integer]
    # @!attribute num_retries
    #   <p>The number of times to retry before failing to fetch Kafka offsets. The default value is <code>3</code>.</p>
    #   @return [Integer]
    # @!attribute retry_interval_ms
    #   <p>The time in milliseconds to wait before retrying to fetch Kafka offsets. The default value is <code>10</code>.</p>
    #   @return [Integer]
    # @!attribute max_offsets_per_trigger
    #   <p>The rate limit on the maximum number of offsets that are processed per trigger interval. The specified total number of offsets is proportionally split across <code>topicPartitions</code> of different volumes. The default value is null, which means that the consumer reads all offsets until the known latest offset.</p>
    #   @return [Integer]
    # @!attribute min_partitions
    #   <p>The desired minimum number of partitions to read from Kafka. The default value is null, which means that the number of spark partitions is equal to the number of Kafka partitions.</p>
    #   @return [Integer]
    # @!attribute include_headers
    #   <p>Whether to include the Kafka headers. When the option is set to "true", the data output will contain an additional column named "glue_streaming_kafka_headers" 
    #             with type <code>Array[Struct(key: String, value: String)]</code>. The default value is "false". 
    #         This option is available in Glue version 3.0 or later only.</p>
    #   @return [Boolean]
    # @!attribute add_record_timestamp
    #   <p>When this option is set to 'true', the data output will contain an additional column named "__src_timestamp" that indicates the time when the corresponding record received by the topic. The default value is 'false'. This option is supported in Glue  version 4.0 or later.</p>
    #   @return [String]
    # @!attribute emit_consumer_lag_metrics
    #   <p>When this option is set to 'true', for each batch, it will emit the metrics for the duration between the oldest record received by the topic and the time it arrives in Glue to CloudWatch. The metric's name is "glue.driver.streaming.maxConsumerLagInMs". The default value is 'false'. This option is supported in Glue version 4.0 or later.</p>
    #   @return [String]
    # @!attribute starting_timestamp
    #   <p>The timestamp of the record in the Kafka topic to start reading data from. The possible values are a timestamp string in UTC format of the pattern <code>yyyy-mm-ddTHH:MM:SSZ</code> (where Z represents a UTC timezone offset with a +/-. For example: "2023-04-04T08:00:00+08:00"). </p>
    #            <p>Only one of <code>StartingTimestamp</code> or <code>StartingOffsets</code> must be set.</p>
    #   @return [Time]
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
      :starting_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A partition key pair consisting of a name and a type.</p>
    # @!attribute name
    #   <p>The name of a partition key.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of a partition key.</p>
    #   @return [String]
    class KeySchemaElement < Struct.new(
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional options for the Amazon Kinesis streaming data source.</p>
    # @!attribute endpoint_url
    #   <p>The URL of the Kinesis endpoint.</p>
    #   @return [String]
    # @!attribute stream_name
    #   <p>The name of the Kinesis data stream.</p>
    #   @return [String]
    # @!attribute classification
    #   <p>An optional classification.</p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>Specifies the delimiter character.</p>
    #   @return [String]
    # @!attribute starting_position
    #   <p>The starting position in the Kinesis data stream to read data from. The possible values are <code>"latest"</code>, <code>"trim_horizon"</code>, <code>"earliest"</code>, or a timestamp string in UTC format in the pattern <code>yyyy-mm-ddTHH:MM:SSZ</code> (where <code>Z</code> represents a UTC timezone offset with a +/-. For example: "2023-04-04T08:00:00-04:00"). The default value is <code>"latest"</code>.</p>
    #            <p>Note: Using a value that is a timestamp string in UTC format for "startingPosition" is supported only for Glue version 4.0 or later.</p>
    #   @return [String]
    # @!attribute max_fetch_time_in_ms
    #   <p>The maximum time spent for the job executor to read records for the current batch from the Kinesis data stream, specified in milliseconds (ms). Multiple <code>GetRecords</code> API calls may be made within this time. The default value is <code>1000</code>.</p>
    #   @return [Integer]
    # @!attribute max_fetch_records_per_shard
    #   <p>The maximum number of records to fetch per shard in the Kinesis data stream per microbatch. Note: The client can exceed this limit if the streaming job has already read extra records from Kinesis (in the same get-records call). If <code>MaxFetchRecordsPerShard</code> needs to be strict then it needs to be a multiple of <code>MaxRecordPerRead</code>. The default value is <code>100000</code>.</p>
    #   @return [Integer]
    # @!attribute max_record_per_read
    #   <p>The maximum number of records to fetch from the Kinesis data stream in each getRecords operation. The default value is <code>10000</code>.</p>
    #   @return [Integer]
    # @!attribute add_idle_time_between_reads
    #   <p>Adds a time delay between two consecutive getRecords operations. The default value is <code>"False"</code>. This option is only configurable for Glue version 2.0 and above.</p>
    #   @return [Boolean]
    # @!attribute idle_time_between_reads_in_ms
    #   <p>The minimum time delay between two consecutive getRecords operations, specified in ms. The default value is <code>1000</code>. This option is only configurable for Glue version 2.0 and above.</p>
    #   @return [Integer]
    # @!attribute describe_shard_interval
    #   <p>The minimum time interval between two ListShards API calls for your script to consider resharding. The default value is <code>1s</code>.</p>
    #   @return [Integer]
    # @!attribute num_retries
    #   <p>The maximum number of retries for Kinesis Data Streams API requests. The default value is <code>3</code>.</p>
    #   @return [Integer]
    # @!attribute retry_interval_ms
    #   <p>The cool-off time period (specified in ms) before retrying the Kinesis Data Streams API call. The default value is <code>1000</code>.</p>
    #   @return [Integer]
    # @!attribute max_retry_interval_ms
    #   <p>The maximum cool-off time period (specified in ms) between two retries of a Kinesis Data Streams API call. The default value is <code>10000</code>.</p>
    #   @return [Integer]
    # @!attribute avoid_empty_batches
    #   <p>Avoids creating an empty microbatch job by checking for unread data in the Kinesis data stream before the batch is started. The default value is <code>"False"</code>.</p>
    #   @return [Boolean]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis data stream.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role to assume using AWS Security Token Service (AWS STS). This role must have permissions for describe or read record operations for the Kinesis data stream. You must use this parameter when accessing a data stream in a different account. Used in conjunction with <code>"awsSTSSessionName"</code>.</p>
    #   @return [String]
    # @!attribute role_session_name
    #   <p>An identifier for the session assuming the role using AWS STS. You must use this parameter when accessing a data stream in a different account. Used in conjunction with <code>"awsSTSRoleARN"</code>.</p>
    #   @return [String]
    # @!attribute add_record_timestamp
    #   <p>When this option is set to 'true', the data output will contain an additional column named "__src_timestamp" that indicates the time when the corresponding record received by the stream. The default value is 'false'. This option is supported in Glue version 4.0 or later.</p>
    #   @return [String]
    # @!attribute emit_consumer_lag_metrics
    #   <p>When this option is set to 'true', for each batch, it will emit the metrics for the duration between the oldest record received by the stream and the time it arrives in Glue  to CloudWatch. The metric's name is "glue.driver.streaming.maxConsumerLagInMs". The default value is 'false'. This option is supported in Glue version 4.0 or later.</p>
    #   @return [String]
    # @!attribute starting_timestamp
    #   <p>The timestamp of the record in the Kinesis data stream to start reading data from. The possible values are a timestamp string in UTC format of the pattern <code>yyyy-mm-ddTHH:MM:SSZ</code> (where Z represents a UTC timezone offset with a +/-. For example: "2023-04-04T08:00:00+08:00"). </p>
    #   @return [Time]
    # @!attribute fanout_consumer_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis Data Streams enhanced fan-out consumer. When specified, enables enhanced fan-out for 
    #         dedicated throughput and lower latency data consumption.</p>
    #   @return [String]
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
      :starting_timestamp,
      :fanout_consumer_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies configuration properties for a labeling set generation task run.</p>
    # @!attribute output_s3_path
    #   <p>The Amazon Simple Storage Service (Amazon S3) path where you will generate the labeling
    #         set.</p>
    #   @return [String]
    class LabelingSetGenerationTaskRunProperties < Struct.new(
      :output_s3_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies Lake Formation configuration settings for the crawler.</p>
    # @!attribute use_lake_formation_credentials
    #   <p>Specifies whether to use Lake Formation credentials for the crawler instead of the IAM role credentials.</p>
    #   @return [Boolean]
    # @!attribute account_id
    #   <p>Required for cross account crawls. For same account crawls as the target data, this can be left as null.</p>
    #   @return [String]
    class LakeFormationConfiguration < Struct.new(
      :use_lake_formation_credentials,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>When there are multiple versions of a blueprint and the latest version has some errors, this attribute indicates the last successful blueprint definition that is available with the service.</p>
    # @!attribute description
    #   <p>The description of the blueprint.</p>
    #   @return [String]
    # @!attribute last_modified_on
    #   <p>The date and time the blueprint was last modified.</p>
    #   @return [Time]
    # @!attribute parameter_spec
    #   <p>A JSON string specifying the parameters for the blueprint.</p>
    #   @return [String]
    # @!attribute blueprint_location
    #   <p>Specifies a path in Amazon S3 where the blueprint is published by the Glue developer.</p>
    #   @return [String]
    # @!attribute blueprint_service_location
    #   <p>Specifies a path in Amazon S3 where the blueprint is copied when you create or update the blueprint.</p>
    #   @return [String]
    class LastActiveDefinition < Struct.new(
      :description,
      :last_modified_on,
      :parameter_spec,
      :blueprint_location,
      :blueprint_service_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Status and error information about the most recent crawl.</p>
    # @!attribute status
    #   <p>Status of the last crawl.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>If an error occurred, the error information about the last crawl.</p>
    #   @return [String]
    # @!attribute log_group
    #   <p>The log group for the last crawl.</p>
    #   @return [String]
    # @!attribute log_stream
    #   <p>The log stream for the last crawl.</p>
    #   @return [String]
    # @!attribute message_prefix
    #   <p>The prefix for a message about this crawl.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time at which the crawl started.</p>
    #   @return [Time]
    class LastCrawlInfo < Struct.new(
      :status,
      :error_message,
      :log_group,
      :log_stream,
      :message_prefix,
      :start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies data lineage configuration settings for the crawler.</p>
    # @!attribute crawler_lineage_settings
    #   <p>Specifies whether data lineage is enabled for the crawler. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>ENABLE: enables data lineage for the crawler</p>
    #               </li>
    #               <li>
    #                  <p>DISABLE: disables data lineage for the crawler</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class LineageConfiguration < Struct.new(
      :crawler_lineage_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Filters the list by an Amazon Web Services resource tag.</p>
    #   @return [Hash<String, String>]
    class ListBlueprintsRequest < Struct.new(
      :next_token,
      :max_results,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute blueprints
    #   <p>List of names of blueprints in the account.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A continuation token, if not all blueprint names have been returned.</p>
    #   @return [String]
    class ListBlueprintsResponse < Struct.new(
      :blueprints,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum size of the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    class ListColumnStatisticsTaskRunsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute column_statistics_task_run_ids
    #   <p>A list of column statistics task run IDs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A continuation token, if not all task run IDs have yet been returned.</p>
    #   @return [String]
    class ListColumnStatisticsTaskRunsResponse < Struct.new(
      :column_statistics_task_run_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    class ListConnectionTypesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_types
    #   <p>A list of <code>ConnectionTypeBrief</code> objects containing brief information about the supported connection types.</p>
    #   @return [Array<Types::ConnectionTypeBrief>]
    # @!attribute next_token
    #   <p>A continuation token, if the current list segment is not the last.</p>
    #   @return [String]
    class ListConnectionTypesResponse < Struct.new(
      :connection_types,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specifies to return only these tagged resources.</p>
    #   @return [Hash<String, String>]
    class ListCrawlersRequest < Struct.new(
      :max_results,
      :next_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute crawler_names
    #   <p>The names of all crawlers in the account, or the crawlers with the specified tags.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A continuation token, if the returned list does not contain the
    #         last metric available.</p>
    #   @return [String]
    class ListCrawlersResponse < Struct.new(
      :crawler_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute crawler_name
    #   <p>The name of the crawler whose runs you want to retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. The default is 20, and maximum is 100.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>Filters the crawls by the criteria you specify in a list of <code>CrawlsFilter</code> objects.</p>
    #   @return [Array<Types::CrawlsFilter>]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    class ListCrawlsRequest < Struct.new(
      :crawler_name,
      :max_results,
      :filters,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute crawls
    #   <p>A list of <code>CrawlerHistory</code> objects representing the crawl runs that meet your criteria.</p>
    #   @return [Array<Types::CrawlerHistory>]
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    #   @return [String]
    class ListCrawlsResponse < Struct.new(
      :crawls,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A paginated token to offset the results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>A list of key-value pair tags.</p>
    #   @return [Hash<String, String>]
    class ListCustomEntityTypesRequest < Struct.new(
      :next_token,
      :max_results,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute custom_entity_types
    #   <p>A list of <code>CustomEntityType</code> objects representing custom patterns.</p>
    #   @return [Array<Types::CustomEntityType>]
    # @!attribute next_token
    #   <p>A pagination token, if more results are available.</p>
    #   @return [String]
    class ListCustomEntityTypesResponse < Struct.new(
      :custom_entity_types,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>The filter criteria.</p>
    #   @return [Types::DataQualityResultFilterCriteria]
    # @!attribute next_token
    #   <p>A paginated token to offset the results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    class ListDataQualityResultsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>A list of <code>DataQualityResultDescription</code> objects.</p>
    #   @return [Array<Types::DataQualityResultDescription>]
    # @!attribute next_token
    #   <p>A pagination token, if more results are available.</p>
    #   @return [String]
    class ListDataQualityResultsResponse < Struct.new(
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>The filter criteria.</p>
    #   @return [Types::DataQualityRuleRecommendationRunFilter]
    # @!attribute next_token
    #   <p>A paginated token to offset the results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    class ListDataQualityRuleRecommendationRunsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute runs
    #   <p>A list of <code>DataQualityRuleRecommendationRunDescription</code> objects.</p>
    #   @return [Array<Types::DataQualityRuleRecommendationRunDescription>]
    # @!attribute next_token
    #   <p>A pagination token, if more results are available.</p>
    #   @return [String]
    class ListDataQualityRuleRecommendationRunsResponse < Struct.new(
      :runs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>The filter criteria.</p>
    #   @return [Types::DataQualityRulesetEvaluationRunFilter]
    # @!attribute next_token
    #   <p>A paginated token to offset the results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    class ListDataQualityRulesetEvaluationRunsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute runs
    #   <p>A list of <code>DataQualityRulesetEvaluationRunDescription</code> objects representing data quality ruleset runs.</p>
    #   @return [Array<Types::DataQualityRulesetEvaluationRunDescription>]
    # @!attribute next_token
    #   <p>A pagination token, if more results are available.</p>
    #   @return [String]
    class ListDataQualityRulesetEvaluationRunsResponse < Struct.new(
      :runs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A paginated token to offset the results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>The filter criteria. </p>
    #   @return [Types::DataQualityRulesetFilterCriteria]
    # @!attribute tags
    #   <p>A list of key-value pair tags.</p>
    #   @return [Hash<String, String>]
    class ListDataQualityRulesetsRequest < Struct.new(
      :next_token,
      :max_results,
      :filter,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rulesets
    #   <p>A paginated list of rulesets for the specified list of Glue tables.</p>
    #   @return [Array<Types::DataQualityRulesetListDetails>]
    # @!attribute next_token
    #   <p>A pagination token, if more results are available.</p>
    #   @return [String]
    class ListDataQualityRulesetsResponse < Struct.new(
      :rulesets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statistic_id
    #   <p>The Statistic ID.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The Profile ID.</p>
    #   @return [String]
    # @!attribute timestamp_filter
    #   <p>A timestamp filter.</p>
    #   @return [Types::TimestampFilter]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token to retrieve the next set of results.</p>
    #   @return [String]
    class ListDataQualityStatisticAnnotationsRequest < Struct.new(
      :statistic_id,
      :profile_id,
      :timestamp_filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute annotations
    #   <p>A list of <code>StatisticAnnotation</code> applied to the Statistic</p>
    #   @return [Array<Types::StatisticAnnotation>]
    # @!attribute next_token
    #   <p>A pagination token to retrieve the next set of results.</p>
    #   @return [String]
    class ListDataQualityStatisticAnnotationsResponse < Struct.new(
      :annotations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statistic_id
    #   <p>The Statistic ID.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The Profile ID.</p>
    #   @return [String]
    # @!attribute timestamp_filter
    #   <p>A timestamp filter.</p>
    #   @return [Types::TimestampFilter]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token to request the next page of results.</p>
    #   @return [String]
    class ListDataQualityStatisticsRequest < Struct.new(
      :statistic_id,
      :profile_id,
      :timestamp_filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statistics
    #   <p>A <code>StatisticSummaryList</code>.</p>
    #   @return [Array<Types::StatisticSummary>]
    # @!attribute next_token
    #   <p>A pagination token to request the next page of results.</p>
    #   @return [String]
    class ListDataQualityStatisticsResponse < Struct.new(
      :statistics,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Specifies to return only these tagged resources.</p>
    #   @return [Hash<String, String>]
    class ListDevEndpointsRequest < Struct.new(
      :next_token,
      :max_results,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dev_endpoint_names
    #   <p>The names of all the <code>DevEndpoint</code>s in the account, or the
    #           <code>DevEndpoint</code>s with the specified tags.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A continuation token, if the returned list does not contain the
    #         last metric available.</p>
    #   @return [String]
    class ListDevEndpointsResponse < Struct.new(
      :dev_endpoint_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_name
    #   <p>A name for the connection that has required credentials to query any connection type.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The catalog ID of the catalog that contains the connection. This can be null, By default, the Amazon Web Services Account ID is the catalog ID.</p>
    #   @return [String]
    # @!attribute parent_entity_name
    #   <p>Name of the parent entity for which you want to list the children. This parameter takes a fully-qualified path of the entity in order to list the child entities.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, included if this is a continuation call.</p>
    #   @return [String]
    # @!attribute data_store_api_version
    #   <p>The API version of the SaaS connector.</p>
    #   @return [String]
    class ListEntitiesRequest < Struct.new(
      :connection_name,
      :catalog_id,
      :parent_entity_name,
      :next_token,
      :data_store_api_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>A list of <code>Entity</code> objects.</p>
    #   @return [Array<Types::Entity>]
    # @!attribute next_token
    #   <p>A continuation token, present if the current segment is not the last.</p>
    #   @return [String]
    class ListEntitiesResponse < Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Specifies to return only these tagged resources.</p>
    #   @return [Hash<String, String>]
    class ListJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_names
    #   <p>The names of all jobs in the account, or the jobs with the specified tags.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A continuation token, if the returned list does not contain the
    #         last metric available.</p>
    #   @return [String]
    class ListJobsResponse < Struct.new(
      :job_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>A <code>TransformFilterCriteria</code> used to filter the machine learning transforms.</p>
    #   @return [Types::TransformFilterCriteria]
    # @!attribute sort
    #   <p>A <code>TransformSortCriteria</code> used to sort the machine learning transforms.</p>
    #   @return [Types::TransformSortCriteria]
    # @!attribute tags
    #   <p>Specifies to return only these tagged resources.</p>
    #   @return [Hash<String, String>]
    class ListMLTransformsRequest < Struct.new(
      :next_token,
      :max_results,
      :filter,
      :sort,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_ids
    #   <p>The identifiers of all the machine learning transforms in the account, or the
    #           machine learning transforms with the specified tags.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A continuation token, if the returned list does not contain the
    #         last metric available.</p>
    #   @return [String]
    class ListMLTransformsResponse < Struct.new(
      :transform_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    class ListRegistriesInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registries
    #   <p>An array of <code>RegistryDetailedListItem</code> objects containing minimal details of each registry.</p>
    #   @return [Array<Types::RegistryListItem>]
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    #   @return [String]
    class ListRegistriesResponse < Struct.new(
      :registries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    #            <ul>
    #               <li>
    #                  <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #               <li>
    #                  <p>SchemaId$SchemaName: The name of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #            </ul>
    #   @return [Types::SchemaId]
    # @!attribute max_results
    #   <p>Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    class ListSchemaVersionsInput < Struct.new(
      :schema_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schemas
    #   <p>An array of <code>SchemaVersionList</code> objects containing details of each schema version.</p>
    #   @return [Array<Types::SchemaVersionListItem>]
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    #   @return [String]
    class ListSchemaVersionsResponse < Struct.new(
      :schemas,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>A wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>
    #   @return [Types::RegistryId]
    # @!attribute max_results
    #   <p>Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    class ListSchemasInput < Struct.new(
      :registry_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schemas
    #   <p>An array of <code>SchemaListItem</code> objects containing details of each schema.</p>
    #   @return [Array<Types::SchemaListItem>]
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    #   @return [String]
    class ListSchemasResponse < Struct.new(
      :schemas,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more result. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results. </p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Tags belonging to the session. </p>
    #   @return [Hash<String, String>]
    # @!attribute request_origin
    #   <p>The origin of the request. </p>
    #   @return [String]
    class ListSessionsRequest < Struct.new(
      :next_token,
      :max_results,
      :tags,
      :request_origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>Returns the ID of the session. </p>
    #   @return [Array<String>]
    # @!attribute sessions
    #   <p>Returns the session object. </p>
    #   @return [Array<Types::Session>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more result. </p>
    #   @return [String]
    class ListSessionsResponse < Struct.new(
      :ids,
      :sessions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The Session ID of the statements.</p>
    #   @return [String]
    # @!attribute request_origin
    #   <p>The origin of the request to list statements.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    class ListStatementsRequest < Struct.new(
      :session_id,
      :request_origin,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statements
    #   <p>Returns the list of statements.</p>
    #   @return [Array<Types::Statement>]
    # @!attribute next_token
    #   <p>A continuation token, if not all statements have yet been returned.</p>
    #   @return [String]
    class ListStatementsResponse < Struct.new(
      :statements,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The Catalog ID of the table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database in the catalog in which the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of table optimizer.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of optimizer runs to return on each call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    class ListTableOptimizerRunsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The Catalog ID of the table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database in the catalog in which the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of optimizer runs, returned if the current segment of the list is not the last.</p>
    #   @return [String]
    # @!attribute table_optimizer_runs
    #   <p>A list of the optimizer runs associated with a table.</p>
    #   @return [Array<Types::TableOptimizerRun>]
    class ListTableOptimizerRunsResponse < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :next_token,
      :table_optimizer_runs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #   @return [String]
    # @!attribute dependent_job_name
    #   <p> The name of the job for which to retrieve triggers. The trigger that can start this job
    #         is returned. If there is no such trigger, all triggers are returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Specifies to return only these tagged resources.</p>
    #   @return [Hash<String, String>]
    class ListTriggersRequest < Struct.new(
      :next_token,
      :dependent_job_name,
      :max_results,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute trigger_names
    #   <p>The names of all triggers in the account, or the triggers with the specified tags.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A continuation token, if the returned list does not contain the
    #         last metric available.</p>
    #   @return [String]
    class ListTriggersResponse < Struct.new(
      :trigger_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, included if this is a continuation call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of usage profiles to return in a single response.</p>
    #   @return [Integer]
    class ListUsageProfilesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profiles
    #   <p>A list of usage profile (<code>UsageProfileDefinition</code>) objects.</p>
    #   @return [Array<Types::UsageProfileDefinition>]
    # @!attribute next_token
    #   <p>A continuation token, present if the current list segment is not the last.</p>
    #   @return [String]
    class ListUsageProfilesResponse < Struct.new(
      :profiles,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #   @return [Integer]
    class ListWorkflowsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflows
    #   <p>List of names of workflows in the account.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A continuation token, if not all workflow names have been returned.</p>
    #   @return [String]
    class ListWorkflowsResponse < Struct.new(
      :workflows,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The location of resources.</p>
    # @!attribute jdbc
    #   <p>A JDBC location.</p>
    #   @return [Array<Types::CodeGenNodeArg>]
    # @!attribute s3
    #   <p>An Amazon Simple Storage Service (Amazon S3) location.</p>
    #   @return [Array<Types::CodeGenNodeArg>]
    # @!attribute dynamo_db
    #   <p>An Amazon DynamoDB table location.</p>
    #   @return [Array<Types::CodeGenNodeArg>]
    class Location < Struct.new(
      :jdbc,
      :s3,
      :dynamo_db,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines column statistics supported for integer data columns.</p>
    # @!attribute minimum_value
    #   <p>The lowest value in the column.</p>
    #   @return [Integer]
    # @!attribute maximum_value
    #   <p>The highest value in the column.</p>
    #   @return [Integer]
    # @!attribute number_of_nulls
    #   <p>The number of null values in the column.</p>
    #   @return [Integer]
    # @!attribute number_of_distinct_values
    #   <p>The number of distinct values in a column.</p>
    #   @return [Integer]
    class LongColumnStatisticsData < Struct.new(
      :minimum_value,
      :maximum_value,
      :number_of_nulls,
      :number_of_distinct_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:minimum_value] = 0 unless options.key?(:minimum_value)
        options[:maximum_value] = 0 unless options.key?(:maximum_value)
        options[:number_of_nulls] = 0 unless options.key?(:number_of_nulls)
        options[:number_of_distinct_values] = 0 unless options.key?(:number_of_distinct_values)
        super
      end
    end

    # <p>A structure for a machine learning transform.</p>
    # @!attribute transform_id
    #   <p>The unique transform ID that is generated for the machine learning transform. The ID is
    #         guaranteed to be unique and does not change.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A user-defined name for the machine learning transform. Names are not guaranteed unique
    #         and can be changed at any time.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A user-defined, long-form description text for the machine learning transform.
    #         Descriptions are not guaranteed to be unique and can be changed at any time.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the machine learning transform.</p>
    #   @return [String]
    # @!attribute created_on
    #   <p>A timestamp. The time and date that this machine learning transform was created.</p>
    #   @return [Time]
    # @!attribute last_modified_on
    #   <p>A timestamp. The last point in time when this machine learning transform was modified.</p>
    #   @return [Time]
    # @!attribute input_record_tables
    #   <p>A list of Glue table definitions used by the transform.</p>
    #   @return [Array<Types::GlueTable>]
    # @!attribute parameters
    #   <p>A <code>TransformParameters</code> object. You can use parameters to tune (customize) the
    #         behavior of the machine learning transform by specifying what data it learns from and your
    #         preference on various tradeoffs (such as precious vs. recall, or accuracy vs. cost).</p>
    #   @return [Types::TransformParameters]
    # @!attribute evaluation_metrics
    #   <p>An <code>EvaluationMetrics</code> object. Evaluation metrics provide an estimate of the quality of your machine learning transform.</p>
    #   @return [Types::EvaluationMetrics]
    # @!attribute label_count
    #   <p>A count identifier for the labeling files generated by Glue for this transform. As you create a better transform, you can iteratively download, label, and upload the labeling file.</p>
    #   @return [Integer]
    # @!attribute schema
    #   <p>A map of key-value pairs representing the columns and data types that this transform can
    #         run against. Has an upper bound of 100 columns.</p>
    #   @return [Array<Types::SchemaColumn>]
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role with the required permissions. The required permissions include both Glue service role permissions to Glue resources, and Amazon S3 permissions required by the transform. </p>
    #            <ul>
    #               <li>
    #                  <p>This role needs Glue service role permissions to allow access to resources in Glue. See <a href="https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html">Attach a Policy to IAM Users That Access Glue</a>.</p>
    #               </li>
    #               <li>
    #                  <p>This role needs permission to your Amazon Simple Storage Service (Amazon S3) sources, targets, temporary directory, scripts, and any libraries used by the task run for this transform.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute glue_version
    #   <p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions">Glue Versions</a> in the developer guide.</p>
    #   @return [String]
    # @!attribute max_capacity
    #   <p>The number of Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of
    #         processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
    #         information, see the <a href="http://aws.amazon.com/glue/pricing/">Glue pricing
    #           page</a>. </p>
    #            <p>
    #               <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p>
    #               </li>
    #            </ul>
    #            <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>
    #   @return [Float]
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when a task of this transform runs. Accepts a value of Standard, G.1X, or G.2X.</p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when a task of the transform runs.</p>
    #            <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The timeout in minutes of the machine learning transform.</p>
    #   @return [Integer]
    # @!attribute max_retries
    #   <p>The maximum number of times to retry after an <code>MLTaskRun</code> of the machine
    #         learning transform fails.</p>
    #   @return [Integer]
    # @!attribute transform_encryption
    #   <p>The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.</p>
    #   @return [Types::TransformEncryption]
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
      :transform_encryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:label_count] = 0 unless options.key?(:label_count)
        super
      end
    end

    # <p>The machine learning transform is not ready to run.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class MLTransformNotReadyException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The encryption-at-rest settings of the transform that apply to accessing user data.</p>
    # @!attribute ml_user_data_encryption_mode
    #   <p>The encryption mode applied to user data. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>DISABLED: encryption is disabled</p>
    #               </li>
    #               <li>
    #                  <p>SSEKMS: use of server-side encryption with Key Management Service (SSE-KMS) for user data stored in Amazon S3.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID for the customer-provided KMS key.</p>
    #   @return [String]
    class MLUserDataEncryption < Struct.new(
      :ml_user_data_encryption_mode,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the mapping of data property keys.</p>
    # @!attribute to_key
    #   <p>After the apply mapping, what the name of the column should be. Can be the same as <code>FromPath</code>.</p>
    #   @return [String]
    # @!attribute from_path
    #   <p>The table or column to be modified.</p>
    #   @return [Array<String>]
    # @!attribute from_type
    #   <p>The type of the data to be modified.</p>
    #   @return [String]
    # @!attribute to_type
    #   <p>The data type that the data is to be modified to.</p>
    #   @return [String]
    # @!attribute dropped
    #   <p>If true, then the column is removed.</p>
    #   @return [Boolean]
    # @!attribute children
    #   <p>Only applicable to nested data structures. If you want to change the parent structure, but also one of its children, you can fill out this data strucutre. It is also <code>Mapping</code>, but its <code>FromPath</code> will be the parent's <code>FromPath</code> plus the <code>FromPath</code> from this structure.</p>
    #            <p>For the children part, suppose you have the structure:</p>
    #            <p>
    #               <code>{
    #     "FromPath": "OuterStructure",
    #     "ToKey": "OuterStructure",
    #     "ToType": "Struct",
    #     "Dropped": false,
    #     "Chidlren": [{
    #          "FromPath": "inner",
    #          "ToKey": "inner",
    #          "ToType": "Double",
    #         "Dropped": false,
    #     }]
    #   }</code>
    #            </p>
    #            <p>You can specify a <code>Mapping</code> that looks like:</p>
    #            <p>
    #               <code>{
    #     "FromPath": "OuterStructure",
    #     "ToKey": "OuterStructure",
    #     "ToType": "Struct",
    #     "Dropped": false,
    #     "Chidlren": [{
    #          "FromPath": "inner",
    #          "ToKey": "inner",
    #          "ToType": "Double",
    #         "Dropped": false,
    #     }]
    #   }</code>
    #            </p>
    #   @return [Array<Types::Mapping>]
    class Mapping < Struct.new(
      :to_key,
      :from_path,
      :from_type,
      :to_type,
      :dropped,
      :children,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a mapping.</p>
    # @!attribute source_table
    #   <p>The name of the source table.</p>
    #   @return [String]
    # @!attribute source_path
    #   <p>The source path.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The source type.</p>
    #   @return [String]
    # @!attribute target_table
    #   <p>The target table.</p>
    #   @return [String]
    # @!attribute target_path
    #   <p>The target path.</p>
    #   @return [String]
    # @!attribute target_type
    #   <p>The target type.</p>
    #   @return [String]
    class MappingEntry < Struct.new(
      :source_table,
      :source_path,
      :source_type,
      :target_table,
      :target_path,
      :target_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a transform that merges a <code>DynamicFrame</code> with a staging <code>DynamicFrame</code> based on the specified primary keys to identify records. Duplicate records (records with the same primary keys) are not de-duplicated. </p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #   @return [Array<String>]
    # @!attribute source
    #   <p>The source <code>DynamicFrame</code> that will be merged with a staging <code>DynamicFrame</code>.</p>
    #   @return [String]
    # @!attribute primary_keys
    #   <p>The list of primary key fields to match records from the source and staging dynamic frames.</p>
    #   @return [Array<Array<String>>]
    class Merge < Struct.new(
      :name,
      :inputs,
      :source,
      :primary_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing metadata information for a schema version.</p>
    # @!attribute metadata_value
    #   <p>The metadata key’s corresponding value.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The time at which the entry was created.</p>
    #   @return [String]
    # @!attribute other_metadata_value_list
    #   <p>Other metadata belonging to the same metadata key.</p>
    #   @return [Array<Types::OtherMetadataValueListItem>]
    class MetadataInfo < Struct.new(
      :metadata_value,
      :created_time,
      :other_metadata_value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing a key value pair for metadata.</p>
    # @!attribute metadata_key
    #   <p>A metadata key.</p>
    #   @return [String]
    # @!attribute metadata_value
    #   <p>A metadata key’s corresponding value.</p>
    #   @return [String]
    class MetadataKeyValuePair < Struct.new(
      :metadata_key,
      :metadata_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the metric based observation generated based on evaluated data quality metrics.</p>
    # @!attribute metric_name
    #   <p>The name of the data quality metric used for generating the observation.</p>
    #   @return [String]
    # @!attribute statistic_id
    #   <p>The Statistic ID.</p>
    #   @return [String]
    # @!attribute metric_values
    #   <p>An object of type <code>DataQualityMetricValues</code> representing the analysis of the data quality metric value.</p>
    #   @return [Types::DataQualityMetricValues]
    # @!attribute new_rules
    #   <p>A list of new data quality rules generated as part of the observation based on the data quality metric value.</p>
    #   @return [Array<String>]
    class MetricBasedObservation < Struct.new(
      :metric_name,
      :statistic_id,
      :metric_values,
      :new_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a Microsoft SQL server data source in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    class MicrosoftSQLServerCatalogSource < Struct.new(
      :name,
      :database,
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a target that uses Microsoft SQL.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #   @return [String]
    class MicrosoftSQLServerCatalogTarget < Struct.new(
      :name,
      :inputs,
      :database,
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_identifier
    #   <p>The Amazon Resource Name (ARN) for the integration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the integration.</p>
    #   @return [String]
    # @!attribute data_filter
    #   <p>Selects source tables for the integration using Maxwell filter syntax.</p>
    #   @return [String]
    # @!attribute integration_config
    #   <p>Properties associated with the integration.</p>
    #   @return [Types::IntegrationConfig]
    # @!attribute integration_name
    #   <p>A unique name for an integration in Glue.</p>
    #   @return [String]
    class ModifyIntegrationRequest < Struct.new(
      :integration_identifier,
      :description,
      :data_filter,
      :integration_config,
      :integration_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_arn
    #   <p>The ARN of the source for the integration.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The ARN of the target for the integration.</p>
    #   @return [String]
    # @!attribute integration_name
    #   <p>A unique name for an integration in Glue.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the integration.</p>
    #   @return [String]
    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) for the integration.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ARN of a KMS key used for encrypting the channel.</p>
    #   @return [String]
    # @!attribute additional_encryption_context
    #   <p>An optional set of non-secret key–value pairs that contains additional contextual information for encryption.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>Metadata assigned to the resource consisting of a list of key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute status
    #   <p>The status of the integration being modified.</p>
    #            <p>The possible statuses are:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATING: The integration is being created.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE: The integration creation succeeds.</p>
    #               </li>
    #               <li>
    #                  <p>MODIFYING: The integration is being modified.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED: The integration creation fails. </p>
    #               </li>
    #               <li>
    #                  <p>DELETING: The integration is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>SYNCING: The integration is synchronizing.</p>
    #               </li>
    #               <li>
    #                  <p>NEEDS_ATTENTION: The integration needs attention, such as synchronization.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the integration was created, in UTC.</p>
    #   @return [Time]
    # @!attribute errors
    #   <p>A list of errors associated with the integration modification.</p>
    #   @return [Array<Types::IntegrationError>]
    # @!attribute data_filter
    #   <p>Selects source tables for the integration using Maxwell filter syntax.</p>
    #   @return [String]
    # @!attribute integration_config
    #   <p>Properties associated with the integration.</p>
    #   @return [Types::IntegrationConfig]
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
      :data_filter,
      :integration_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Amazon DocumentDB or MongoDB data store to crawl.</p>
    # @!attribute connection_name
    #   <p>The name of the connection to use to connect to the Amazon DocumentDB or MongoDB target.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path of the Amazon DocumentDB or MongoDB target (database/collection).</p>
    #   @return [String]
    # @!attribute scan_all
    #   <p>Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table.</p>
    #            <p>A value of <code>true</code> means to scan all records, while a value of <code>false</code> means to sample the records. If no value is specified, the value defaults to <code>true</code>.</p>
    #   @return [Boolean]
    class MongoDBTarget < Struct.new(
      :connection_name,
      :path,
      :scan_all,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a MySQL data source in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    class MySQLCatalogSource < Struct.new(
      :name,
      :database,
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a target that uses MySQL.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #   @return [String]
    class MySQLCatalogTarget < Struct.new(
      :name,
      :inputs,
      :database,
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There is no applicable schedule.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class NoScheduleException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A node represents an Glue component (trigger, crawler, or job) on a workflow graph.</p>
    # @!attribute type
    #   <p>The type of Glue component represented by the node.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Glue component represented by the node.</p>
    #   @return [String]
    # @!attribute unique_id
    #   <p>The unique Id assigned to the node within the workflow.</p>
    #   @return [String]
    # @!attribute trigger_details
    #   <p>Details of the Trigger when the node represents a Trigger.</p>
    #   @return [Types::TriggerNodeDetails]
    # @!attribute job_details
    #   <p>Details of the Job when the node represents a Job.</p>
    #   @return [Types::JobNodeDetails]
    # @!attribute crawler_details
    #   <p>Details of the crawler when the node represents a crawler.</p>
    #   @return [Types::CrawlerNodeDetails]
    class Node < Struct.new(
      :type,
      :name,
      :unique_id,
      :trigger_details,
      :job_details,
      :crawler_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies configuration properties of a notification.</p>
    # @!attribute notify_delay_after
    #   <p>After a job run starts, the number of minutes to wait before
    #         sending a job run delay notification.</p>
    #   @return [Integer]
    class NotificationProperty < Struct.new(
      :notify_delay_after,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents whether certain values are recognized as null values for removal.</p>
    # @!attribute is_empty
    #   <p>Specifies that an empty string is considered as a null value.</p>
    #   @return [Boolean]
    # @!attribute is_null_string
    #   <p>Specifies that a value spelling out the word 'null' is considered as a null value.</p>
    #   @return [Boolean]
    # @!attribute is_neg_one
    #   <p>Specifies that an integer value of -1 is considered as a null value.</p>
    #   @return [Boolean]
    class NullCheckBoxList < Struct.new(
      :is_empty,
      :is_null_string,
      :is_neg_one,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a custom null value such as a zeros or other value being used as a null placeholder unique to the dataset.</p>
    # @!attribute value
    #   <p>The value of the null placeholder.</p>
    #   @return [String]
    # @!attribute datatype
    #   <p>The datatype of the value.</p>
    #   @return [Types::Datatype]
    class NullValueField < Struct.new(
      :value,
      :datatype,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The OAuth2 client app used for the connection.</p>
    # @!attribute user_managed_client_application_client_id
    #   <p>The client application clientID if the ClientAppType is <code>USER_MANAGED</code>.</p>
    #   @return [String]
    # @!attribute aws_managed_client_application_reference
    #   <p>The reference to the SaaS-side client app that is Amazon Web Services managed.</p>
    #   @return [String]
    class OAuth2ClientApplication < Struct.new(
      :user_managed_client_application_client_id,
      :aws_managed_client_application_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The credentials used when the authentication type is OAuth2 authentication.</p>
    # @!attribute user_managed_client_application_client_secret
    #   <p>The client application client secret if the client application is user managed.</p>
    #   @return [String]
    # @!attribute access_token
    #   <p>The access token used when the authentication type is OAuth2.</p>
    #   @return [String]
    # @!attribute refresh_token
    #   <p>The refresh token used when the authentication type is OAuth2.</p>
    #   @return [String]
    # @!attribute jwt_token
    #   <p>The JSON Web Token (JWT) used when the authentication type is OAuth2.</p>
    #   @return [String]
    class OAuth2Credentials < Struct.new(
      :user_managed_client_application_client_secret,
      :access_token,
      :refresh_token,
      :jwt_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing properties for OAuth2 authentication.</p>
    # @!attribute o_auth2_grant_type
    #   <p>The OAuth2 grant type. For example, <code>AUTHORIZATION_CODE</code>, <code>JWT_BEARER</code>, or <code>CLIENT_CREDENTIALS</code>.</p>
    #   @return [String]
    # @!attribute o_auth2_client_application
    #   <p>The client application type. For example, AWS_MANAGED or USER_MANAGED.</p>
    #   @return [Types::OAuth2ClientApplication]
    # @!attribute token_url
    #   <p>The URL of the provider's authentication server, to exchange an authorization code for an access token.</p>
    #   @return [String]
    # @!attribute token_url_parameters_map
    #   <p>A map of parameters that are added to the token <code>GET</code> request.</p>
    #   @return [Hash<String, String>]
    class OAuth2Properties < Struct.new(
      :o_auth2_grant_type,
      :o_auth2_client_application,
      :token_url,
      :token_url_parameters_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing properties for OAuth2 in the CreateConnection request.</p>
    # @!attribute o_auth2_grant_type
    #   <p>The OAuth2 grant type in the CreateConnection request. For example, <code>AUTHORIZATION_CODE</code>, <code>JWT_BEARER</code>, or <code>CLIENT_CREDENTIALS</code>.</p>
    #   @return [String]
    # @!attribute o_auth2_client_application
    #   <p>The client application type in the CreateConnection request. For example, <code>AWS_MANAGED</code> or <code>USER_MANAGED</code>.</p>
    #   @return [Types::OAuth2ClientApplication]
    # @!attribute token_url
    #   <p>The URL of the provider's authentication server, to exchange an authorization code for an access token.</p>
    #   @return [String]
    # @!attribute token_url_parameters_map
    #   <p>A map of parameters that are added to the token <code>GET</code> request.</p>
    #   @return [Hash<String, String>]
    # @!attribute authorization_code_properties
    #   <p>The set of properties required for the the OAuth2 <code>AUTHORIZATION_CODE</code> grant type.</p>
    #   @return [Types::AuthorizationCodeProperties]
    # @!attribute o_auth2_credentials
    #   <p>The credentials used when the authentication type is OAuth2 authentication.</p>
    #   @return [Types::OAuth2Credentials]
    class OAuth2PropertiesInput < Struct.new(
      :o_auth2_grant_type,
      :o_auth2_client_application,
      :token_url,
      :token_url_parameters_map,
      :authorization_code_properties,
      :o_auth2_credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure representing an open format table.</p>
    # @!attribute iceberg_input
    #   <p>Specifies an <code>IcebergInput</code> structure that defines an Apache Iceberg metadata table.</p>
    #   @return [Types::IcebergInput]
    class OpenTableFormatInput < Struct.new(
      :iceberg_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation is not available in the region.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class OperationNotSupportedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation timed out.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class OperationTimeoutException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an option value.</p>
    # @!attribute value
    #   <p>Specifies the value of the option.</p>
    #   @return [String]
    # @!attribute label
    #   <p>Specifies the label of the option.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Specifies the description of the option.</p>
    #   @return [String]
    class Option < Struct.new(
      :value,
      :label,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Oracle data source in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    class OracleSQLCatalogSource < Struct.new(
      :name,
      :database,
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a target that uses Oracle SQL.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #   @return [String]
    class OracleSQLCatalogTarget < Struct.new(
      :name,
      :inputs,
      :database,
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the sort order of a sorted column.</p>
    # @!attribute column
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Indicates that the column is sorted in ascending order
    #         (<code>== 1</code>), or in descending order (<code>==0</code>).</p>
    #   @return [Integer]
    class Order < Struct.new(
      :column,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:sort_order] = 0 unless options.key?(:sort_order)
        super
      end
    end

    # <p>The configuration for an orphan file deletion optimizer.</p>
    # @!attribute iceberg_configuration
    #   <p>The configuration for an Iceberg orphan file deletion optimizer.</p>
    #   @return [Types::IcebergOrphanFileDeletionConfiguration]
    class OrphanFileDeletionConfiguration < Struct.new(
      :iceberg_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains orphan file deletion metrics for the optimizer run.</p>
    # @!attribute iceberg_metrics
    #   <p>A structure containing the Iceberg orphan file deletion metrics for the optimizer run.</p>
    #   @return [Types::IcebergOrphanFileDeletionMetrics]
    class OrphanFileDeletionMetrics < Struct.new(
      :iceberg_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing other metadata for a schema version belonging to the same metadata key.</p>
    # @!attribute metadata_value
    #   <p>The metadata key’s corresponding value for the other metadata belonging to the same metadata key.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The time at which the entry was created.</p>
    #   @return [String]
    class OtherMetadataValueListItem < Struct.new(
      :metadata_value,
      :created_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a transform that identifies, removes or masks PII data.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The node ID inputs to the transform.</p>
    #   @return [Array<String>]
    # @!attribute pii_type
    #   <p>Indicates the type of PIIDetection transform. </p>
    #   @return [String]
    # @!attribute entity_types_to_detect
    #   <p>Indicates the types of entities the PIIDetection transform will identify as PII data. </p>
    #            <p>
    #          PII type entities include: PERSON_NAME, DATE, USA_SNN, EMAIL, USA_ITIN, USA_PASSPORT_NUMBER, PHONE_NUMBER, BANK_ACCOUNT,
    #          IP_ADDRESS, MAC_ADDRESS, USA_CPT_CODE, USA_HCPCS_CODE, USA_NATIONAL_DRUG_CODE, USA_MEDICARE_BENEFICIARY_IDENTIFIER,
    #          USA_HEALTH_INSURANCE_CLAIM_NUMBER,CREDIT_CARD,USA_NATIONAL_PROVIDER_IDENTIFIER,USA_DEA_NUMBER,USA_DRIVING_LICENSE
    #       </p>
    #   @return [Array<String>]
    # @!attribute output_column_name
    #   <p>Indicates the output column name that will contain any entity type detected in that row. </p>
    #   @return [String]
    # @!attribute sample_fraction
    #   <p>Indicates the fraction of the data to sample when scanning for PII entities. </p>
    #   @return [Float]
    # @!attribute threshold_fraction
    #   <p>Indicates the fraction of the data that must be met in order for a column to be identified as PII data. </p>
    #   @return [Float]
    # @!attribute mask_value
    #   <p>Indicates the value that will replace the detected entity. </p>
    #   @return [String]
    # @!attribute redact_text
    #   <p>Specifies whether to redact the detected PII text. When set to <code>true</code>, PII content is replaced with redaction characters.</p>
    #   @return [String]
    # @!attribute redact_char
    #   <p>The character used to replace detected PII content when redaction is enabled. The default redaction character is <code>*</code>.</p>
    #   @return [String]
    # @!attribute match_pattern
    #   <p>A regular expression pattern used to identify additional PII content beyond the standard detection algorithms.</p>
    #   @return [String]
    # @!attribute num_left_chars_to_exclude
    #   <p>The number of characters to exclude from redaction on the left side of detected PII content. This allows preserving context around the sensitive data.</p>
    #   @return [Integer]
    # @!attribute num_right_chars_to_exclude
    #   <p>The number of characters to exclude from redaction on the right side of detected PII content. This allows preserving context around the sensitive data.</p>
    #   @return [Integer]
    # @!attribute detection_parameters
    #   <p>Additional parameters for configuring PII detection behavior and sensitivity settings.</p>
    #   @return [String]
    # @!attribute detection_sensitivity
    #   <p>The sensitivity level for PII detection. Higher sensitivity levels detect more potential PII but may result in more false positives.</p>
    #   @return [String]
    class PIIDetection < Struct.new(
      :name,
      :inputs,
      :pii_type,
      :entity_types_to_detect,
      :output_column_name,
      :sample_fraction,
      :threshold_fraction,
      :mask_value,
      :redact_text,
      :redact_char,
      :match_pattern,
      :num_left_chars_to_exclude,
      :num_right_chars_to_exclude,
      :detection_parameters,
      :detection_sensitivity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a slice of table data.</p>
    # @!attribute values
    #   <p>The values of the partition.</p>
    #   @return [Array<String>]
    # @!attribute database_name
    #   <p>The name of the catalog database in which to create the partition.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the database table in which to create the partition.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the partition was created.</p>
    #   @return [Time]
    # @!attribute last_access_time
    #   <p>The last time at which the partition was accessed.</p>
    #   @return [Time]
    # @!attribute storage_descriptor
    #   <p>Provides information about the physical
    #         location where the partition is stored.</p>
    #   @return [Types::StorageDescriptor]
    # @!attribute parameters
    #   <p>These key-value pairs define partition parameters.</p>
    #   @return [Hash<String, String>]
    # @!attribute last_analyzed_time
    #   <p>The last time at which column statistics were computed for this
    #         partition.</p>
    #   @return [Time]
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the partition resides.</p>
    #   @return [String]
    class Partition < Struct.new(
      :values,
      :database_name,
      :table_name,
      :creation_time,
      :last_access_time,
      :storage_descriptor,
      :parameters,
      :last_analyzed_time,
      :catalog_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a partition error.</p>
    # @!attribute partition_values
    #   <p>The values that define the partition.</p>
    #   @return [Array<String>]
    # @!attribute error_detail
    #   <p>The details about the partition error.</p>
    #   @return [Types::ErrorDetail]
    class PartitionError < Struct.new(
      :partition_values,
      :error_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure for a partition index.</p>
    # @!attribute keys
    #   <p>The keys for the partition index.</p>
    #   @return [Array<String>]
    # @!attribute index_name
    #   <p>The name of the partition index.</p>
    #   @return [String]
    class PartitionIndex < Struct.new(
      :keys,
      :index_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A descriptor for a partition index in a table.</p>
    # @!attribute index_name
    #   <p>The name of the partition index.</p>
    #   @return [String]
    # @!attribute keys
    #   <p>A list of one or more keys, as <code>KeySchemaElement</code> structures, for the partition index.</p>
    #   @return [Array<Types::KeySchemaElement>]
    # @!attribute index_status
    #   <p>The status of the partition index. </p>
    #            <p>The possible statuses are:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATING: The index is being created. When an index is in a CREATING state, the index or its table cannot be deleted.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE: The index creation succeeds.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED: The index creation fails. </p>
    #               </li>
    #               <li>
    #                  <p>DELETING: The index is deleted from the list of indexes.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute backfill_errors
    #   <p>A list of errors that can occur when registering partition indexes for an existing table.</p>
    #   @return [Array<Types::BackfillError>]
    class PartitionIndexDescriptor < Struct.new(
      :index_name,
      :keys,
      :index_status,
      :backfill_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure used to create and update a partition.</p>
    # @!attribute values
    #   <p>The values of the partition. Although this parameter is not required by the SDK, you must specify this parameter for a valid input.</p>
    #            <p>The values for the keys for the new partition must be passed as an array of String objects that must be ordered in the same order as the partition keys appearing in the Amazon S3 prefix. Otherwise Glue will add the values to the wrong keys.</p>
    #   @return [Array<String>]
    # @!attribute last_access_time
    #   <p>The last time at which the partition was accessed.</p>
    #   @return [Time]
    # @!attribute storage_descriptor
    #   <p>Provides information about the physical
    #         location where the partition is stored.</p>
    #   @return [Types::StorageDescriptor]
    # @!attribute parameters
    #   <p>These key-value pairs define partition parameters.</p>
    #   @return [Hash<String, String>]
    # @!attribute last_analyzed_time
    #   <p>The last time at which column statistics were computed for this partition.</p>
    #   @return [Time]
    class PartitionInput < Struct.new(
      :values,
      :last_access_time,
      :storage_descriptor,
      :parameters,
      :last_analyzed_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a list of values defining partitions.</p>
    # @!attribute values
    #   <p>The list of values.</p>
    #   @return [Array<String>]
    class PartitionValueList < Struct.new(
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation timed out.</p>
    # @!attribute message
    #   <p>There is a mismatch between the SupportedPermissionType used in the query request
    #             and the permissions defined on the target table.</p>
    #   @return [String]
    class PermissionTypeMismatchException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The OAuth client app in GetConnection response.</p>
    # @!attribute subnet_id
    #   <p>The subnet ID used by the connection.</p>
    #   @return [String]
    # @!attribute security_group_id_list
    #   <p>The security group ID list used by the connection.</p>
    #   @return [Array<String>]
    # @!attribute availability_zone
    #   <p>The connection's Availability Zone.</p>
    #   @return [String]
    class PhysicalConnectionRequirements < Struct.new(
      :subnet_id,
      :security_group_id_list,
      :availability_zone,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a PostgresSQL data source in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    class PostgreSQLCatalogSource < Struct.new(
      :name,
      :database,
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a target that uses Postgres SQL.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #   @return [String]
    class PostgreSQLCatalogTarget < Struct.new(
      :name,
      :inputs,
      :database,
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A job run that was used in the predicate of a conditional trigger
    #       that triggered this job run.</p>
    # @!attribute job_name
    #   <p>The name of the job definition used by the predecessor job run.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The job-run ID of the predecessor job run.</p>
    #   @return [String]
    class Predecessor < Struct.new(
      :job_name,
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the predicate of the trigger, which determines when it fires.</p>
    # @!attribute logical
    #   <p>An optional field if only one condition is listed. If multiple conditions are listed, then
    #         this field is required.</p>
    #   @return [String]
    # @!attribute conditions
    #   <p>A list of the conditions that determine when the trigger will fire.</p>
    #   @return [Array<Types::Condition>]
    class Predicate < Struct.new(
      :logical,
      :conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Permissions granted to a principal.</p>
    # @!attribute principal
    #   <p>The principal who is granted permissions.</p>
    #   @return [Types::DataLakePrincipal]
    # @!attribute permissions
    #   <p>The permissions that are granted to the principal.</p>
    #   @return [Array<String>]
    class PrincipalPermissions < Struct.new(
      :principal,
      :permissions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the job and session values that an admin configures in an Glue usage profile.</p>
    # @!attribute session_configuration
    #   <p>A key-value map of configuration parameters for Glue sessions. </p>
    #   @return [Hash<String, Types::ConfigurationObject>]
    # @!attribute job_configuration
    #   <p>A key-value map of configuration parameters for Glue jobs. </p>
    #   @return [Hash<String, Types::ConfigurationObject>]
    class ProfileConfiguration < Struct.new(
      :session_configuration,
      :job_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines a connection type for a compute environment.</p>
    # @!attribute name
    #   <p>The name of the property.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the property.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Indicates whether the property is required.</p>
    #   @return [Boolean]
    # @!attribute default_value
    #   <p>The default value for the property.</p>
    #   @return [String]
    # @!attribute property_types
    #   <p>Describes the type of property.</p>
    #   @return [Array<String>]
    # @!attribute allowed_values
    #   <p>A list of <code>AllowedValue</code> objects representing the values allowed for the property.</p>
    #   @return [Array<Types::AllowedValue>]
    # @!attribute data_operation_scopes
    #   <p>Indicates which data operations are applicable to the property.</p>
    #   @return [Array<String>]
    class Property < Struct.new(
      :name,
      :description,
      :required,
      :default_value,
      :property_types,
      :allowed_values,
      :data_operation_scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:property_types] = [] unless options.key?(:property_types)
        super
      end
    end

    # <p>Defines a property predicate.</p>
    # @!attribute key
    #   <p>The key of the property.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the property.</p>
    #   @return [String]
    # @!attribute comparator
    #   <p>The comparator used to compare this property to others.</p>
    #   @return [String]
    class PropertyPredicate < Struct.new(
      :key,
      :value,
      :comparator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog to set the security configuration for. If none is provided, the
    #         Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute data_catalog_encryption_settings
    #   <p>The security configuration to set.</p>
    #   @return [Types::DataCatalogEncryptionSettings]
    class PutDataCatalogEncryptionSettingsRequest < Struct.new(
      :catalog_id,
      :data_catalog_encryption_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutDataCatalogEncryptionSettingsResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The ID of the data quality monitoring profile to annotate.</p>
    #   @return [String]
    # @!attribute inclusion_annotation
    #   <p>The inclusion annotation value to apply to the profile.</p>
    #   @return [String]
    class PutDataQualityProfileAnnotationRequest < Struct.new(
      :profile_id,
      :inclusion_annotation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Left blank.</p>
    class PutDataQualityProfileAnnotationResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_in_json
    #   <p>Contains the policy document to set, in JSON format.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>Do not use. For internal use only.</p>
    #   @return [String]
    # @!attribute policy_hash_condition
    #   <p>The hash value returned when the previous policy was set using
    #           <code>PutResourcePolicy</code>. Its purpose is to prevent concurrent modifications of a
    #         policy. Do not use this parameter if no previous policy has been set.</p>
    #   @return [String]
    # @!attribute policy_exists_condition
    #   <p>A value of <code>MUST_EXIST</code> is used to update a policy. A value of
    #           <code>NOT_EXIST</code> is used to create a new policy. If a value of <code>NONE</code> or a
    #         null value is used, the call does not depend on the existence of a policy.</p>
    #   @return [String]
    # @!attribute enable_hybrid
    #   <p>If <code>'TRUE'</code>, indicates that you are using both methods to grant cross-account
    #         access to Data Catalog resources:</p>
    #            <ul>
    #               <li>
    #                  <p>By directly updating the resource policy with <code>PutResourePolicy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>By using the <b>Grant permissions</b> command on the Amazon Web Services Management Console.</p>
    #               </li>
    #            </ul>
    #            <p>Must be set to <code>'TRUE'</code> if you have already used the Management Console to
    #         grant cross-account access, otherwise the call fails. Default is 'FALSE'.</p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      :policy_in_json,
      :resource_arn,
      :policy_hash_condition,
      :policy_exists_condition,
      :enable_hybrid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_hash
    #   <p>A hash of the policy that has just been set. This must
    #         be included in a subsequent call that overwrites or updates
    #         this policy.</p>
    #   @return [String]
    class PutResourcePolicyResponse < Struct.new(
      :policy_hash,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_id
    #   <p>The unique ID for the schema.</p>
    #   @return [Types::SchemaId]
    # @!attribute schema_version_number
    #   <p>The version number of the schema.</p>
    #   @return [Types::SchemaVersionNumber]
    # @!attribute schema_version_id
    #   <p>The unique version ID of the schema version.</p>
    #   @return [String]
    # @!attribute metadata_key_value
    #   <p>The metadata key's corresponding value.</p>
    #   @return [Types::MetadataKeyValuePair]
    class PutSchemaVersionMetadataInput < Struct.new(
      :schema_id,
      :schema_version_number,
      :schema_version_id,
      :metadata_key_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) for the schema.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name for the schema.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name for the registry.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>The latest version of the schema.</p>
    #   @return [Boolean]
    # @!attribute version_number
    #   <p>The version number of the schema.</p>
    #   @return [Integer]
    # @!attribute schema_version_id
    #   <p>The unique version ID of the schema version.</p>
    #   @return [String]
    # @!attribute metadata_key
    #   <p>The metadata key.</p>
    #   @return [String]
    # @!attribute metadata_value
    #   <p>The value of the metadata key.</p>
    #   @return [String]
    class PutSchemaVersionMetadataResponse < Struct.new(
      :schema_arn,
      :schema_name,
      :registry_name,
      :latest_version,
      :version_number,
      :schema_version_id,
      :metadata_key,
      :metadata_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:latest_version] = false unless options.key?(:latest_version)
        super
      end
    end

    # @!attribute name
    #   <p>Name of the workflow which was run.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The ID of the workflow run for which the run properties should be updated.</p>
    #   @return [String]
    # @!attribute run_properties
    #   <p>The properties to put for the specified run.</p>
    #            <p>Run properties may be logged. Do not pass plaintext secrets as properties. Retrieve secrets from a Glue Connection, Amazon Web Services Secrets Manager or other secret management mechanism if you intend to use them within the workflow run.</p>
    #   @return [Hash<String, String>]
    class PutWorkflowRunPropertiesRequest < Struct.new(
      :name,
      :run_id,
      :run_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutWorkflowRunPropertiesResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_id
    #   <p>A wrapper structure that may contain the schema name and Amazon Resource Name (ARN).</p>
    #   @return [Types::SchemaId]
    # @!attribute schema_version_number
    #   <p>The version number of the schema.</p>
    #   @return [Types::SchemaVersionNumber]
    # @!attribute schema_version_id
    #   <p>The unique version ID of the schema version.</p>
    #   @return [String]
    # @!attribute metadata_list
    #   <p>Search key-value pairs for metadata, if they are not provided all the metadata information will be fetched.</p>
    #   @return [Array<Types::MetadataKeyValuePair>]
    # @!attribute max_results
    #   <p>Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    class QuerySchemaVersionMetadataInput < Struct.new(
      :schema_id,
      :schema_version_number,
      :schema_version_id,
      :metadata_list,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata_info_map
    #   <p>A map of a metadata key and associated values.</p>
    #   @return [Hash<String, Types::MetadataInfo>]
    # @!attribute schema_version_id
    #   <p>The unique version ID of the schema version.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    #   @return [String]
    class QuerySchemaVersionMetadataResponse < Struct.new(
      :metadata_info_map,
      :schema_version_id,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure used as a protocol between query engines and Lake Formation or Glue. Contains both a Lake Formation generated authorization identifier and information from the request's authorization context.</p>
    # @!attribute query_id
    #   <p>A unique identifier generated by the query engine for the query.</p>
    #   @return [String]
    # @!attribute query_start_time
    #   <p>A timestamp provided by the query engine for when the query started.</p>
    #   @return [Time]
    # @!attribute cluster_id
    #   <p>An identifier string for the consumer cluster.</p>
    #   @return [String]
    # @!attribute query_authorization_id
    #   <p>A cryptographically generated query identifier generated by Glue or Lake Formation.</p>
    #   @return [String]
    # @!attribute additional_context
    #   <p>An opaque string-string map passed by the query engine.</p>
    #   @return [Hash<String, String>]
    class QuerySessionContext < Struct.new(
      :query_id,
      :query_start_time,
      :cluster_id,
      :query_authorization_id,
      :additional_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A Glue Studio node that uses a Glue DataBrew recipe in Glue jobs.</p>
    # @!attribute name
    #   <p>The name of the Glue Studio node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the recipe node, identified by id.</p>
    #   @return [Array<String>]
    # @!attribute recipe_reference
    #   <p>A reference to the DataBrew recipe used by the node.</p>
    #   @return [Types::RecipeReference]
    # @!attribute recipe_steps
    #   <p>Transform steps used in the recipe node.</p>
    #   @return [Array<Types::RecipeStep>]
    class Recipe < Struct.new(
      :name,
      :inputs,
      :recipe_reference,
      :recipe_steps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Actions defined in the Glue Studio data preparation recipe node.</p>
    # @!attribute operation
    #   <p>The operation of the recipe action.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters of the recipe action.</p>
    #   @return [Hash<String, String>]
    class RecipeAction < Struct.new(
      :operation,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to a Glue DataBrew recipe.</p>
    # @!attribute recipe_arn
    #   <p>The ARN of the DataBrew recipe.</p>
    #   @return [String]
    # @!attribute recipe_version
    #   <p>The RecipeVersion of the DataBrew recipe.</p>
    #   @return [String]
    class RecipeReference < Struct.new(
      :recipe_arn,
      :recipe_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A recipe step used in a Glue Studio data preparation recipe node.</p>
    # @!attribute action
    #   <p>The transformation action of the recipe step.</p>
    #   @return [Types::RecipeAction]
    # @!attribute condition_expressions
    #   <p>The condition expressions for the recipe step.</p>
    #   @return [Array<Types::ConditionExpression>]
    class RecipeStep < Struct.new(
      :action,
      :condition_expressions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>When crawling an Amazon S3 data source after the first crawl is complete, specifies whether to crawl the entire dataset again or to crawl only folders that were added since the last crawler run. For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/incremental-crawls.html">Incremental Crawls in Glue</a> in the developer guide.</p>
    # @!attribute recrawl_behavior
    #   <p>Specifies whether to crawl the entire dataset again or to crawl only folders that were added since the last crawler run.</p>
    #            <p>A value of <code>CRAWL_EVERYTHING</code> specifies crawling the entire dataset again.</p>
    #            <p>A value of <code>CRAWL_NEW_FOLDERS_ONLY</code> specifies crawling only folders that were added since the last crawler run.</p>
    #            <p>A value of <code>CRAWL_EVENT_MODE</code> specifies crawling only the changes identified by Amazon S3 events.</p>
    #   @return [String]
    class RecrawlPolicy < Struct.new(
      :recrawl_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Amazon Redshift data store.</p>
    # @!attribute name
    #   <p>The name of the Amazon Redshift data store.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The database table to read from.</p>
    #   @return [String]
    # @!attribute redshift_tmp_dir
    #   <p>The Amazon S3 path where temporary data can be staged when copying out of the database.</p>
    #   @return [String]
    # @!attribute tmp_dir_iam_role
    #   <p>The IAM role with permissions.</p>
    #   @return [String]
    class RedshiftSource < Struct.new(
      :name,
      :database,
      :table,
      :redshift_tmp_dir,
      :tmp_dir_iam_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a target that uses Amazon Redshift.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #   @return [String]
    # @!attribute redshift_tmp_dir
    #   <p>The Amazon S3 path where temporary data can be staged when copying out of the database.</p>
    #   @return [String]
    # @!attribute tmp_dir_iam_role
    #   <p>The IAM role with permissions.</p>
    #   @return [String]
    # @!attribute upsert_redshift_options
    #   <p>The set of options to configure an upsert operation when writing to a Redshift target.</p>
    #   @return [Types::UpsertRedshiftTargetOptions]
    class RedshiftTarget < Struct.new(
      :name,
      :inputs,
      :database,
      :table,
      :redshift_tmp_dir,
      :tmp_dir_iam_role,
      :upsert_redshift_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    #            <ul>
    #               <li>
    #                  <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #               <li>
    #                  <p>SchemaId$SchemaName: The name of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #            </ul>
    #   @return [Types::SchemaId]
    # @!attribute schema_definition
    #   <p>The schema definition using the <code>DataFormat</code> setting for the <code>SchemaName</code>.</p>
    #   @return [String]
    class RegisterSchemaVersionInput < Struct.new(
      :schema_id,
      :schema_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_version_id
    #   <p>The unique ID that represents the version of this schema.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version of this schema (for sync flow only, in case this is the first version).</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the schema version.</p>
    #   @return [String]
    class RegisterSchemaVersionResponse < Struct.new(
      :schema_version_id,
      :version_number,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>
    # @!attribute registry_name
    #   <p>Name of the registry. Used only for lookup. One of <code>RegistryArn</code> or <code>RegistryName</code> has to be provided. </p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>Arn of the registry to be updated. One of <code>RegistryArn</code> or <code>RegistryName</code> has to be provided.</p>
    #   @return [String]
    class RegistryId < Struct.new(
      :registry_name,
      :registry_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing the details for a registry.</p>
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the registry.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the registry.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The data the registry was created.</p>
    #   @return [String]
    # @!attribute updated_time
    #   <p>The date the registry was updated.</p>
    #   @return [String]
    class RegistryListItem < Struct.new(
      :registry_name,
      :registry_arn,
      :description,
      :status,
      :created_time,
      :updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a Relational database data source in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    class RelationalCatalogSource < Struct.new(
      :name,
      :database,
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_id
    #   <p>A wrapper structure that may contain the schema name and Amazon Resource Name (ARN).</p>
    #   @return [Types::SchemaId]
    # @!attribute schema_version_number
    #   <p>The version number of the schema.</p>
    #   @return [Types::SchemaVersionNumber]
    # @!attribute schema_version_id
    #   <p>The unique version ID of the schema version.</p>
    #   @return [String]
    # @!attribute metadata_key_value
    #   <p>The value of the metadata key.</p>
    #   @return [Types::MetadataKeyValuePair]
    class RemoveSchemaVersionMetadataInput < Struct.new(
      :schema_id,
      :schema_version_number,
      :schema_version_id,
      :metadata_key_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>The latest version of the schema.</p>
    #   @return [Boolean]
    # @!attribute version_number
    #   <p>The version number of the schema.</p>
    #   @return [Integer]
    # @!attribute schema_version_id
    #   <p>The version ID for the schema version.</p>
    #   @return [String]
    # @!attribute metadata_key
    #   <p>The metadata key.</p>
    #   @return [String]
    # @!attribute metadata_value
    #   <p>The value of the metadata key.</p>
    #   @return [String]
    class RemoveSchemaVersionMetadataResponse < Struct.new(
      :schema_arn,
      :schema_name,
      :registry_name,
      :latest_version,
      :version_number,
      :schema_version_id,
      :metadata_key,
      :metadata_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:latest_version] = false unless options.key?(:latest_version)
        super
      end
    end

    # <p>Specifies a transform that renames a single data property key.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #   @return [Array<String>]
    # @!attribute source_path
    #   <p>A JSON path to a variable in the data structure for the source data.</p>
    #   @return [Array<String>]
    # @!attribute target_path
    #   <p>A JSON path to a variable in the data structure for the target data.</p>
    #   @return [Array<String>]
    class RenameField < Struct.new(
      :name,
      :inputs,
      :source_path,
      :target_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job in question.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The unique run identifier associated with this job run.</p>
    #   @return [String]
    class ResetJobBookmarkRequest < Struct.new(
      :job_name,
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_bookmark_entry
    #   <p>The reset bookmark entry.</p>
    #   @return [Types::JobBookmarkEntry]
    class ResetJobBookmarkResponse < Struct.new(
      :job_bookmark_entry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource could not be found.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource was not ready for a transaction.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ResourceNotReadyException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource numerical limit was exceeded.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ResourceNumberLimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The URIs for function resources.</p>
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The URI for accessing the resource.</p>
    #   @return [String]
    class ResourceUri < Struct.new(
      :resource_type,
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow to resume.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The ID of the workflow run to resume.</p>
    #   @return [String]
    # @!attribute node_ids
    #   <p>A list of the node IDs for the nodes you want to restart. The nodes that are to be restarted must have a run attempt in the original run.</p>
    #   @return [Array<String>]
    class ResumeWorkflowRunRequest < Struct.new(
      :name,
      :run_id,
      :node_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute run_id
    #   <p>The new ID assigned to the resumed workflow run. Each resume of a workflow run will have a new run ID.</p>
    #   @return [String]
    # @!attribute node_ids
    #   <p>A list of the node IDs for the nodes that were actually restarted.</p>
    #   @return [Array<String>]
    class ResumeWorkflowRunResponse < Struct.new(
      :run_id,
      :node_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a snapshot retention optimizer.</p>
    # @!attribute iceberg_configuration
    #   <p>The configuration for an Iceberg snapshot retention optimizer.</p>
    #   @return [Types::IcebergRetentionConfiguration]
    class RetentionConfiguration < Struct.new(
      :iceberg_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains retention metrics for the optimizer run.</p>
    # @!attribute iceberg_metrics
    #   <p>A structure containing the Iceberg retention metrics for the optimizer run.</p>
    #   @return [Types::IcebergRetentionMetrics]
    class RetentionMetrics < Struct.new(
      :iceberg_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a route node that directs data to different output paths based on defined filtering conditions.</p>
    # @!attribute name
    #   <p>The name of the route node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The input connection for the route node.</p>
    #   @return [Array<String>]
    # @!attribute group_filters_list
    #   <p>A list of group filters that define the routing conditions and criteria for directing data to different output paths.</p>
    #   @return [Array<Types::GroupFilters>]
    class Route < Struct.new(
      :name,
      :inputs,
      :group_filters_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A run identifier.</p>
    # @!attribute run_id
    #   <p>The Run ID.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>The Job Run ID.</p>
    #   @return [String]
    class RunIdentifier < Struct.new(
      :run_id,
      :job_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metrics for the optimizer run.</p>
    #          <p>This structure is deprecated. See the individual metric members for compaction, retention, and orphan file deletion.</p>
    # @!attribute number_of_bytes_compacted
    #   <p>The number of bytes removed by the compaction job run.</p>
    #   @return [String]
    # @!attribute number_of_files_compacted
    #   <p>The number of files removed by the compaction job run.</p>
    #   @return [String]
    # @!attribute number_of_dpus
    #   <p>The number of DPUs consumed by the job, rounded up to the nearest whole number.</p>
    #   @return [String]
    # @!attribute job_duration_in_hour
    #   <p>The duration of the job in hours.</p>
    #   @return [String]
    class RunMetrics < Struct.new(
      :number_of_bytes_compacted,
      :number_of_files_compacted,
      :number_of_dpus,
      :job_duration_in_hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The Session Id of the statement to be run.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The statement code to be run.</p>
    #   @return [String]
    # @!attribute request_origin
    #   <p>The origin of the request.</p>
    #   @return [String]
    class RunStatementRequest < Struct.new(
      :session_id,
      :code,
      :request_origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Returns the Id of the statement that was run.</p>
    #   @return [Integer]
    class RunStatementResponse < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:id] = 0 unless options.key?(:id)
        super
      end
    end

    # <p>Specifies a Delta Lake data source that is registered in the Glue Data Catalog. The data source must be stored in Amazon S3.</p>
    # @!attribute name
    #   <p>The name of the Delta Lake data source.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    # @!attribute additional_delta_options
    #   <p>Specifies additional connection options.</p>
    #   @return [Hash<String, String>]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the Delta Lake source.</p>
    #   @return [Array<Types::GlueSchema>]
    class S3CatalogDeltaSource < Struct.new(
      :name,
      :database,
      :table,
      :additional_delta_options,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a Hudi data source that is registered in the Glue Data Catalog. The Hudi data source must be stored in Amazon S3.</p>
    # @!attribute name
    #   <p>The name of the Hudi data source.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    # @!attribute additional_hudi_options
    #   <p>Specifies additional connection options.</p>
    #   @return [Hash<String, String>]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the Hudi source.</p>
    #   @return [Array<Types::GlueSchema>]
    class S3CatalogHudiSource < Struct.new(
      :name,
      :database,
      :table,
      :additional_hudi_options,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Apache Iceberg data source that is registered in the Glue Data Catalog. The Iceberg data source must be stored in Amazon S3.</p>
    # @!attribute name
    #   <p>The name of the Iceberg data source.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #   @return [String]
    # @!attribute additional_iceberg_options
    #   <p>Specifies additional connection options for the Iceberg data source.</p>
    #   @return [Hash<String, String>]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the Iceberg source.</p>
    #   @return [Array<Types::GlueSchema>]
    class S3CatalogIcebergSource < Struct.new(
      :name,
      :database,
      :table,
      :additional_iceberg_options,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Amazon S3 data store in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data store.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The database to read from.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The database table to read from.</p>
    #   @return [String]
    # @!attribute partition_predicate
    #   <p>Partitions satisfying this predicate are deleted. Files within the retention period in these partitions are not deleted. Set to <code>""</code> – empty by default.</p>
    #   @return [String]
    # @!attribute additional_options
    #   <p>Specifies additional connection options.</p>
    #   @return [Types::S3SourceAdditionalOptions]
    class S3CatalogSource < Struct.new(
      :name,
      :database,
      :table,
      :partition_predicate,
      :additional_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a data target that writes to Amazon S3 using the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute partition_keys
    #   <p>Specifies native partitioning using a sequence of keys.</p>
    #   @return [Array<Array<String>>]
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #   @return [String]
    # @!attribute schema_change_policy
    #   <p>A policy that specifies update behavior for the crawler.</p>
    #   @return [Types::CatalogSchemaChangePolicy]
    # @!attribute auto_data_quality
    #   <p>Specifies whether to automatically enable data quality evaluation for the S3 catalog target. 
    #         When set to <code>true</code>, data quality checks are performed automatically during the write operation.</p>
    #   @return [Types::AutoDataQuality]
    class S3CatalogTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :table,
      :database,
      :schema_change_policy,
      :auto_data_quality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a command-separated value (CSV) data store stored in Amazon S3.</p>
    # @!attribute name
    #   <p>The name of the data store.</p>
    #   @return [String]
    # @!attribute paths
    #   <p>A list of the Amazon S3 paths to read from.</p>
    #   @return [Array<String>]
    # @!attribute compression_type
    #   <p>Specifies how the data is compressed. This is generally not necessary if the data has a standard file extension. Possible values are <code>"gzip"</code> and <code>"bzip"</code>).</p>
    #   @return [String]
    # @!attribute exclusions
    #   <p>A string containing a JSON list of Unix-style glob patterns to exclude. For example, "[\"**.pdf\"]" excludes all PDF files. </p>
    #   @return [Array<String>]
    # @!attribute group_size
    #   <p>The target group size in bytes. The default is computed based on the input data size and the size of your cluster. When there are fewer than 50,000 input files, <code>"groupFiles"</code> must be set to <code>"inPartition"</code> for this to take effect.</p>
    #   @return [String]
    # @!attribute group_files
    #   <p>Grouping files is turned on by default when the input contains more than 50,000 files. To turn on grouping with fewer than 50,000 files, set this parameter to "inPartition". To disable grouping when there are more than 50,000 files, set this parameter to <code>"none"</code>.</p>
    #   @return [String]
    # @!attribute recurse
    #   <p>If set to true, recursively reads files in all subdirectories under the specified paths.</p>
    #   @return [Boolean]
    # @!attribute max_band
    #   <p>This option controls the duration in milliseconds after which the s3 listing is likely to be consistent. Files with modification timestamps falling within the last maxBand milliseconds are tracked specially when using JobBookmarks to account for Amazon S3 eventual consistency. Most users don't need to set this option. The default is 900000 milliseconds, or 15 minutes.</p>
    #   @return [Integer]
    # @!attribute max_files_in_band
    #   <p>This option specifies the maximum number of files to save from the last maxBand seconds. If this number is exceeded, extra files are skipped and only processed in the next job run.</p>
    #   @return [Integer]
    # @!attribute additional_options
    #   <p>Specifies additional connection options.</p>
    #   @return [Types::S3DirectSourceAdditionalOptions]
    # @!attribute separator
    #   <p>Specifies the delimiter character. The default is a comma: ",", but any other character can be specified.</p>
    #   @return [String]
    # @!attribute escaper
    #   <p>Specifies a character to use for escaping. This option is used only when reading CSV files. The default value is <code>none</code>. If enabled, the character which immediately follows is used as-is, except for a small set of well-known escapes (<code>\n</code>, <code>\r</code>, <code>\t</code>, and <code>\0</code>).</p>
    #   @return [String]
    # @!attribute quote_char
    #   <p>Specifies the character to use for quoting. The default is a double quote: <code>'"'</code>. Set this to <code>-1</code> to turn off quoting entirely.</p>
    #   @return [String]
    # @!attribute multiline
    #   <p>A Boolean value that specifies whether a single record can span multiple lines. This can occur when a field contains a quoted new-line character. You must set this option to True if any record spans multiple lines. The default value is <code>False</code>, which allows for more aggressive file-splitting during parsing.</p>
    #   @return [Boolean]
    # @!attribute with_header
    #   <p>A Boolean value that specifies whether to treat the first line as a header. The default value is <code>False</code>.</p>
    #   @return [Boolean]
    # @!attribute write_header
    #   <p>A Boolean value that specifies whether to write the header to output. The default value is <code>True</code>. </p>
    #   @return [Boolean]
    # @!attribute skip_first
    #   <p>A Boolean value that specifies whether to skip the first data line. The default value is <code>False</code>.</p>
    #   @return [Boolean]
    # @!attribute optimize_performance
    #   <p>A Boolean value that specifies whether to use the advanced SIMD CSV reader along with Apache Arrow based columnar memory formats. Only available in Glue version 3.0.</p>
    #   @return [Boolean]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the S3 CSV source.</p>
    #   @return [Array<Types::GlueSchema>]
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
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:optimize_performance] = false unless options.key?(:optimize_performance)
        super
      end
    end

    # <p>Specifies a target that writes to a Delta Lake data source in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute partition_keys
    #   <p>Specifies native partitioning using a sequence of keys.</p>
    #   @return [Array<Array<String>>]
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #   @return [String]
    # @!attribute additional_options
    #   <p>Specifies additional connection options for the connector.</p>
    #   @return [Hash<String, String>]
    # @!attribute schema_change_policy
    #   <p>A policy that specifies update behavior for the crawler.</p>
    #   @return [Types::CatalogSchemaChangePolicy]
    # @!attribute auto_data_quality
    #   <p>Specifies whether to automatically enable data quality evaluation for the S3 Delta catalog target. When set to <code>true</code>, 
    #         data quality checks are performed automatically during the write operation.</p>
    #   @return [Types::AutoDataQuality]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the S3 Delta catalog target.</p>
    #   @return [Array<Types::GlueSchema>]
    class S3DeltaCatalogTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :table,
      :database,
      :additional_options,
      :schema_change_policy,
      :auto_data_quality,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a target that writes to a Delta Lake data source in Amazon S3.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute partition_keys
    #   <p>Specifies native partitioning using a sequence of keys.</p>
    #   @return [Array<Array<String>>]
    # @!attribute path
    #   <p>The Amazon S3 path of your Delta Lake data source to write to.</p>
    #   @return [String]
    # @!attribute compression
    #   <p>Specifies how the data is compressed. This is generally not necessary if the data has a standard file extension. Possible values are <code>"gzip"</code> and <code>"bzip"</code>).</p>
    #   @return [String]
    # @!attribute number_target_partitions
    #   <p>Specifies the number of target partitions for distributing Delta Lake dataset files across Amazon S3.</p>
    #   @return [String]
    # @!attribute format
    #   <p>Specifies the data output format for the target.</p>
    #   @return [String]
    # @!attribute additional_options
    #   <p>Specifies additional connection options for the connector.</p>
    #   @return [Hash<String, String>]
    # @!attribute schema_change_policy
    #   <p>A policy that specifies update behavior for the crawler.</p>
    #   @return [Types::DirectSchemaChangePolicy]
    # @!attribute auto_data_quality
    #   <p>Specifies whether to automatically enable data quality evaluation for the S3 Delta direct target. When set to <code>true</code>, 
    #         data quality checks are performed automatically during the write operation.</p>
    #   @return [Types::AutoDataQuality]
    class S3DeltaDirectTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :path,
      :compression,
      :number_target_partitions,
      :format,
      :additional_options,
      :schema_change_policy,
      :auto_data_quality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a Delta Lake data source stored in Amazon S3.</p>
    # @!attribute name
    #   <p>The name of the Delta Lake source.</p>
    #   @return [String]
    # @!attribute paths
    #   <p>A list of the Amazon S3 paths to read from.</p>
    #   @return [Array<String>]
    # @!attribute additional_delta_options
    #   <p>Specifies additional connection options.</p>
    #   @return [Hash<String, String>]
    # @!attribute additional_options
    #   <p>Specifies additional options for the connector.</p>
    #   @return [Types::S3DirectSourceAdditionalOptions]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the Delta Lake source.</p>
    #   @return [Array<Types::GlueSchema>]
    class S3DeltaSource < Struct.new(
      :name,
      :paths,
      :additional_delta_options,
      :additional_options,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies additional connection options for the Amazon S3 data store.</p>
    # @!attribute bounded_size
    #   <p>Sets the upper limit for the target size of the dataset in bytes that will be processed.</p>
    #   @return [Integer]
    # @!attribute bounded_files
    #   <p>Sets the upper limit for the target number of files that will be processed.</p>
    #   @return [Integer]
    # @!attribute enable_sample_path
    #   <p>Sets option to enable a sample path.</p>
    #   @return [Boolean]
    # @!attribute sample_path
    #   <p>If enabled, specifies the sample path.</p>
    #   @return [String]
    class S3DirectSourceAdditionalOptions < Struct.new(
      :bounded_size,
      :bounded_files,
      :enable_sample_path,
      :sample_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a data target that writes to Amazon S3.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute partition_keys
    #   <p>Specifies native partitioning using a sequence of keys.</p>
    #   @return [Array<Array<String>>]
    # @!attribute path
    #   <p>A single Amazon S3 path to write to.</p>
    #   @return [String]
    # @!attribute compression
    #   <p>Specifies how the data is compressed. This is generally not necessary if the data has a standard file extension. Possible values are <code>"gzip"</code> and <code>"bzip"</code>).</p>
    #   @return [String]
    # @!attribute number_target_partitions
    #   <p>Specifies the number of target partitions when writing data directly to Amazon S3.</p>
    #   @return [String]
    # @!attribute format
    #   <p>Specifies the data output format for the target.</p>
    #   @return [String]
    # @!attribute schema_change_policy
    #   <p>A policy that specifies update behavior for the crawler.</p>
    #   @return [Types::DirectSchemaChangePolicy]
    # @!attribute auto_data_quality
    #   <p>Specifies whether to automatically enable data quality evaluation for the S3 direct target. When set to <code>true</code>, 
    #         data quality checks are performed automatically during the write operation.</p>
    #   @return [Types::AutoDataQuality]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the S3 direct target.</p>
    #   @return [Array<Types::GlueSchema>]
    class S3DirectTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :path,
      :compression,
      :number_target_partitions,
      :format,
      :schema_change_policy,
      :auto_data_quality,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how Amazon Simple Storage Service (Amazon S3) data should be encrypted.</p>
    # @!attribute s3_encryption_mode
    #   <p>The encryption mode to use for Amazon S3 data.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.</p>
    #   @return [String]
    class S3Encryption < Struct.new(
      :s3_encryption_mode,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an S3 Excel data source.</p>
    # @!attribute name
    #   <p>The name of the S3 Excel data source.</p>
    #   @return [String]
    # @!attribute paths
    #   <p>The S3 paths where the Excel files are located.</p>
    #   @return [Array<String>]
    # @!attribute compression_type
    #   <p>The compression format used for the Excel files.</p>
    #   @return [String]
    # @!attribute exclusions
    #   <p>Patterns to exclude specific files or paths from processing.</p>
    #   @return [Array<String>]
    # @!attribute group_size
    #   <p>Defines the size of file groups for batch processing.</p>
    #   @return [String]
    # @!attribute group_files
    #   <p>Specifies how files should be grouped for processing.</p>
    #   @return [String]
    # @!attribute recurse
    #   <p>Indicates whether to recursively process subdirectories.</p>
    #   @return [Boolean]
    # @!attribute max_band
    #   <p>The maximum number of processing bands to use.</p>
    #   @return [Integer]
    # @!attribute max_files_in_band
    #   <p>The maximum number of files to process in each band.</p>
    #   @return [Integer]
    # @!attribute additional_options
    #   <p>Additional configuration options for S3 direct source processing.</p>
    #   @return [Types::S3DirectSourceAdditionalOptions]
    # @!attribute number_rows
    #   <p>The number of rows to process from each Excel file.</p>
    #   @return [Integer]
    # @!attribute skip_footer
    #   <p>The number of rows to skip at the end of each Excel file.</p>
    #   @return [Integer]
    # @!attribute output_schemas
    #   <p>The Glue schemas to apply to the processed data.</p>
    #   @return [Array<Types::GlueSchema>]
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
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a data target that writes to Amazon S3 in Apache Parquet columnar storage.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute partition_keys
    #   <p>Specifies native partitioning using a sequence of keys.</p>
    #   @return [Array<Array<String>>]
    # @!attribute path
    #   <p>A single Amazon S3 path to write to.</p>
    #   @return [String]
    # @!attribute compression
    #   <p>Specifies how the data is compressed. This is generally not necessary if the data has a standard file extension. Possible values are <code>"gzip"</code> and <code>"bzip"</code>).</p>
    #   @return [String]
    # @!attribute number_target_partitions
    #   <p>Specifies the number of target partitions for Parquet files when writing to Amazon S3 using Glue.</p>
    #   @return [String]
    # @!attribute schema_change_policy
    #   <p>A policy that specifies update behavior for the crawler.</p>
    #   @return [Types::DirectSchemaChangePolicy]
    # @!attribute auto_data_quality
    #   <p>Specifies whether to automatically enable data quality evaluation for the S3 Glue Parquet target. When set to <code>true</code>, 
    #         data quality checks are performed automatically during the write operation.</p>
    #   @return [Types::AutoDataQuality]
    class S3GlueParquetTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :path,
      :compression,
      :number_target_partitions,
      :schema_change_policy,
      :auto_data_quality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a target that writes to a Hudi data source in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute partition_keys
    #   <p>Specifies native partitioning using a sequence of keys.</p>
    #   @return [Array<Array<String>>]
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #   @return [String]
    # @!attribute additional_options
    #   <p>Specifies additional connection options for the connector.</p>
    #   @return [Hash<String, String>]
    # @!attribute schema_change_policy
    #   <p>A policy that specifies update behavior for the crawler.</p>
    #   @return [Types::CatalogSchemaChangePolicy]
    # @!attribute auto_data_quality
    #   <p>Specifies whether to automatically enable data quality evaluation for the S3 Hudi catalog target. When set to <code>true</code>, 
    #         data quality checks are performed automatically during the write operation.</p>
    #   @return [Types::AutoDataQuality]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the S3 Hudi catalog target.</p>
    #   @return [Array<Types::GlueSchema>]
    class S3HudiCatalogTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :table,
      :database,
      :additional_options,
      :schema_change_policy,
      :auto_data_quality,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a target that writes to a Hudi data source in Amazon S3.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute path
    #   <p>The Amazon S3 path of your Hudi data source to write to.</p>
    #   @return [String]
    # @!attribute compression
    #   <p>Specifies how the data is compressed. This is generally not necessary if the data has a standard file extension. Possible values are <code>"gzip"</code> and <code>"bzip"</code>).</p>
    #   @return [String]
    # @!attribute number_target_partitions
    #   <p>Specifies the number of target partitions for distributing Hudi dataset files across Amazon S3.</p>
    #   @return [String]
    # @!attribute partition_keys
    #   <p>Specifies native partitioning using a sequence of keys.</p>
    #   @return [Array<Array<String>>]
    # @!attribute format
    #   <p>Specifies the data output format for the target.</p>
    #   @return [String]
    # @!attribute additional_options
    #   <p>Specifies additional connection options for the connector.</p>
    #   @return [Hash<String, String>]
    # @!attribute schema_change_policy
    #   <p>A policy that specifies update behavior for the crawler.</p>
    #   @return [Types::DirectSchemaChangePolicy]
    # @!attribute auto_data_quality
    #   <p>Specifies whether to automatically enable data quality evaluation for the S3 Hudi direct target. When set to <code>true</code>, 
    #         data quality checks are performed automatically during the write operation.</p>
    #   @return [Types::AutoDataQuality]
    class S3HudiDirectTarget < Struct.new(
      :name,
      :inputs,
      :path,
      :compression,
      :number_target_partitions,
      :partition_keys,
      :format,
      :additional_options,
      :schema_change_policy,
      :auto_data_quality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a Hudi data source stored in Amazon S3.</p>
    # @!attribute name
    #   <p>The name of the Hudi source.</p>
    #   @return [String]
    # @!attribute paths
    #   <p>A list of the Amazon S3 paths to read from.</p>
    #   @return [Array<String>]
    # @!attribute additional_hudi_options
    #   <p>Specifies additional connection options.</p>
    #   @return [Hash<String, String>]
    # @!attribute additional_options
    #   <p>Specifies additional options for the connector.</p>
    #   @return [Types::S3DirectSourceAdditionalOptions]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the Hudi source.</p>
    #   @return [Array<Types::GlueSchema>]
    class S3HudiSource < Struct.new(
      :name,
      :paths,
      :additional_hudi_options,
      :additional_options,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a HyperDirect data target that writes to Amazon S3.</p>
    # @!attribute name
    #   <p>The unique identifier for the HyperDirect target node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>Specifies the input source for the HyperDirect target.</p>
    #   @return [Array<String>]
    # @!attribute format
    #   <p>Specifies the data output format for the HyperDirect target.</p>
    #   @return [String]
    # @!attribute partition_keys
    #   <p>Defines the partitioning strategy for the output data.</p>
    #   @return [Array<Array<String>>]
    # @!attribute path
    #   <p>The S3 location where the output data will be written.</p>
    #   @return [String]
    # @!attribute compression
    #   <p>The compression type to apply to the output data.</p>
    #   @return [String]
    # @!attribute schema_change_policy
    #   <p>Defines how schema changes are handled during write operations.</p>
    #   @return [Types::DirectSchemaChangePolicy]
    # @!attribute auto_data_quality
    #   <p>Specifies whether to automatically enable data quality evaluation for the S3 Hyper direct target. When set to <code>true</code>, data quality checks are performed automatically during the write operation.</p>
    #   @return [Types::AutoDataQuality]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the S3 Hyper direct target.</p>
    #   @return [Array<Types::GlueSchema>]
    class S3HyperDirectTarget < Struct.new(
      :name,
      :inputs,
      :format,
      :partition_keys,
      :path,
      :compression,
      :schema_change_policy,
      :auto_data_quality,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Apache Iceberg catalog target that writes data to Amazon S3 and registers the table in the Glue Data Catalog.</p>
    # @!attribute name
    #   <p>The name of the Iceberg catalog target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The input connection for the Iceberg catalog target.</p>
    #   @return [Array<String>]
    # @!attribute partition_keys
    #   <p>A list of partition keys for the Iceberg table.</p>
    #   @return [Array<Array<String>>]
    # @!attribute table
    #   <p>The name of the table to write to in the catalog.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #   @return [String]
    # @!attribute additional_options
    #   <p>Specifies additional connection options for the Iceberg catalog target.</p>
    #   @return [Hash<String, String>]
    # @!attribute schema_change_policy
    #   <p>The policy for handling schema changes in the catalog target.</p>
    #   @return [Types::CatalogSchemaChangePolicy]
    # @!attribute auto_data_quality
    #   <p>Specifies whether to automatically enable data quality evaluation for the S3 Iceberg catalog target. When set to <code>true</code>, data quality checks are performed automatically during the write operation.</p>
    #   @return [Types::AutoDataQuality]
    class S3IcebergCatalogTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :table,
      :database,
      :additional_options,
      :schema_change_policy,
      :auto_data_quality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a target that writes to an Iceberg data source in Amazon S3.</p>
    # @!attribute name
    #   <p>Specifies the unique identifier for the Iceberg target node in your data pipeline.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>Defines the single input source that provides data to this Iceberg target.</p>
    #   @return [Array<String>]
    # @!attribute partition_keys
    #   <p>Specifies the columns used to partition the Iceberg table data in S3.</p>
    #   @return [Array<Array<String>>]
    # @!attribute path
    #   <p>Defines the S3 location where the Iceberg table data will be stored.</p>
    #   @return [String]
    # @!attribute format
    #   <p>Specifies the file format used for storing Iceberg table data (e.g., Parquet, ORC).</p>
    #   @return [String]
    # @!attribute additional_options
    #   <p>Provides additional configuration options for customizing the Iceberg table behavior.</p>
    #   @return [Hash<String, String>]
    # @!attribute schema_change_policy
    #   <p>Defines how schema changes are handled when writing data to the Iceberg table.</p>
    #   @return [Types::DirectSchemaChangePolicy]
    # @!attribute auto_data_quality
    #   <p>Specifies configuration options for automatic data quality evaluation in Glue jobs. This structure enables automated data quality 
    #         checks and monitoring during ETL operations, helping to ensure data integrity and reliability without manual intervention.</p>
    #   @return [Types::AutoDataQuality]
    # @!attribute compression
    #   <p>Specifies the compression codec used for Iceberg table files in S3.</p>
    #   @return [String]
    # @!attribute number_target_partitions
    #   <p>Sets the number of target partitions for distributing Iceberg table files across S3.</p>
    #   @return [String]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the S3 Iceberg direct target.</p>
    #   @return [Array<Types::GlueSchema>]
    class S3IcebergDirectTarget < Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :path,
      :format,
      :additional_options,
      :schema_change_policy,
      :auto_data_quality,
      :compression,
      :number_target_partitions,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a JSON data store stored in Amazon S3.</p>
    # @!attribute name
    #   <p>The name of the data store.</p>
    #   @return [String]
    # @!attribute paths
    #   <p>A list of the Amazon S3 paths to read from.</p>
    #   @return [Array<String>]
    # @!attribute compression_type
    #   <p>Specifies how the data is compressed. This is generally not necessary if the data has a standard file extension. Possible values are <code>"gzip"</code> and <code>"bzip"</code>).</p>
    #   @return [String]
    # @!attribute exclusions
    #   <p>A string containing a JSON list of Unix-style glob patterns to exclude. For example, "[\"**.pdf\"]" excludes all PDF files. </p>
    #   @return [Array<String>]
    # @!attribute group_size
    #   <p>The target group size in bytes. The default is computed based on the input data size and the size of your cluster. When there are fewer than 50,000 input files, <code>"groupFiles"</code> must be set to <code>"inPartition"</code> for this to take effect.</p>
    #   @return [String]
    # @!attribute group_files
    #   <p>Grouping files is turned on by default when the input contains more than 50,000 files. To turn on grouping with fewer than 50,000 files, set this parameter to "inPartition". To disable grouping when there are more than 50,000 files, set this parameter to <code>"none"</code>.</p>
    #   @return [String]
    # @!attribute recurse
    #   <p>If set to true, recursively reads files in all subdirectories under the specified paths.</p>
    #   @return [Boolean]
    # @!attribute max_band
    #   <p>This option controls the duration in milliseconds after which the s3 listing is likely to be consistent. Files with modification timestamps falling within the last maxBand milliseconds are tracked specially when using JobBookmarks to account for Amazon S3 eventual consistency. Most users don't need to set this option. The default is 900000 milliseconds, or 15 minutes.</p>
    #   @return [Integer]
    # @!attribute max_files_in_band
    #   <p>This option specifies the maximum number of files to save from the last maxBand seconds. If this number is exceeded, extra files are skipped and only processed in the next job run.</p>
    #   @return [Integer]
    # @!attribute additional_options
    #   <p>Specifies additional connection options.</p>
    #   @return [Types::S3DirectSourceAdditionalOptions]
    # @!attribute json_path
    #   <p>A JsonPath string defining the JSON data.</p>
    #   @return [String]
    # @!attribute multiline
    #   <p>A Boolean value that specifies whether a single record can span multiple lines. This can occur when a field contains a quoted new-line character. You must set this option to True if any record spans multiple lines. The default value is <code>False</code>, which allows for more aggressive file-splitting during parsing.</p>
    #   @return [Boolean]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the S3 JSON source.</p>
    #   @return [Array<Types::GlueSchema>]
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
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Apache Parquet data store stored in Amazon S3.</p>
    # @!attribute name
    #   <p>The name of the data store.</p>
    #   @return [String]
    # @!attribute paths
    #   <p>A list of the Amazon S3 paths to read from.</p>
    #   @return [Array<String>]
    # @!attribute compression_type
    #   <p>Specifies how the data is compressed. This is generally not necessary if the data has a standard file extension. Possible values are <code>"gzip"</code> and <code>"bzip"</code>).</p>
    #   @return [String]
    # @!attribute exclusions
    #   <p>A string containing a JSON list of Unix-style glob patterns to exclude. For example, "[\"**.pdf\"]" excludes all PDF files. </p>
    #   @return [Array<String>]
    # @!attribute group_size
    #   <p>The target group size in bytes. The default is computed based on the input data size and the size of your cluster. When there are fewer than 50,000 input files, <code>"groupFiles"</code> must be set to <code>"inPartition"</code> for this to take effect.</p>
    #   @return [String]
    # @!attribute group_files
    #   <p>Grouping files is turned on by default when the input contains more than 50,000 files. To turn on grouping with fewer than 50,000 files, set this parameter to "inPartition". To disable grouping when there are more than 50,000 files, set this parameter to <code>"none"</code>.</p>
    #   @return [String]
    # @!attribute recurse
    #   <p>If set to true, recursively reads files in all subdirectories under the specified paths.</p>
    #   @return [Boolean]
    # @!attribute max_band
    #   <p>This option controls the duration in milliseconds after which the s3 listing is likely to be consistent. Files with modification timestamps falling within the last maxBand milliseconds are tracked specially when using JobBookmarks to account for Amazon S3 eventual consistency. Most users don't need to set this option. The default is 900000 milliseconds, or 15 minutes.</p>
    #   @return [Integer]
    # @!attribute max_files_in_band
    #   <p>This option specifies the maximum number of files to save from the last maxBand seconds. If this number is exceeded, extra files are skipped and only processed in the next job run.</p>
    #   @return [Integer]
    # @!attribute additional_options
    #   <p>Specifies additional connection options.</p>
    #   @return [Types::S3DirectSourceAdditionalOptions]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the S3 Parquet source.</p>
    #   @return [Array<Types::GlueSchema>]
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
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies additional connection options for the Amazon S3 data store.</p>
    # @!attribute bounded_size
    #   <p>Sets the upper limit for the target size of the dataset in bytes that will be processed.</p>
    #   @return [Integer]
    # @!attribute bounded_files
    #   <p>Sets the upper limit for the target number of files that will be processed.</p>
    #   @return [Integer]
    class S3SourceAdditionalOptions < Struct.new(
      :bounded_size,
      :bounded_files,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a data store in Amazon Simple Storage Service (Amazon S3).</p>
    # @!attribute path
    #   <p>The path to the Amazon S3 target.</p>
    #   @return [String]
    # @!attribute exclusions
    #   <p>A list of glob patterns used to exclude from the crawl.
    #         For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html">Catalog Tables with a Crawler</a>.</p>
    #   @return [Array<String>]
    # @!attribute connection_name
    #   <p>The name of a connection which allows a job or crawler to access data in Amazon S3 within an Amazon Virtual Private Cloud environment (Amazon VPC).</p>
    #   @return [String]
    # @!attribute sample_size
    #   <p>Sets the number of files in each leaf folder to be crawled when crawling sample files in a dataset. If not set, all the files are crawled. A valid value is an integer between 1 and 249.</p>
    #   @return [Integer]
    # @!attribute event_queue_arn
    #   <p>A valid Amazon SQS ARN. For example, <code>arn:aws:sqs:region:account:sqs</code>.</p>
    #   @return [String]
    # @!attribute dlq_event_queue_arn
    #   <p>A valid Amazon dead-letter SQS ARN. For example, <code>arn:aws:sqs:region:account:deadLetterQueue</code>.</p>
    #   @return [String]
    class S3Target < Struct.new(
      :path,
      :exclusions,
      :connection_name,
      :sample_size,
      :event_queue_arn,
      :dlq_event_queue_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A scheduling object using a <code>cron</code> statement to schedule an event.</p>
    # @!attribute schedule_expression
    #   <p>A <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
    #         something every day at 12:15 UTC, you would specify:
    #         <code>cron(15 12 * * ? *)</code>.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the schedule.</p>
    #   @return [String]
    class Schedule < Struct.new(
      :schedule_expression,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified scheduler is not running.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class SchedulerNotRunningException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified scheduler is already running.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class SchedulerRunningException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified scheduler is transitioning.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class SchedulerTransitioningException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A policy that specifies update and deletion behaviors for the crawler.</p>
    # @!attribute update_behavior
    #   <p>The update behavior when the crawler finds a changed schema.</p>
    #   @return [String]
    # @!attribute delete_behavior
    #   <p>The deletion behavior when the crawler finds a deleted object.</p>
    #   @return [String]
    class SchemaChangePolicy < Struct.new(
      :update_behavior,
      :delete_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair representing a column and data type that this transform can
    #       run against. The <code>Schema</code> parameter of the <code>MLTransform</code> may contain up to 100 of these structures.</p>
    # @!attribute name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The type of data in the column.</p>
    #   @return [String]
    class SchemaColumn < Struct.new(
      :name,
      :data_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The unique ID of the schema in the Glue schema registry.</p>
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the schema registry that contains the schema.</p>
    #   @return [String]
    class SchemaId < Struct.new(
      :schema_arn,
      :schema_name,
      :registry_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains minimal details for a schema.</p>
    # @!attribute registry_name
    #   <p>the name of the registry where the schema resides.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) for the schema.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the schema.</p>
    #   @return [String]
    # @!attribute schema_status
    #   <p>The status of the schema.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time that a schema was created.</p>
    #   @return [String]
    # @!attribute updated_time
    #   <p>The date and time that a schema was updated.</p>
    #   @return [String]
    class SchemaListItem < Struct.new(
      :registry_name,
      :schema_name,
      :schema_arn,
      :description,
      :schema_status,
      :created_time,
      :updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that references a schema stored in the Glue Schema Registry.</p>
    # @!attribute schema_id
    #   <p>A structure that contains schema identity fields. Either this or the <code>SchemaVersionId</code> has to be provided.</p>
    #   @return [Types::SchemaId]
    # @!attribute schema_version_id
    #   <p>The unique ID assigned to a version of the schema. Either this or the <code>SchemaId</code> has to be provided.</p>
    #   @return [String]
    # @!attribute schema_version_number
    #   <p>The version number of the schema.</p>
    #   @return [Integer]
    class SchemaReference < Struct.new(
      :schema_id,
      :schema_version_id,
      :schema_version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains the error details for an operation on a schema version.</p>
    # @!attribute version_number
    #   <p>The version number of the schema.</p>
    #   @return [Integer]
    # @!attribute error_details
    #   <p>The details of the error for the schema version.</p>
    #   @return [Types::ErrorDetails]
    class SchemaVersionErrorItem < Struct.new(
      :version_number,
      :error_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the details about a schema version.</p>
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #   @return [String]
    # @!attribute schema_version_id
    #   <p>The unique identifier of the schema version.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the schema.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the schema version.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time the schema version was created.</p>
    #   @return [String]
    class SchemaVersionListItem < Struct.new(
      :schema_arn,
      :schema_version_id,
      :version_number,
      :status,
      :created_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing the schema version information.</p>
    # @!attribute latest_version
    #   <p>The latest version available for the schema.</p>
    #   @return [Boolean]
    # @!attribute version_number
    #   <p>The version number of the schema.</p>
    #   @return [Integer]
    class SchemaVersionNumber < Struct.new(
      :latest_version,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:latest_version] = false unless options.key?(:latest_version)
        super
      end
    end

    # @!attribute catalog_id
    #   <p>A unique identifier, consisting of <code>
    #                  <i>account_id</i>
    #               </code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, included if this is a continuation call.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A list of key-value pairs, and a comparator used to filter the search results. Returns all entities matching the predicate.</p>
    #            <p>The <code>Comparator</code> member of the <code>PropertyPredicate</code> struct is used only for time fields, and can be omitted for other field types. Also, when comparing string values, such as when <code>Key=Name</code>, a fuzzy match algorithm is used. The <code>Key</code> field (for example, the value of the <code>Name</code> field) is split on certain punctuation characters, for example, -, :, #, etc. into tokens. Then each token is exact-match compared with the <code>Value</code> member of <code>PropertyPredicate</code>. For example, if <code>Key=Name</code> and <code>Value=link</code>, tables named <code>customer-link</code> and <code>xx-link-yy</code> are returned, but <code>xxlinkyy</code> is not returned.</p>
    #   @return [Array<Types::PropertyPredicate>]
    # @!attribute search_text
    #   <p>A string used for a text search.</p>
    #            <p>Specifying a value in quotes filters based on an exact match to the value.</p>
    #   @return [String]
    # @!attribute sort_criteria
    #   <p>A list of criteria for sorting the results by a field name, in an ascending or descending order.</p>
    #   @return [Array<Types::SortCriterion>]
    # @!attribute max_results
    #   <p>The maximum number of tables to return in a single response.</p>
    #   @return [Integer]
    # @!attribute resource_share_type
    #   <p>Allows you to specify that you want to search the tables shared with your account. The allowable values are <code>FOREIGN</code> or <code>ALL</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>If set to <code>FOREIGN</code>, will search the tables shared with your account. </p>
    #               </li>
    #               <li>
    #                  <p>If set to <code>ALL</code>, will search the tables shared with your account, as well as the tables in yor local account. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute include_status_details
    #   <p>Specifies whether to include status details related to a request to create or update an Glue Data Catalog view.</p>
    #   @return [Boolean]
    class SearchTablesRequest < Struct.new(
      :catalog_id,
      :next_token,
      :filters,
      :search_text,
      :sort_criteria,
      :max_results,
      :resource_share_type,
      :include_status_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, present if the current list segment is not the last.</p>
    #   @return [String]
    # @!attribute table_list
    #   <p>A list of the requested <code>Table</code> objects. The <code>SearchTables</code> response returns only the tables that you have access to.</p>
    #   @return [Array<Types::Table>]
    class SearchTablesResponse < Struct.new(
      :next_token,
      :table_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a security configuration.</p>
    # @!attribute name
    #   <p>The name of the security configuration.</p>
    #   @return [String]
    # @!attribute created_time_stamp
    #   <p>The time at which this security configuration was created.</p>
    #   @return [Time]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration associated with this security configuration.</p>
    #   @return [Types::EncryptionConfiguration]
    class SecurityConfiguration < Struct.new(
      :name,
      :created_time_stamp,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a non-overlapping region of a table's partitions, allowing
    #       multiple requests to be run in parallel.</p>
    # @!attribute segment_number
    #   <p>The zero-based index number of the segment. For example, if the total number of segments
    #         is 4, <code>SegmentNumber</code> values range from 0 through 3.</p>
    #   @return [Integer]
    # @!attribute total_segments
    #   <p>The total number of segments.</p>
    #   @return [Integer]
    class Segment < Struct.new(
      :segment_number,
      :total_segments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:segment_number] = 0 unless options.key?(:segment_number)
        super
      end
    end

    # <p>Specifies a transform that chooses the data property keys that you want to keep.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #   @return [Array<String>]
    # @!attribute paths
    #   <p>A JSON path to a variable in the data structure.</p>
    #   @return [Array<Array<String>>]
    class SelectFields < Struct.new(
      :name,
      :inputs,
      :paths,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a transform that chooses one <code>DynamicFrame</code> from a collection of <code>DynamicFrames</code>. The output is the selected <code>DynamicFrame</code>
    #          </p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #   @return [Array<String>]
    # @!attribute index
    #   <p>The index for the DynamicFrame to be selected.</p>
    #   @return [Integer]
    class SelectFromCollection < Struct.new(
      :name,
      :inputs,
      :index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:index] = 0 unless options.key?(:index)
        super
      end
    end

    # <p>Information about a serialization/deserialization program (SerDe) that serves as an
    #       extractor and loader.</p>
    # @!attribute name
    #   <p>Name of the SerDe.</p>
    #   @return [String]
    # @!attribute serialization_library
    #   <p>Usually the class that implements the SerDe. An example is
    #           <code>org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe</code>.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>These key-value pairs define initialization parameters for the SerDe.</p>
    #   @return [Hash<String, String>]
    class SerDeInfo < Struct.new(
      :name,
      :serialization_library,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The period in which a remote Spark runtime environment is running.</p>
    # @!attribute id
    #   <p>The ID of the session.</p>
    #   @return [String]
    # @!attribute created_on
    #   <p>The time and date when the session was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The session status. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message displayed during the session.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the session.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role associated with the Session.</p>
    #   @return [String]
    # @!attribute command
    #   <p>The command object.See SessionCommand.</p>
    #   @return [Types::SessionCommand]
    # @!attribute default_arguments
    #   <p>A map array of key-value pairs. Max is 75 pairs. </p>
    #   @return [Hash<String, String>]
    # @!attribute connections
    #   <p>The number of connections used for the session.</p>
    #   @return [Types::ConnectionsList]
    # @!attribute progress
    #   <p>The code execution progress of the session.</p>
    #   @return [Float]
    # @!attribute max_capacity
    #   <p>The number of Glue data processing units (DPUs) that can be allocated when the job runs. 
    #         A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB memory. </p>
    #   @return [Float]
    # @!attribute security_configuration
    #   <p>The name of the SecurityConfiguration structure to be used with the session.</p>
    #   @return [String]
    # @!attribute glue_version
    #   <p>The Glue version determines the versions of Apache Spark and Python that Glue supports. 
    #         The GlueVersion must be greater than 2.0.</p>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>WorkerType</code> to use for the session.</p>
    #   @return [Integer]
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when a session runs. Accepts a value of <code>G.1X</code>, <code>G.2X</code>, <code>G.4X</code>, or <code>G.8X</code> for Spark sessions. Accepts the value <code>Z.2X</code> for Ray sessions.</p>
    #   @return [String]
    # @!attribute completed_on
    #   <p>The date and time that this session is completed.</p>
    #   @return [Time]
    # @!attribute execution_time
    #   <p>The total time the session ran for.</p>
    #   @return [Float]
    # @!attribute dpu_seconds
    #   <p>The DPUs consumed by the session (formula: ExecutionTime * MaxCapacity).</p>
    #   @return [Float]
    # @!attribute idle_timeout
    #   <p>The number of minutes when idle before the session times out.</p>
    #   @return [Integer]
    # @!attribute profile_name
    #   <p>The name of an Glue usage profile associated with the session.</p>
    #   @return [String]
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
      :profile_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:progress] = 0 unless options.key?(:progress)
        super
      end
    end

    # <p>The <code>SessionCommand</code> that runs the job.</p>
    # @!attribute name
    #   <p>Specifies the name of the SessionCommand. Can be 'glueetl' or 'gluestreaming'.</p>
    #   @return [String]
    # @!attribute python_version
    #   <p>Specifies the Python version. The Python version indicates the version supported for jobs of type Spark.</p>
    #   @return [String]
    class SessionCommand < Struct.new(
      :name,
      :python_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies skewed values in a table. Skewed values are those that occur with very high
    #       frequency.</p>
    # @!attribute skewed_column_names
    #   <p>A list of names of columns that contain skewed values.</p>
    #   @return [Array<String>]
    # @!attribute skewed_column_values
    #   <p>A list of values that appear so frequently as to be considered
    #         skewed.</p>
    #   @return [Array<String>]
    # @!attribute skewed_column_value_location_maps
    #   <p>A mapping of skewed values to the columns that contain them.</p>
    #   @return [Hash<String, String>]
    class SkewedInfo < Struct.new(
      :skewed_column_names,
      :skewed_column_values,
      :skewed_column_value_location_maps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies configuration for Snowflake nodes in Glue Studio.</p>
    # @!attribute source_type
    #   <p>Specifies how retrieved data is specified. Valid values: <code>"table"</code>, <code>
    #         "query"</code>.</p>
    #   @return [String]
    # @!attribute connection
    #   <p>Specifies a Glue Data Catalog Connection to a Snowflake endpoint.</p>
    #   @return [Types::Option]
    # @!attribute schema
    #   <p>Specifies a Snowflake database schema for your node to use.</p>
    #   @return [String]
    # @!attribute table
    #   <p>Specifies a Snowflake table for your node to use.</p>
    #   @return [String]
    # @!attribute database
    #   <p>Specifies a Snowflake database for your node to use.</p>
    #   @return [String]
    # @!attribute temp_dir
    #   <p>Not currently used.</p>
    #   @return [String]
    # @!attribute iam_role
    #   <p>Not currently used.</p>
    #   @return [Types::Option]
    # @!attribute additional_options
    #   <p>Specifies additional options passed to the Snowflake connector. If options are specified
    #         elsewhere in this node, this will take precedence.</p>
    #   @return [Hash<String, String>]
    # @!attribute sample_query
    #   <p>A SQL string used to retrieve data with the <code>query</code> sourcetype.</p>
    #   @return [String]
    # @!attribute pre_action
    #   <p>A SQL string run before the Snowflake connector performs its standard actions.</p>
    #   @return [String]
    # @!attribute post_action
    #   <p>A SQL string run after the Snowflake connector performs its standard actions.</p>
    #   @return [String]
    # @!attribute action
    #   <p>Specifies what action to take when writing to a table with preexisting data. Valid values: <code>
    #         append</code>, <code>merge</code>, <code>truncate</code>, <code>drop</code>.</p>
    #   @return [String]
    # @!attribute upsert
    #   <p>Used when Action is <code>append</code>. Specifies the resolution behavior when a row
    #         already exists. If true, preexisting rows will be updated. If false, those rows will be inserted.</p>
    #   @return [Boolean]
    # @!attribute merge_action
    #   <p>Specifies a merge action. Valid values: <code>simple</code>, <code>custom</code>. If
    #         simple, merge behavior is defined by <code>MergeWhenMatched</code> and <code>
    #         MergeWhenNotMatched</code>. If custom, defined by <code>MergeClause</code>.</p>
    #   @return [String]
    # @!attribute merge_when_matched
    #   <p>Specifies how to resolve records that match preexisting data when merging. Valid values: <code>
    #         update</code>, <code>delete</code>.</p>
    #   @return [String]
    # @!attribute merge_when_not_matched
    #   <p>Specifies how to process records that do not match preexisting data when merging. Valid
    #         values: <code>insert</code>, <code>none</code>.</p>
    #   @return [String]
    # @!attribute merge_clause
    #   <p>A SQL statement that specifies a custom merge behavior.</p>
    #   @return [String]
    # @!attribute staging_table
    #   <p>The name of a staging table used when performing <code>merge</code> or upsert <code>append</code>
    #         actions. Data is written to this table, then moved to <code>table</code> by a generated
    #         postaction.</p>
    #   @return [String]
    # @!attribute selected_columns
    #   <p>Specifies the columns combined to identify a record when detecting matches for merges and
    #         upserts. A list of structures with <code>value</code>, <code>label</code> and <code>
    #         description</code> keys. Each structure describes a column.</p>
    #   @return [Array<Types::Option>]
    # @!attribute auto_pushdown
    #   <p>Specifies whether automatic query pushdown is enabled. If pushdown
    #         is enabled, then when a query is run on Spark, if part of the query can be "pushed down" to
    #         the
    #         Snowflake server, it is pushed down. This improves performance of some queries.</p>
    #   @return [Boolean]
    # @!attribute table_schema
    #   <p>Manually defines the target schema for the node. A list of structures with <code>value</code>
    #         , <code>label</code> and <code>description</code> keys. Each structure defines a column.</p>
    #   @return [Array<Types::Option>]
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
      :table_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:upsert] = false unless options.key?(:upsert)
        options[:auto_pushdown] = false unless options.key?(:auto_pushdown)
        super
      end
    end

    # <p>Specifies a Snowflake data source.</p>
    # @!attribute name
    #   <p>The name of the Snowflake data source.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Configuration for the Snowflake data source.</p>
    #   @return [Types::SnowflakeNodeData]
    # @!attribute output_schemas
    #   <p>Specifies user-defined schemas for your output data.</p>
    #   @return [Array<Types::GlueSchema>]
    class SnowflakeSource < Struct.new(
      :name,
      :data,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a Snowflake target.</p>
    # @!attribute name
    #   <p>The name of the Snowflake target.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Specifies the data of the Snowflake target node.</p>
    #   @return [Types::SnowflakeNodeData]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    class SnowflakeTarget < Struct.new(
      :name,
      :data,
      :inputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a field to sort by and a sort order.</p>
    # @!attribute field_name
    #   <p>The name of the field on which to sort.</p>
    #   @return [String]
    # @!attribute sort
    #   <p>An ascending or descending sort.</p>
    #   @return [String]
    class SortCriterion < Struct.new(
      :field_name,
      :sort,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details for a source control configuration for a job, allowing synchronization of job artifacts to or from a remote repository.</p>
    # @!attribute provider
    #   <p>The provider for the remote repository.</p>
    #   @return [String]
    # @!attribute repository
    #   <p>The name of the remote repository that contains the job artifacts.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the remote repository that contains the job artifacts.</p>
    #   @return [String]
    # @!attribute branch
    #   <p>An optional branch in the remote repository.</p>
    #   @return [String]
    # @!attribute folder
    #   <p>An optional folder in the remote repository.</p>
    #   @return [String]
    # @!attribute last_commit_id
    #   <p>The last commit ID for a commit in the remote repository.</p>
    #   @return [String]
    # @!attribute auth_strategy
    #   <p>The type of authentication, which can be an authentication token stored in Amazon Web Services Secrets Manager, or a personal access token.</p>
    #   @return [String]
    # @!attribute auth_token
    #   <p>The value of an authorization token.</p>
    #   @return [String]
    class SourceControlDetails < Struct.new(
      :provider,
      :repository,
      :owner,
      :branch,
      :folder,
      :last_commit_id,
      :auth_strategy,
      :auth_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource properties associated with the integration source.</p>
    # @!attribute role_arn
    #   <p>The IAM role to access the Glue connection.</p>
    #   @return [String]
    class SourceProcessingProperties < Struct.new(
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Properties used by the source leg to process data from the source.</p>
    # @!attribute fields
    #   <p>A list of fields used for column-level filtering. Currently unsupported.</p>
    #   @return [Array<String>]
    # @!attribute filter_predicate
    #   <p>A condition clause used for row-level filtering. Currently unsupported.</p>
    #   @return [String]
    # @!attribute primary_key
    #   <p>Provide the primary key set for this table. Currently supported specifically for SAP <code>EntityOf</code> entities upon request. Contact 
    #         Amazon Web Services Support to make this feature available.</p>
    #   @return [Array<String>]
    # @!attribute record_update_field
    #   <p>Incremental pull timestamp-based field. Currently unsupported.</p>
    #   @return [String]
    class SourceTableConfig < Struct.new(
      :fields,
      :filter_predicate,
      :primary_key,
      :record_update_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a connector to an Apache Spark data source.</p>
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection that is associated with the connector.</p>
    #   @return [String]
    # @!attribute connector_name
    #   <p>The name of a connector that assists with accessing the data store in Glue Studio.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection, such as marketplace.spark or custom.spark, designating a connection to an Apache Spark data store.</p>
    #   @return [String]
    # @!attribute additional_options
    #   <p>Additional connection options for the connector.</p>
    #   @return [Hash<String, String>]
    # @!attribute output_schemas
    #   <p>Specifies data schema for the custom spark source.</p>
    #   @return [Array<Types::GlueSchema>]
    class SparkConnectorSource < Struct.new(
      :name,
      :connection_name,
      :connector_name,
      :connection_type,
      :additional_options,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a target that uses an Apache Spark connector.</p>
    # @!attribute name
    #   <p>The name of the data target.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #   @return [Array<String>]
    # @!attribute connection_name
    #   <p>The name of a connection for an Apache Spark connector.</p>
    #   @return [String]
    # @!attribute connector_name
    #   <p>The name of an Apache Spark connector.</p>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection, such as marketplace.spark or custom.spark, designating a connection to an Apache Spark data store.</p>
    #   @return [String]
    # @!attribute additional_options
    #   <p>Additional connection options for the connector.</p>
    #   @return [Hash<String, String>]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the custom spark target.</p>
    #   @return [Array<Types::GlueSchema>]
    class SparkConnectorTarget < Struct.new(
      :name,
      :inputs,
      :connection_name,
      :connector_name,
      :connection_type,
      :additional_options,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a transform where you enter a SQL query using Spark SQL syntax to transform the data. The output is a single <code>DynamicFrame</code>.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names. You can associate a table name with each input node to use in the SQL query. The name you choose must meet the Spark SQL naming restrictions.</p>
    #   @return [Array<String>]
    # @!attribute sql_query
    #   <p>A SQL query that must use Spark SQL syntax and return a single data set.</p>
    #   @return [String]
    # @!attribute sql_aliases
    #   <p>A list of aliases. An alias allows you to specify what name to use in the SQL for a given input. For example, you have a datasource named "MyDataSource". If you specify <code>From</code> as MyDataSource, and <code>Alias</code> as SqlName, then in your SQL you can do:</p>
    #            <p>
    #               <code>select *
    #   from SqlName</code>
    #            </p>
    #            <p>and that gets data from MyDataSource.</p>
    #   @return [Array<Types::SqlAlias>]
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the SparkSQL transform.</p>
    #   @return [Array<Types::GlueSchema>]
    class SparkSQL < Struct.new(
      :name,
      :inputs,
      :sql_query,
      :sql_aliases,
      :output_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a transform that writes samples of the data to an Amazon S3 bucket.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #   @return [Array<String>]
    # @!attribute path
    #   <p>A path in Amazon S3 where the transform will write a subset of records from the dataset to a JSON file in an Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute topk
    #   <p>Specifies a number of records to write starting from the beginning of the dataset.</p>
    #   @return [Integer]
    # @!attribute prob
    #   <p>The probability (a decimal value with a maximum value of 1) of picking any given record. A value of 1 indicates that each row read from the dataset should be included in the sample output.</p>
    #   @return [Float]
    class Spigot < Struct.new(
      :name,
      :inputs,
      :path,
      :topk,
      :prob,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a transform that splits data property keys into two <code>DynamicFrames</code>. The output is a collection of <code>DynamicFrames</code>: one with selected data property keys, and one with the remaining data property keys.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #   @return [Array<String>]
    # @!attribute paths
    #   <p>A JSON path to a variable in the data structure.</p>
    #   @return [Array<Array<String>>]
    class SplitFields < Struct.new(
      :name,
      :inputs,
      :paths,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single entry in the list of values for <code>SqlAliases</code>. </p>
    # @!attribute from
    #   <p>A table, or a column in a table.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>A temporary name given to a table, or a column in a table.</p>
    #   @return [String]
    class SqlAlias < Struct.new(
      :from,
      :alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute blueprint_name
    #   <p>The name of the blueprint.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Specifies the parameters as a <code>BlueprintParameters</code> object.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>Specifies the IAM role used to create the workflow.</p>
    #   @return [String]
    class StartBlueprintRunRequest < Struct.new(
      :blueprint_name,
      :parameters,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute run_id
    #   <p>The run ID for this blueprint run.</p>
    #   @return [String]
    class StartBlueprintRunResponse < Struct.new(
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the database where the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table to generate statistics.</p>
    #   @return [String]
    # @!attribute column_name_list
    #   <p>A list of the column names to generate statistics. If none is supplied, all column names for the table will be used by default.</p>
    #   @return [Array<String>]
    # @!attribute role
    #   <p>The IAM role that the service assumes to generate statistics.</p>
    #   @return [String]
    # @!attribute sample_size
    #   <p>The percentage of rows used to generate statistics. If none is supplied, the entire table will be used to generate stats.</p>
    #   @return [Float]
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the table reside. If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute security_configuration
    #   <p>Name of the security configuration that is used to encrypt CloudWatch logs for the column stats task run.</p>
    #   @return [String]
    class StartColumnStatisticsTaskRunRequest < Struct.new(
      :database_name,
      :table_name,
      :column_name_list,
      :role,
      :sample_size,
      :catalog_id,
      :security_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute column_statistics_task_run_id
    #   <p>The identifier for the column statistics task run.</p>
    #   @return [String]
    class StartColumnStatisticsTaskRunResponse < Struct.new(
      :column_statistics_task_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the database where the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table for which to start a column statistic task run schedule.</p>
    #   @return [String]
    class StartColumnStatisticsTaskRunScheduleRequest < Struct.new(
      :database_name,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartColumnStatisticsTaskRunScheduleResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the crawler to start.</p>
    #   @return [String]
    class StartCrawlerRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartCrawlerResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute crawler_name
    #   <p>Name of the crawler to schedule.</p>
    #   @return [String]
    class StartCrawlerScheduleRequest < Struct.new(
      :crawler_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartCrawlerScheduleResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request of the Data Quality rule recommendation request.</p>
    # @!attribute data_source
    #   <p>The data source (Glue table) associated with this run.</p>
    #   @return [Types::DataSource]
    # @!attribute role
    #   <p>An IAM role supplied to encrypt the results of the run.</p>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of <code>G.1X</code> workers to be used in the run. The default is 5.</p>
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The timeout for a run in minutes. This is the maximum time that a run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>
    #   @return [Integer]
    # @!attribute created_ruleset_name
    #   <p>A name for the ruleset.</p>
    #   @return [String]
    # @!attribute data_quality_security_configuration
    #   <p>The name of the security configuration created with the data quality encryption option.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Used for idempotency and is recommended to be set to a random ID (such as a UUID) to avoid creating or starting multiple instances of the same resource.</p>
    #   @return [String]
    class StartDataQualityRuleRecommendationRunRequest < Struct.new(
      :data_source,
      :role,
      :number_of_workers,
      :timeout,
      :created_ruleset_name,
      :data_quality_security_configuration,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute run_id
    #   <p>The unique run identifier associated with this run.</p>
    #   @return [String]
    class StartDataQualityRuleRecommendationRunResponse < Struct.new(
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source
    #   <p>The data source (Glue table) associated with this run.</p>
    #   @return [Types::DataSource]
    # @!attribute role
    #   <p>An IAM role supplied to encrypt the results of the run.</p>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of <code>G.1X</code> workers to be used in the run. The default is 5.</p>
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The timeout for a run in minutes. This is the maximum time that a run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>Used for idempotency and is recommended to be set to a random ID (such as a UUID) to avoid creating or starting multiple instances of the same resource.</p>
    #   @return [String]
    # @!attribute additional_run_options
    #   <p>Additional run options you can specify for an evaluation run.</p>
    #   @return [Types::DataQualityEvaluationRunAdditionalRunOptions]
    # @!attribute ruleset_names
    #   <p>A list of ruleset names.</p>
    #   @return [Array<String>]
    # @!attribute additional_data_sources
    #   <p>A map of reference strings to additional data sources you can specify for an evaluation run.</p>
    #   @return [Hash<String, Types::DataSource>]
    class StartDataQualityRulesetEvaluationRunRequest < Struct.new(
      :data_source,
      :role,
      :number_of_workers,
      :timeout,
      :client_token,
      :additional_run_options,
      :ruleset_names,
      :additional_data_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute run_id
    #   <p>The unique run identifier associated with this run.</p>
    #   @return [String]
    class StartDataQualityRulesetEvaluationRunResponse < Struct.new(
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #   @return [String]
    # @!attribute output_s3_path
    #   <p>The Amazon S3 path where you export the labels.</p>
    #   @return [String]
    class StartExportLabelsTaskRunRequest < Struct.new(
      :transform_id,
      :output_s3_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_run_id
    #   <p>The unique identifier for the task run.</p>
    #   @return [String]
    class StartExportLabelsTaskRunResponse < Struct.new(
      :task_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #   @return [String]
    # @!attribute input_s3_path
    #   <p>The Amazon Simple Storage Service (Amazon S3) path from where you import the
    #         labels.</p>
    #   @return [String]
    # @!attribute replace_all_labels
    #   <p>Indicates whether to overwrite your existing labels.</p>
    #   @return [Boolean]
    class StartImportLabelsTaskRunRequest < Struct.new(
      :transform_id,
      :input_s3_path,
      :replace_all_labels,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_run_id
    #   <p>The unique identifier for the task run.</p>
    #   @return [String]
    class StartImportLabelsTaskRunResponse < Struct.new(
      :task_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job definition to use.</p>
    #   @return [String]
    # @!attribute job_run_queuing_enabled
    #   <p>Specifies whether job run queuing is enabled for the job run.</p>
    #            <p>A value of true means job run queuing is enabled for the job run. If false or not populated, the job run will not be considered for queueing.</p>
    #   @return [Boolean]
    # @!attribute job_run_id
    #   <p>The ID of a previous <code>JobRun</code> to retry.</p>
    #   @return [String]
    # @!attribute arguments
    #   <p>The job arguments associated with this run. For this job run, they replace the default
    #         arguments set in the job definition itself.</p>
    #            <p>You can specify arguments here that your own job-execution script
    #         consumes, as well as arguments that Glue itself consumes.</p>
    #            <p>Job arguments may be logged. Do not pass plaintext secrets as arguments. Retrieve secrets
    #         from a Glue Connection, Secrets Manager or other secret management
    #         mechanism if you intend to keep them within the Job. </p>
    #            <p>For information about how to specify and consume your own Job arguments, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling Glue APIs in Python</a> topic in the developer guide.</p>
    #            <p>For information about the arguments you can provide to this field when configuring Spark jobs,
    #        see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by Glue</a> topic in the developer guide.</p>
    #            <p>For information about the arguments you can provide to this field when configuring Ray
    #         jobs, see <a href="https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html">Using
    #         job parameters in Ray jobs</a> in the developer guide.</p>
    #   @return [Hash<String, String>]
    # @!attribute allocated_capacity
    #   <p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p>
    #            <p>The number of Glue data processing units (DPUs) to allocate to this JobRun.
    #         You can allocate a minimum of 2 DPUs; the default is 10. A DPU is a relative measure
    #         of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
    #         For more information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue
    #           pricing page</a>.</p>
    #   @deprecated
    #     This property is deprecated, use MaxCapacity instead.
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The <code>JobRun</code> timeout in minutes. This is the maximum time that a job run can
    #         consume resources before it is terminated and enters <code>TIMEOUT</code> status. This value overrides the timeout value set in the parent job. </p>
    #            <p>Jobs must have timeout values less than 7 days or 10080 minutes. Otherwise, the jobs will throw an exception.</p>
    #            <p>When the value is left blank, the timeout is defaulted to 2880 minutes.</p>
    #            <p>Any existing Glue jobs that had a timeout value greater than 7 days will be defaulted to 7 days. For instance if you have specified a timeout of 20 days for a batch job, it will be stopped on the 7th day.</p>
    #            <p>For streaming jobs, if you have set up a maintenance window, it will be restarted during the maintenance window after 7 days.</p>
    #   @return [Integer]
    # @!attribute max_capacity
    #   <p>For Glue version 1.0 or earlier jobs, using the standard worker type, the number of
    #         Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is
    #         a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB
    #         of memory. For more information, see the <a href="https://aws.amazon.com/glue/pricing/">
    #           Glue pricing page</a>.</p>
    #            <p>For Glue version 2.0+ jobs, you cannot specify a <code>Maximum capacity</code>.
    #         Instead, you should specify a <code>Worker type</code> and the <code>Number of workers</code>.</p>
    #            <p>Do not set <code>MaxCapacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>
    #            <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
    #         running a Python shell job, an Apache Spark ETL job, or an Apache Spark streaming ETL
    #         job:</p>
    #            <ul>
    #               <li>
    #                  <p>When you specify a Python shell job (<code>JobCommand.Name</code>="pythonshell"), you can
    #             allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
    #               </li>
    #               <li>
    #                  <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>="glueetl") or Apache 
    #           Spark streaming ETL job (<code>JobCommand.Name</code>="gluestreaming"), you can allocate from 2 to 100 DPUs. 
    #           The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
    #               </li>
    #            </ul>
    #   @return [Float]
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this job
    #         run.</p>
    #   @return [String]
    # @!attribute notification_property
    #   <p>Specifies configuration properties of a job run notification.</p>
    #   @return [Types::NotificationProperty]
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when a job runs. Accepts a value of
    #             G.1X, G.2X, G.4X, G.8X or G.025X for Spark jobs. Accepts the value Z.2X for Ray jobs.</p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPUs, 16 GB of memory) with 94GB disk, and provides 1 executor per worker. We recommend this worker type for workloads such as data transforms, joins, and queries, to offers a scalable and cost effective way to run most jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPUs, 32 GB of memory) with 138GB disk, and provides 1 executor per worker. We recommend this worker type for workloads such as data transforms, joins, and queries, to offers a scalable and cost effective way to run most jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.4X</code> worker type, each worker maps to 4 DPU (16 vCPUs, 64 GB of memory) with 256GB disk, and provides 1 executor per worker. We recommend this worker type for jobs whose workloads contain your most demanding transforms, aggregations, joins, and queries. This worker type is available only for Glue version 3.0 or later Spark ETL jobs in the following Amazon Web Services Regions: US East (Ohio), US East (N. Virginia), US West (Oregon), Asia Pacific (Singapore), Asia Pacific (Sydney), Asia Pacific (Tokyo), Canada (Central), Europe (Frankfurt), Europe (Ireland), and Europe (Stockholm).</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.8X</code> worker type, each worker maps to 8 DPU (32 vCPUs, 128 GB of memory) with 512GB disk, and provides 1 executor per worker. We recommend this worker type for jobs whose workloads contain your most demanding transforms, aggregations, joins, and queries. This worker type is available only for Glue version 3.0 or later Spark ETL jobs, in the same Amazon Web Services Regions as supported for the <code>G.4X</code> worker type.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.025X</code> worker type, each worker maps to 0.25 DPU (2 vCPUs, 4 GB of memory) with 84GB disk, and provides 1 executor per worker. We recommend this worker type for low volume streaming jobs. This worker type is only available for Glue version 3.0 or later streaming jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>Z.2X</code> worker type, each worker maps to 2 M-DPU (8vCPUs, 64 GB of memory) with 128 GB disk, and provides up to 8 Ray workers based on the autoscaler.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>
    #   @return [Integer]
    # @!attribute execution_class
    #   <p>Indicates whether the job is run with a standard or flexible execution class. The standard execution-class is ideal for time-sensitive workloads that require fast job startup and dedicated resources.</p>
    #            <p>The flexible execution class is appropriate for time-insensitive jobs whose start and completion times may vary. </p>
    #            <p>Only jobs with Glue version 3.0 and above and command type <code>glueetl</code> will be allowed to set <code>ExecutionClass</code> to <code>FLEX</code>. The flexible execution class is available for Spark jobs.</p>
    #   @return [String]
    # @!attribute execution_role_session_policy
    #   <p>This inline session policy to the StartJobRun API allows you to dynamically restrict the permissions of the specified
    #         execution role for the scope of the job, without requiring the creation of additional IAM roles.</p>
    #   @return [String]
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
      :execution_class,
      :execution_role_session_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_run_id
    #   <p>The ID assigned to this job run.</p>
    #   @return [String]
    class StartJobRunResponse < Struct.new(
      :job_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #   @return [String]
    class StartMLEvaluationTaskRunRequest < Struct.new(
      :transform_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_run_id
    #   <p>The unique identifier associated with this run.</p>
    #   @return [String]
    class StartMLEvaluationTaskRunResponse < Struct.new(
      :task_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #   @return [String]
    # @!attribute output_s3_path
    #   <p>The Amazon Simple Storage Service (Amazon S3) path where you generate the labeling
    #         set.</p>
    #   @return [String]
    class StartMLLabelingSetGenerationTaskRunRequest < Struct.new(
      :transform_id,
      :output_s3_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_run_id
    #   <p>The unique run identifier that is associated with this task run.</p>
    #   @return [String]
    class StartMLLabelingSetGenerationTaskRunResponse < Struct.new(
      :task_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger to start.</p>
    #   @return [String]
    class StartTriggerRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger that was started.</p>
    #   @return [String]
    class StartTriggerResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow to start.</p>
    #   @return [String]
    # @!attribute run_properties
    #   <p>The workflow run properties for the new workflow run.</p>
    #            <p>Run properties may be logged. Do not pass plaintext secrets as properties. Retrieve secrets from a Glue Connection, Amazon Web Services Secrets Manager or other secret management mechanism if you intend to use them within the workflow run.</p>
    #   @return [Hash<String, String>]
    class StartWorkflowRunRequest < Struct.new(
      :name,
      :run_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute run_id
    #   <p>An Id for the new run.</p>
    #   @return [String]
    class StartWorkflowRunResponse < Struct.new(
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The batch condition that started the workflow run. Either the number of events in the batch size arrived,
    #       in which case the BatchSize member is non-zero, or the batch window expired, in which case the BatchWindow
    #       member is non-zero.</p>
    # @!attribute batch_size
    #   <p>Number of events in the batch.</p>
    #   @return [Integer]
    # @!attribute batch_window
    #   <p>Duration of the batch window in seconds.</p>
    #   @return [Integer]
    class StartingEventBatchCondition < Struct.new(
      :batch_size,
      :batch_window,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The statement or request for a particular action to occur in a session.</p>
    # @!attribute id
    #   <p>The ID of the statement.</p>
    #   @return [Integer]
    # @!attribute code
    #   <p>The execution code of the statement.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state while request is actioned.</p>
    #   @return [String]
    # @!attribute output
    #   <p>The output in JSON.</p>
    #   @return [Types::StatementOutput]
    # @!attribute progress
    #   <p>The code execution progress.</p>
    #   @return [Float]
    # @!attribute started_on
    #   <p>The unix time and date that the job definition was started.</p>
    #   @return [Integer]
    # @!attribute completed_on
    #   <p>The unix time and date that the job definition was completed.</p>
    #   @return [Integer]
    class Statement < Struct.new(
      :id,
      :code,
      :state,
      :output,
      :progress,
      :started_on,
      :completed_on,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:id] = 0 unless options.key?(:id)
        options[:progress] = 0 unless options.key?(:progress)
        options[:started_on] = 0 unless options.key?(:started_on)
        options[:completed_on] = 0 unless options.key?(:completed_on)
        super
      end
    end

    # <p>The code execution output in JSON format.</p>
    # @!attribute data
    #   <p>The code execution output.</p>
    #   @return [Types::StatementOutputData]
    # @!attribute execution_count
    #   <p>The execution count of the output.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the code execution output.</p>
    #   @return [String]
    # @!attribute error_name
    #   <p>The name of the error in the output.</p>
    #   @return [String]
    # @!attribute error_value
    #   <p>The error value of the output.</p>
    #   @return [String]
    # @!attribute traceback
    #   <p>The traceback of the output.</p>
    #   @return [Array<String>]
    class StatementOutput < Struct.new(
      :data,
      :execution_count,
      :status,
      :error_name,
      :error_value,
      :traceback,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:execution_count] = 0 unless options.key?(:execution_count)
        super
      end
    end

    # <p>The code execution output in JSON format.</p>
    # @!attribute text_plain
    #   <p>The code execution output in text format.</p>
    #   @return [String]
    class StatementOutputData < Struct.new(
      :text_plain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A Statistic Annotation.</p>
    # @!attribute profile_id
    #   <p>The Profile ID.</p>
    #   @return [String]
    # @!attribute statistic_id
    #   <p>The Statistic ID.</p>
    #   @return [String]
    # @!attribute statistic_recorded_on
    #   <p>The timestamp when the annotated statistic was recorded.</p>
    #   @return [Time]
    # @!attribute inclusion_annotation
    #   <p>The inclusion annotation applied to the statistic.</p>
    #   @return [Types::TimestampedInclusionAnnotation]
    class StatisticAnnotation < Struct.new(
      :profile_id,
      :statistic_id,
      :statistic_recorded_on,
      :inclusion_annotation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The statistic model result.</p>
    # @!attribute lower_bound
    #   <p>The lower bound.</p>
    #   @return [Float]
    # @!attribute upper_bound
    #   <p>The upper bound.</p>
    #   @return [Float]
    # @!attribute predicted_value
    #   <p>The predicted value.</p>
    #   @return [Float]
    # @!attribute actual_value
    #   <p>The actual value.</p>
    #   @return [Float]
    # @!attribute date
    #   <p>The date.</p>
    #   @return [Time]
    # @!attribute inclusion_annotation
    #   <p>The inclusion annotation.</p>
    #   @return [String]
    class StatisticModelResult < Struct.new(
      :lower_bound,
      :upper_bound,
      :predicted_value,
      :actual_value,
      :date,
      :inclusion_annotation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a statistic.</p>
    # @!attribute statistic_id
    #   <p>The Statistic ID.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The Profile ID.</p>
    #   @return [String]
    # @!attribute run_identifier
    #   <p>The Run Identifier</p>
    #   @return [Types::RunIdentifier]
    # @!attribute statistic_name
    #   <p>The name of the statistic.</p>
    #   @return [String]
    # @!attribute double_value
    #   <p>The value of the statistic.</p>
    #   @return [Float]
    # @!attribute evaluation_level
    #   <p>The evaluation level of the statistic. Possible values: <code>Dataset</code>, <code>Column</code>, <code>Multicolumn</code>.</p>
    #   @return [String]
    # @!attribute columns_referenced
    #   <p>The list of columns referenced by the statistic.</p>
    #   @return [Array<String>]
    # @!attribute referenced_datasets
    #   <p>The list of datasets referenced by the statistic.</p>
    #   @return [Array<String>]
    # @!attribute statistic_properties
    #   <p>A <code>StatisticPropertiesMap</code>, which contains a <code>NameString</code> and <code>DescriptionString</code>
    #            </p>
    #   @return [Hash<String, String>]
    # @!attribute recorded_on
    #   <p>The timestamp when the statistic was recorded.</p>
    #   @return [Time]
    # @!attribute inclusion_annotation
    #   <p>The inclusion annotation for the statistic.</p>
    #   @return [Types::TimestampedInclusionAnnotation]
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
      :inclusion_annotation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:double_value] = 0 unless options.key?(:double_value)
        super
      end
    end

    # <p>A structure containing information about an asynchronous change to a table.</p>
    # @!attribute requested_change
    #   <p>A <code>Table</code> object representing the requested changes.</p>
    #   @return [Types::Table]
    # @!attribute view_validations
    #   <p>A list of <code>ViewValidation</code> objects that contain information for an analytical engine to validate a view.</p>
    #   @return [Array<Types::ViewValidation>]
    class StatusDetails < Struct.new(
      :requested_change,
      :view_validations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the database where the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    class StopColumnStatisticsTaskRunRequest < Struct.new(
      :database_name,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopColumnStatisticsTaskRunResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the database where the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table for which to stop a column statistic task run schedule.</p>
    #   @return [String]
    class StopColumnStatisticsTaskRunScheduleRequest < Struct.new(
      :database_name,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopColumnStatisticsTaskRunScheduleResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the crawler to stop.</p>
    #   @return [String]
    class StopCrawlerRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopCrawlerResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute crawler_name
    #   <p>Name of the crawler whose schedule state to set.</p>
    #   @return [String]
    class StopCrawlerScheduleRequest < Struct.new(
      :crawler_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopCrawlerScheduleResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the session to be stopped.</p>
    #   @return [String]
    # @!attribute request_origin
    #   <p>The origin of the request.</p>
    #   @return [String]
    class StopSessionRequest < Struct.new(
      :id,
      :request_origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Returns the Id of the stopped session.</p>
    #   @return [String]
    class StopSessionResponse < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger to stop.</p>
    #   @return [String]
    class StopTriggerRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger that was stopped.</p>
    #   @return [String]
    class StopTriggerResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow to stop.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The ID of the workflow run to stop.</p>
    #   @return [String]
    class StopWorkflowRunRequest < Struct.new(
      :name,
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopWorkflowRunResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the physical storage of table data.</p>
    # @!attribute columns
    #   <p>A list of the <code>Columns</code> in the table.</p>
    #   @return [Array<Types::Column>]
    # @!attribute location
    #   <p>The physical location of the table. By default, this takes the form of the warehouse
    #         location, followed by the database location in the warehouse, followed by the table
    #         name.</p>
    #   @return [String]
    # @!attribute additional_locations
    #   <p>A list of locations that point to the path where a Delta table is located.</p>
    #   @return [Array<String>]
    # @!attribute input_format
    #   <p>The input format: <code>SequenceFileInputFormat</code> (binary),
    #         or <code>TextInputFormat</code>, or a custom format.</p>
    #   @return [String]
    # @!attribute output_format
    #   <p>The output format: <code>SequenceFileOutputFormat</code> (binary),
    #         or <code>IgnoreKeyTextOutputFormat</code>, or a custom format.</p>
    #   @return [String]
    # @!attribute compressed
    #   <p>
    #               <code>True</code> if the data in the table is compressed, or <code>False</code> if
    #         not.</p>
    #   @return [Boolean]
    # @!attribute number_of_buckets
    #   <p>Must be specified if the table contains any dimension columns.</p>
    #   @return [Integer]
    # @!attribute serde_info
    #   <p>The serialization/deserialization (SerDe) information.</p>
    #   @return [Types::SerDeInfo]
    # @!attribute bucket_columns
    #   <p>A list of reducer grouping columns, clustering columns, and
    #         bucketing columns in the table.</p>
    #   @return [Array<String>]
    # @!attribute sort_columns
    #   <p>A list specifying the sort order of each bucket in the table.</p>
    #   @return [Array<Types::Order>]
    # @!attribute parameters
    #   <p>The user-supplied properties in key-value form.</p>
    #   @return [Hash<String, String>]
    # @!attribute skewed_info
    #   <p>The information about values that appear frequently in a column (skewed values).</p>
    #   @return [Types::SkewedInfo]
    # @!attribute stored_as_sub_directories
    #   <p>
    #               <code>True</code> if the table data is stored in subdirectories, or <code>False</code> if
    #         not.</p>
    #   @return [Boolean]
    # @!attribute schema_reference
    #   <p>An object that references a schema stored in the Glue Schema Registry.</p>
    #            <p>When creating a table, you can pass an empty list of columns for the schema, and instead use a schema reference.</p>
    #   @return [Types::SchemaReference]
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
      :schema_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:compressed] = false unless options.key?(:compressed)
        options[:number_of_buckets] = 0 unless options.key?(:number_of_buckets)
        options[:stored_as_sub_directories] = false unless options.key?(:stored_as_sub_directories)
        super
      end
    end

    # <p>Specifies options related to data preview for viewing a sample of your data.</p>
    # @!attribute polling_time
    #   <p>The polling time in milliseconds.</p>
    #   @return [Integer]
    # @!attribute record_polling_limit
    #   <p>The limit to the number of records polled.</p>
    #   @return [Integer]
    class StreamingDataPreviewOptions < Struct.new(
      :polling_time,
      :record_polling_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines column statistics supported for character sequence data values.</p>
    # @!attribute maximum_length
    #   <p>The size of the longest string in the column.</p>
    #   @return [Integer]
    # @!attribute average_length
    #   <p>The average string length in the column.</p>
    #   @return [Float]
    # @!attribute number_of_nulls
    #   <p>The number of null values in the column.</p>
    #   @return [Integer]
    # @!attribute number_of_distinct_values
    #   <p>The number of distinct values in a column.</p>
    #   @return [Integer]
    class StringColumnStatisticsData < Struct.new(
      :maximum_length,
      :average_length,
      :number_of_nulls,
      :number_of_distinct_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:maximum_length] = 0 unless options.key?(:maximum_length)
        options[:average_length] = 0 unless options.key?(:average_length)
        options[:number_of_nulls] = 0 unless options.key?(:number_of_nulls)
        options[:number_of_distinct_values] = 0 unless options.key?(:number_of_distinct_values)
        super
      end
    end

    # <p>A structure specifying the dialect and dialect version used by the query engine.</p>
    # @!attribute dialect
    #   <p>The dialect of the query engine.</p>
    #   @return [String]
    # @!attribute dialect_version
    #   <p>The version of the dialect of the query engine. For example, 3.0.0.</p>
    #   @return [String]
    class SupportedDialect < Struct.new(
      :dialect,
      :dialect_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a collection of related data organized in columns and rows.</p>
    # @!attribute name
    #   <p>The table name. For Hive compatibility, this must be entirely
    #         lowercase.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database where the table metadata resides.
    #         For Hive compatibility, this must be all lowercase.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the table.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the table.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the table definition was created in the Data Catalog.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The last time that the table was updated.</p>
    #   @return [Time]
    # @!attribute last_access_time
    #   <p>The last time that the table was accessed. This is usually taken from HDFS, and might not
    #         be reliable.</p>
    #   @return [Time]
    # @!attribute last_analyzed_time
    #   <p>The last time that column statistics were computed for this table.</p>
    #   @return [Time]
    # @!attribute retention
    #   <p>The retention time for this table.</p>
    #   @return [Integer]
    # @!attribute storage_descriptor
    #   <p>A storage descriptor containing information about the physical storage
    #         of this table.</p>
    #   @return [Types::StorageDescriptor]
    # @!attribute partition_keys
    #   <p>A list of columns by which the table is partitioned. Only primitive
    #         types are supported as partition keys.</p>
    #            <p>When you create a table used by Amazon Athena, and you do not specify any
    #           <code>partitionKeys</code>, you must at least set the value of <code>partitionKeys</code> to
    #         an empty list. For example:</p>
    #            <p>
    #               <code>"PartitionKeys": []</code>
    #            </p>
    #   @return [Array<Types::Column>]
    # @!attribute view_original_text
    #   <p>Included for Apache Hive compatibility. Not used in the normal course of Glue operations.
    #       If the table is a <code>VIRTUAL_VIEW</code>, certain Athena configuration encoded in base64.</p>
    #   @return [String]
    # @!attribute view_expanded_text
    #   <p>Included for Apache Hive compatibility. Not used in the normal course of Glue operations.</p>
    #   @return [String]
    # @!attribute table_type
    #   <p>The type of this table.
    #         Glue will create tables with the <code>EXTERNAL_TABLE</code> type.
    #         Other services, such as Athena, may create tables with additional table types.
    #       </p>
    #            <p>Glue related table types:</p>
    #            <dl>
    #               <dt>EXTERNAL_TABLE</dt>
    #               <dd>
    #                  <p>Hive compatible attribute - indicates a non-Hive managed table.</p>
    #               </dd>
    #               <dt>GOVERNED</dt>
    #               <dd>
    #                  <p>Used by Lake Formation.
    #               The Glue Data Catalog understands <code>GOVERNED</code>.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute parameters
    #   <p>These key-value pairs define properties associated with the table.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_by
    #   <p>The person or entity who created the table.</p>
    #   @return [String]
    # @!attribute is_registered_with_lake_formation
    #   <p>Indicates whether the table has been registered with Lake Formation.</p>
    #   @return [Boolean]
    # @!attribute target_table
    #   <p>A <code>TableIdentifier</code> structure that describes a target table for resource linking.</p>
    #   @return [Types::TableIdentifier]
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the table resides.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID of the table version.</p>
    #   @return [String]
    # @!attribute federated_table
    #   <p>A <code>FederatedTable</code> structure that references an entity outside the Glue Data Catalog.</p>
    #   @return [Types::FederatedTable]
    # @!attribute view_definition
    #   <p>A structure that contains all the information that defines the view, including the dialect or dialects for the view, and the query.</p>
    #   @return [Types::ViewDefinition]
    # @!attribute is_multi_dialect_view
    #   <p>Specifies whether the view supports the SQL dialects of one or more different query engines and can therefore be read by those engines.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>A structure containing information about the state of an asynchronous change to a table.</p>
    #   @return [Types::TableStatus]
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
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retention] = 0 unless options.key?(:retention)
        options[:is_registered_with_lake_formation] = false unless options.key?(:is_registered_with_lake_formation)
        super
      end
    end

    # <p>An error record for table operations.</p>
    # @!attribute table_name
    #   <p>The name of the table. For Hive compatibility, this must be entirely lowercase.</p>
    #   @return [String]
    # @!attribute error_detail
    #   <p>The details about the error.</p>
    #   @return [Types::ErrorDetail]
    class TableError < Struct.new(
      :table_name,
      :error_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that describes a target table for resource linking.</p>
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the table resides.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database that contains the target table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the target table.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Region of the target table.</p>
    #   @return [String]
    class TableIdentifier < Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure used to define a table.</p>
    # @!attribute name
    #   <p>The table name. For Hive compatibility, this is folded to
    #         lowercase when it is stored.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the table.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The table owner. Included for Apache Hive compatibility. Not used in the normal course of Glue operations.</p>
    #   @return [String]
    # @!attribute last_access_time
    #   <p>The last time that the table was accessed.</p>
    #   @return [Time]
    # @!attribute last_analyzed_time
    #   <p>The last time that column statistics were computed for this table.</p>
    #   @return [Time]
    # @!attribute retention
    #   <p>The retention time for this table.</p>
    #   @return [Integer]
    # @!attribute storage_descriptor
    #   <p>A storage descriptor containing information about the physical storage
    #         of this table.</p>
    #   @return [Types::StorageDescriptor]
    # @!attribute partition_keys
    #   <p>A list of columns by which the table is partitioned. Only primitive
    #         types are supported as partition keys.</p>
    #            <p>When you create a table used by Amazon Athena, and you do not specify any
    #           <code>partitionKeys</code>, you must at least set the value of <code>partitionKeys</code> to
    #         an empty list. For example:</p>
    #            <p>
    #               <code>"PartitionKeys": []</code>
    #            </p>
    #   @return [Array<Types::Column>]
    # @!attribute view_original_text
    #   <p>Included for Apache Hive compatibility. Not used in the normal course of Glue operations.
    #       If the table is a <code>VIRTUAL_VIEW</code>, certain Athena configuration encoded in base64.</p>
    #   @return [String]
    # @!attribute view_expanded_text
    #   <p>Included for Apache Hive compatibility. Not used in the normal course of Glue operations.</p>
    #   @return [String]
    # @!attribute table_type
    #   <p>The type of this table.
    #         Glue will create tables with the <code>EXTERNAL_TABLE</code> type.
    #         Other services, such as Athena, may create tables with additional table types.
    #       </p>
    #            <p>Glue related table types:</p>
    #            <dl>
    #               <dt>EXTERNAL_TABLE</dt>
    #               <dd>
    #                  <p>Hive compatible attribute - indicates a non-Hive managed table.</p>
    #               </dd>
    #               <dt>GOVERNED</dt>
    #               <dd>
    #                  <p>Used by Lake Formation.
    #               The Glue Data Catalog understands <code>GOVERNED</code>.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute parameters
    #   <p>These key-value pairs define properties associated with the table.</p>
    #   @return [Hash<String, String>]
    # @!attribute target_table
    #   <p>A <code>TableIdentifier</code> structure that describes a target table for resource linking.</p>
    #   @return [Types::TableIdentifier]
    # @!attribute view_definition
    #   <p>A structure that contains all the information that defines the view, including the dialect or dialects for the view, and the query.</p>
    #   @return [Types::ViewDefinitionInput]
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
      :view_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retention] = 0 unless options.key?(:retention)
        super
      end
    end

    # <p>Contains details about an optimizer associated with a table.</p>
    # @!attribute type
    #   <p>The type of table optimizer. The valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>compaction</code>: for managing compaction with a table optimizer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>retention</code>: for managing the retention of snapshot with a table optimizer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>orphan_file_deletion</code>: for managing the deletion of orphan files with a table optimizer.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute configuration
    #   <p>A <code>TableOptimizerConfiguration</code> object that was specified when creating or updating a table optimizer.</p>
    #   @return [Types::TableOptimizerConfiguration]
    # @!attribute last_run
    #   <p>A <code>TableOptimizerRun</code> object representing the last run of the table optimizer.</p>
    #   @return [Types::TableOptimizerRun]
    # @!attribute configuration_source
    #   <p>
    #         Specifies the source of the optimizer configuration. This indicates how the table optimizer was configured and which entity or service 
    #         initiated the configuration. 
    #       </p>
    #   @return [String]
    class TableOptimizer < Struct.new(
      :type,
      :configuration,
      :last_run,
      :configuration_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details on the configuration of a table optimizer. You pass this configuration when creating or updating a table optimizer.</p>
    # @!attribute role_arn
    #   <p>A role passed by the caller which gives the service permission to update the resources associated with the optimizer on the caller's behalf.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Whether table optimization is enabled.</p>
    #   @return [Boolean]
    # @!attribute vpc_configuration
    #   <p>A <code>TableOptimizerVpcConfiguration</code> object representing the VPC configuration for a table optimizer.</p>
    #            <p>This configuration is necessary to perform optimization on tables that are in a customer VPC.</p>
    #   @return [Types::TableOptimizerVpcConfiguration]
    # @!attribute compaction_configuration
    #   <p>The configuration for a compaction optimizer. This configuration defines how data files in your table will be compacted to 
    #         improve query performance and reduce storage costs.</p>
    #   @return [Types::CompactionConfiguration]
    # @!attribute retention_configuration
    #   <p>The configuration for a snapshot retention optimizer.</p>
    #   @return [Types::RetentionConfiguration]
    # @!attribute orphan_file_deletion_configuration
    #   <p>The configuration for an orphan file deletion optimizer.</p>
    #   @return [Types::OrphanFileDeletionConfiguration]
    class TableOptimizerConfiguration < Struct.new(
      :role_arn,
      :enabled,
      :vpc_configuration,
      :compaction_configuration,
      :retention_configuration,
      :orphan_file_deletion_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for a table optimizer run.</p>
    # @!attribute event_type
    #   <p>An event type representing the status of the table optimizer run.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>Represents the epoch timestamp at which the compaction job was started within Lake Formation.</p>
    #   @return [Time]
    # @!attribute end_timestamp
    #   <p>Represents the epoch timestamp at which the compaction job ended.</p>
    #   @return [Time]
    # @!attribute metrics
    #   <p>A <code>RunMetrics</code> object containing metrics for the optimizer run.</p>
    #            <p>This member is deprecated. See the individual metric members for compaction, retention, and orphan file deletion.</p>
    #   @deprecated
    #     Metrics has been replaced by optimizer type specific metrics such as IcebergCompactionMetrics
    #   @return [Types::RunMetrics]
    # @!attribute error
    #   <p>An error that occured during the optimizer run.</p>
    #   @return [String]
    # @!attribute compaction_metrics
    #   <p>A <code>CompactionMetrics</code> object containing metrics for the optimizer run.</p>
    #   @return [Types::CompactionMetrics]
    # @!attribute compaction_strategy
    #   <p>The strategy used for the compaction run. Indicates which algorithm was applied to determine how files were selected and combined during the 
    #         compaction process. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>binpack</code>: Combines small files into larger files, typically targeting sizes over 100MB, while applying any pending deletes. 
    #             This is the recommended compaction strategy for most use cases.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sort</code>: Organizes data based on specified columns which are sorted hierarchically during compaction, improving query 
    #             performance for filtered operations. This strategy is recommended when your queries frequently filter on specific columns. To use this strategy, 
    #             you must first define a sort order in your Iceberg table properties using the <code>sort_order</code> table property.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>z-order</code>: Optimizes data organization by blending multiple attributes into a single scalar value that can be used for sorting, 
    #             allowing efficient querying across multiple dimensions. This strategy is recommended when you need to query data across multiple dimensions 
    #             simultaneously. To use this strategy, you must first define a sort order in your Iceberg table properties using the 
    #             <code>sort_order</code> table property.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute retention_metrics
    #   <p>A <code>RetentionMetrics</code> object containing metrics for the optimizer run.</p>
    #   @return [Types::RetentionMetrics]
    # @!attribute orphan_file_deletion_metrics
    #   <p>An <code>OrphanFileDeletionMetrics</code> object containing metrics for the optimizer run.</p>
    #   @return [Types::OrphanFileDeletionMetrics]
    class TableOptimizerRun < Struct.new(
      :event_type,
      :start_timestamp,
      :end_timestamp,
      :metrics,
      :error,
      :compaction_metrics,
      :compaction_strategy,
      :retention_metrics,
      :orphan_file_deletion_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that describes the VPC configuration for a table optimizer.</p>
    #          <p>This configuration is necessary to perform optimization on tables that are in a customer VPC.</p>
    # @!attribute glue_connection_name
    #   <p>The name of the Glue connection used for the VPC for the table optimizer.</p>
    #   @return [String]
    class TableOptimizerVpcConfiguration < Struct.new(
      :glue_connection_name,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class GlueConnectionName < TableOptimizerVpcConfiguration; end
      class Unknown < TableOptimizerVpcConfiguration; end
    end

    # <p>A structure containing information about the state of an asynchronous change to a table.</p>
    # @!attribute requested_by
    #   <p>The ARN of the user who requested the asynchronous change.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The ARN of the user to last manually alter the asynchronous change (requesting cancellation, etc).</p>
    #   @return [String]
    # @!attribute request_time
    #   <p>An ISO 8601 formatted date string indicating the time that the change was initiated.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>An ISO 8601 formatted date string indicating the time that the state was last updated.</p>
    #   @return [Time]
    # @!attribute action
    #   <p>Indicates which action was called on the table, currently only <code>CREATE</code> or <code>UPDATE</code>.</p>
    #   @return [String]
    # @!attribute state
    #   <p>A generic status for the change in progress, such as QUEUED, IN_PROGRESS, SUCCESS, or FAILED.</p>
    #   @return [String]
    # @!attribute error
    #   <p>An error that will only appear when the state is "FAILED". This is a parent level exception message, there may be different <code>Error</code>s for each dialect.</p>
    #   @return [Types::ErrorDetail]
    # @!attribute details
    #   <p>A <code>StatusDetails</code> object with information about the requested change.</p>
    #   @return [Types::StatusDetails]
    class TableStatus < Struct.new(
      :requested_by,
      :updated_by,
      :request_time,
      :update_time,
      :action,
      :state,
      :error,
      :details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a version of a table.</p>
    # @!attribute table
    #   <p>The table in question.</p>
    #   @return [Types::Table]
    # @!attribute version_id
    #   <p>The ID value that identifies this table version. A <code>VersionId</code> is a string representation of an integer. Each version is incremented by 1.</p>
    #   @return [String]
    class TableVersion < Struct.new(
      :table,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error record for table-version operations.</p>
    # @!attribute table_name
    #   <p>The name of the table in question.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID value of the version in question. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1.</p>
    #   @return [String]
    # @!attribute error_detail
    #   <p>The details about the error.</p>
    #   @return [Types::ErrorDetail]
    class TableVersionError < Struct.new(
      :table_name,
      :version_id,
      :error_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>Tag</code> object represents a label that you can assign to an Amazon Web Services resource. Each tag consists of a key and an optional value, both of which you define.</p>
    #          <p>For more information about tags, and controlling access to resources in Glue, see
    #                 <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon Web Services Tags in Glue</a> and <a href="https://docs.aws.amazon.com/glue/latest/dg/glue-specifying-resource-arns.html">Specifying Glue Resource
    #                 ARNs</a> in the developer guide.</p>
    # @!attribute key
    #   <p>The tag key. The key is required when you create a tag on an object. The key is case-sensitive, and must not contain the prefix aws.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value. The value is optional when you create a tag on an object. The value is case-sensitive, and must not contain the prefix aws.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the Glue resource to which to add the tags. For more
    #         information about Glue resource ARNs, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id">Glue ARN string pattern</a>.</p>
    #   @return [String]
    # @!attribute tags_to_add
    #   <p>Tags to add to this resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags_to_add,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource properties associated with the integration target.</p>
    # @!attribute role_arn
    #   <p>The IAM role to access the Glue database.</p>
    #   @return [String]
    # @!attribute kms_arn
    #   <p>The ARN of the KMS key used for encryption.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The Glue network connection to configure the Glue job running in the customer VPC.</p>
    #   @return [String]
    # @!attribute event_bus_arn
    #   <p>The ARN of an Eventbridge event bus to receive the integration status notification.</p>
    #   @return [String]
    class TargetProcessingProperties < Struct.new(
      :role_arn,
      :kms_arn,
      :connection_name,
      :event_bus_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that describes a target catalog for resource linking.</p>
    # @!attribute catalog_arn
    #   <p>The Amazon Resource Name (ARN) of the catalog resource.</p>
    #   @return [String]
    class TargetRedshiftCatalog < Struct.new(
      :catalog_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The target resource could not be found.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class TargetResourceNotFound < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Properties used by the target leg to partition the data on the target.</p>
    # @!attribute unnest_spec
    #   <p>Specifies how nested objects are flattened to top-level elements. Valid values are: "TOPLEVEL", "FULL", or "NOUNNEST".</p>
    #   @return [String]
    # @!attribute partition_spec
    #   <p>Determines the file layout on the target.</p>
    #   @return [Array<Types::IntegrationPartition>]
    # @!attribute target_table_name
    #   <p>The optional name of a target table.</p>
    #   @return [String]
    class TargetTableConfig < Struct.new(
      :unnest_spec,
      :partition_spec,
      :target_table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The sampling parameters that are associated with the machine learning transform.</p>
    # @!attribute transform_id
    #   <p>The unique identifier for the transform.</p>
    #   @return [String]
    # @!attribute task_run_id
    #   <p>The unique identifier for this task run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the requested task run.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>The names of the log group for secure logging, associated with this task run.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>Specifies configuration properties associated with this task run.</p>
    #   @return [Types::TaskRunProperties]
    # @!attribute error_string
    #   <p>The list of error strings associated with this task run.</p>
    #   @return [String]
    # @!attribute started_on
    #   <p>The date and time that this task run started.</p>
    #   @return [Time]
    # @!attribute last_modified_on
    #   <p>The last point in time that the requested task run was updated.</p>
    #   @return [Time]
    # @!attribute completed_on
    #   <p>The last point in time that the requested task run was completed.</p>
    #   @return [Time]
    # @!attribute execution_time
    #   <p>The amount of time (in seconds) that the task run consumed resources.</p>
    #   @return [Integer]
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
      :execution_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:execution_time] = 0 unless options.key?(:execution_time)
        super
      end
    end

    # <p>The criteria that are used to filter the task runs for the machine learning
    #       transform.</p>
    # @!attribute task_run_type
    #   <p>The type of task run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the task run.</p>
    #   @return [String]
    # @!attribute started_before
    #   <p>Filter on task runs started before this date.</p>
    #   @return [Time]
    # @!attribute started_after
    #   <p>Filter on task runs started after this date.</p>
    #   @return [Time]
    class TaskRunFilterCriteria < Struct.new(
      :task_run_type,
      :status,
      :started_before,
      :started_after,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration properties for the task run.</p>
    # @!attribute task_type
    #   <p>The type of task run.</p>
    #   @return [String]
    # @!attribute import_labels_task_run_properties
    #   <p>The configuration properties for an importing labels task run.</p>
    #   @return [Types::ImportLabelsTaskRunProperties]
    # @!attribute export_labels_task_run_properties
    #   <p>The configuration properties for an exporting labels task run.</p>
    #   @return [Types::ExportLabelsTaskRunProperties]
    # @!attribute labeling_set_generation_task_run_properties
    #   <p>The configuration properties for a labeling set generation task run.</p>
    #   @return [Types::LabelingSetGenerationTaskRunProperties]
    # @!attribute find_matches_task_run_properties
    #   <p>The configuration properties for a find matches task run.</p>
    #   @return [Types::FindMatchesTaskRunProperties]
    class TaskRunProperties < Struct.new(
      :task_type,
      :import_labels_task_run_properties,
      :export_labels_task_run_properties,
      :labeling_set_generation_task_run_properties,
      :find_matches_task_run_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The sorting criteria that are used to sort the list of task runs for the machine learning
    #       transform.</p>
    # @!attribute column
    #   <p>The column to be used to sort the list of task runs for the machine learning
    #         transform.</p>
    #   @return [String]
    # @!attribute sort_direction
    #   <p>The sort direction to be used to sort the list of task runs for the machine learning
    #         transform.</p>
    #   @return [String]
    class TaskRunSortCriteria < Struct.new(
      :column,
      :sort_direction,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that is used to specify testing a connection to a service.</p>
    # @!attribute connection_type
    #   <p>The type of connection to test. This operation is only available for the <code>JDBC</code> or <code>SALESFORCE</code> connection types.</p>
    #   @return [String]
    # @!attribute connection_properties
    #   <p>The key-value pairs that define parameters for the connection.</p>
    #            <p>JDBC connections use the following connection properties:</p>
    #            <ul>
    #               <li>
    #                  <p>Required: All of (<code>HOST</code>, <code>PORT</code>, <code>JDBC_ENGINE</code>) or <code>JDBC_CONNECTION_URL</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Required: All of (<code>USERNAME</code>, <code>PASSWORD</code>) or <code>SECRET_ID</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Optional: <code>JDBC_ENFORCE_SSL</code>, <code>CUSTOM_JDBC_CERT</code>, <code>CUSTOM_JDBC_CERT_STRING</code>, <code>SKIP_CUSTOM_JDBC_CERT_VALIDATION</code>. These parameters are used to configure SSL with JDBC.</p>
    #               </li>
    #            </ul>
    #            <p>SALESFORCE connections require the <code>AuthenticationConfiguration</code> member to be configured.</p>
    #   @return [Hash<String, String>]
    # @!attribute authentication_configuration
    #   <p>A structure containing the authentication configuration in the TestConnection request. Required for a connection to Salesforce using OAuth authentication.</p>
    #   @return [Types::AuthenticationConfigurationInput]
    class TestConnectionInput < Struct.new(
      :connection_type,
      :connection_properties,
      :authentication_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_name
    #   <p>Optional. The name of the connection to test. If only name is provided, the operation will get the connection and use that for testing.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The catalog ID where the connection resides.</p>
    #   @return [String]
    # @!attribute test_connection_input
    #   <p>A structure that is used to specify testing a connection to a service.</p>
    #   @return [Types::TestConnectionInput]
    class TestConnectionRequest < Struct.new(
      :connection_name,
      :catalog_id,
      :test_connection_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TestConnectionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The throttling threshhold was exceeded.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A timestamp filter.</p>
    # @!attribute recorded_before
    #   <p>The timestamp before which statistics should be included in the results.</p>
    #   @return [Time]
    # @!attribute recorded_after
    #   <p>The timestamp after which statistics should be included in the results.</p>
    #   @return [Time]
    class TimestampFilter < Struct.new(
      :recorded_before,
      :recorded_after,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A timestamped inclusion annotation.</p>
    # @!attribute value
    #   <p>The inclusion annotation value.</p>
    #   @return [String]
    # @!attribute last_modified_on
    #   <p>The timestamp when the inclusion annotation was last modified.</p>
    #   @return [Time]
    class TimestampedInclusionAnnotation < Struct.new(
      :value,
      :last_modified_on,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the parameters in the config file of the dynamic transform.</p>
    # @!attribute name
    #   <p>Specifies the name of the parameter in the config file of the dynamic transform.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies the parameter type in the config file of the dynamic transform.</p>
    #   @return [String]
    # @!attribute validation_rule
    #   <p>Specifies the validation rule in the config file of the dynamic transform.</p>
    #   @return [String]
    # @!attribute validation_message
    #   <p>Specifies the validation message in the config file of the dynamic transform.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Specifies the value of the parameter in the config file of the dynamic transform.</p>
    #   @return [Array<String>]
    # @!attribute list_type
    #   <p>Specifies the list type of the parameter in the config file of the dynamic transform.</p>
    #   @return [String]
    # @!attribute is_optional
    #   <p>Specifies whether the parameter is optional or not in the config file of the dynamic transform.</p>
    #   @return [Boolean]
    class TransformConfigParameter < Struct.new(
      :name,
      :type,
      :validation_rule,
      :validation_message,
      :value,
      :list_type,
      :is_optional,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.</p>
    #          <p>Additionally, imported labels and trained transforms can now be encrypted using a customer provided KMS key.</p>
    # @!attribute ml_user_data_encryption
    #   <p>An <code>MLUserDataEncryption</code> object containing the encryption mode and customer-provided KMS key ID.</p>
    #   @return [Types::MLUserDataEncryption]
    # @!attribute task_run_security_configuration_name
    #   <p>The name of the security configuration.</p>
    #   @return [String]
    class TransformEncryption < Struct.new(
      :ml_user_data_encryption,
      :task_run_security_configuration_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The criteria used to filter the machine learning transforms.</p>
    # @!attribute name
    #   <p>A unique transform name that is used to filter the machine learning transforms.</p>
    #   @return [String]
    # @!attribute transform_type
    #   <p>The type of machine learning transform that is used to filter the machine learning
    #         transforms.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filters the list of machine learning transforms by the last known status of the transforms (to indicate whether a transform can be used or not). One of "NOT_READY", "READY", or "DELETING".</p>
    #   @return [String]
    # @!attribute glue_version
    #   <p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions">Glue Versions</a> in the developer guide.</p>
    #   @return [String]
    # @!attribute created_before
    #   <p>The time and date before which the transforms were created.</p>
    #   @return [Time]
    # @!attribute created_after
    #   <p>The time and date after which the transforms were created.</p>
    #   @return [Time]
    # @!attribute last_modified_before
    #   <p>Filter on transforms last modified before this date.</p>
    #   @return [Time]
    # @!attribute last_modified_after
    #   <p>Filter on transforms last modified after this date.</p>
    #   @return [Time]
    # @!attribute schema
    #   <p>Filters on datasets with a specific schema. The <code>Map<Column, Type></code>
    #         object is an array of key-value pairs representing the schema this transform accepts, where
    #           <code>Column</code> is the name of a column, and <code>Type</code> is the type of the data
    #         such as an integer or string. Has an upper bound of 100 columns.</p>
    #   @return [Array<Types::SchemaColumn>]
    class TransformFilterCriteria < Struct.new(
      :name,
      :transform_type,
      :status,
      :glue_version,
      :created_before,
      :created_after,
      :last_modified_before,
      :last_modified_after,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The algorithm-specific parameters that are associated with the machine learning
    #       transform.</p>
    # @!attribute transform_type
    #   <p>The type of machine learning transform.</p>
    #            <p>For information about the types of machine learning transforms, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job-machine-learning-transform.html">Creating Machine Learning Transforms</a>.</p>
    #   @return [String]
    # @!attribute find_matches_parameters
    #   <p>The parameters for the find matches algorithm.</p>
    #   @return [Types::FindMatchesParameters]
    class TransformParameters < Struct.new(
      :transform_type,
      :find_matches_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The sorting criteria that are associated with the machine learning transform.</p>
    # @!attribute column
    #   <p>The column to be used in the sorting criteria that are associated with the machine
    #         learning transform.</p>
    #   @return [String]
    # @!attribute sort_direction
    #   <p>The sort direction to be used in the sorting criteria that are associated with the machine
    #         learning transform.</p>
    #   @return [String]
    class TransformSortCriteria < Struct.new(
      :column,
      :sort_direction,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a specific trigger.</p>
    # @!attribute name
    #   <p>The name of the trigger.</p>
    #   @return [String]
    # @!attribute workflow_name
    #   <p>The name of the workflow associated with the trigger.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Reserved for future use.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of trigger that this is.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the trigger.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of this trigger.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>A <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based
    #         Schedules for Jobs and Crawlers</a>. For example, to run
    #         something every day at 12:15 UTC, you would specify:
    #         <code>cron(15 12 * * ? *)</code>.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>The actions initiated by this trigger.</p>
    #   @return [Array<Types::Action>]
    # @!attribute predicate
    #   <p>The predicate of this trigger, which defines when it will fire.</p>
    #   @return [Types::Predicate]
    # @!attribute event_batching_condition
    #   <p>Batch condition that must be met (specified number of events received or batch time window expired)
    #         before EventBridge event trigger fires.</p>
    #   @return [Types::EventBatchingCondition]
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
      :event_batching_condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a Trigger node present in the workflow.</p>
    # @!attribute trigger
    #   <p>The information of the trigger represented by the trigger node.</p>
    #   @return [Types::Trigger]
    class TriggerNodeDetails < Struct.new(
      :trigger,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure used to provide information used to update a trigger. This object updates the
    #       previous trigger definition by overwriting it completely.</p>
    # @!attribute name
    #   <p>Reserved for future use.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of this trigger.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>A <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based
    #         Schedules for Jobs and Crawlers</a>. For example, to run
    #         something every day at 12:15 UTC, you would specify:
    #         <code>cron(15 12 * * ? *)</code>.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>The actions initiated by this trigger.</p>
    #   @return [Array<Types::Action>]
    # @!attribute predicate
    #   <p>The predicate of this trigger, which defines when it will fire.</p>
    #   @return [Types::Predicate]
    # @!attribute event_batching_condition
    #   <p>Batch condition that must be met (specified number of events received or batch time window expired)
    #         before EventBridge event trigger fires.</p>
    #   @return [Types::EventBatchingCondition]
    class TriggerUpdate < Struct.new(
      :name,
      :description,
      :schedule,
      :actions,
      :predicate,
      :event_batching_condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A partition that contains unfiltered metadata.</p>
    # @!attribute partition
    #   <p>The partition object.</p>
    #   @return [Types::Partition]
    # @!attribute authorized_columns
    #   <p>The list of columns the user has permissions to access.</p>
    #   @return [Array<String>]
    # @!attribute is_registered_with_lake_formation
    #   <p>A Boolean value indicating that the partition location is registered with Lake Formation.</p>
    #   @return [Boolean]
    class UnfilteredPartition < Struct.new(
      :partition,
      :authorized_columns,
      :is_registered_with_lake_formation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_registered_with_lake_formation] = false unless options.key?(:is_registered_with_lake_formation)
        super
      end
    end

    # <p>Specifies a transform that combines the rows from two or more datasets into a single result.</p>
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>The node ID inputs to the transform.</p>
    #   @return [Array<String>]
    # @!attribute union_type
    #   <p>Indicates the type of Union transform. </p>
    #            <p>Specify <code>ALL</code> to join all rows from data sources to the resulting DynamicFrame. The resulting union does not remove duplicate rows.</p>
    #            <p>Specify <code>DISTINCT</code> to remove duplicate rows in the resulting DynamicFrame.</p>
    #   @return [String]
    class Union < Struct.new(
      :name,
      :inputs,
      :union_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove the tags.</p>
    #   @return [String]
    # @!attribute tags_to_remove
    #   <p>Tags to remove from this resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tags_to_remove,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the blueprint.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the blueprint.</p>
    #   @return [String]
    # @!attribute blueprint_location
    #   <p>Specifies a path in Amazon S3 where the blueprint is published.</p>
    #   @return [String]
    class UpdateBlueprintRequest < Struct.new(
      :name,
      :description,
      :blueprint_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Returns the name of the blueprint that was updated.</p>
    #   @return [String]
    class UpdateBlueprintResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the catalog.</p>
    #   @return [String]
    # @!attribute catalog_input
    #   <p>A <code>CatalogInput</code> object specifying the new properties of an existing catalog.</p>
    #   @return [Types::CatalogInput]
    class UpdateCatalogRequest < Struct.new(
      :catalog_id,
      :catalog_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateCatalogResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute grok_classifier
    #   <p>A <code>GrokClassifier</code> object with updated fields.</p>
    #   @return [Types::UpdateGrokClassifierRequest]
    # @!attribute xml_classifier
    #   <p>An <code>XMLClassifier</code> object with updated fields.</p>
    #   @return [Types::UpdateXMLClassifierRequest]
    # @!attribute json_classifier
    #   <p>A <code>JsonClassifier</code> object with updated fields.</p>
    #   @return [Types::UpdateJsonClassifierRequest]
    # @!attribute csv_classifier
    #   <p>A <code>CsvClassifier</code> object with updated fields.</p>
    #   @return [Types::UpdateCsvClassifierRequest]
    class UpdateClassifierRequest < Struct.new(
      :grok_classifier,
      :xml_classifier,
      :json_classifier,
      :csv_classifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateClassifierResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #   @return [String]
    # @!attribute partition_values
    #   <p>A list of partition values identifying the partition.</p>
    #   @return [Array<String>]
    # @!attribute column_statistics_list
    #   <p>A list of the column statistics.</p>
    #   @return [Array<Types::ColumnStatistics>]
    class UpdateColumnStatisticsForPartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      :column_statistics_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>Error occurred during updating column statistics data.</p>
    #   @return [Array<Types::ColumnStatisticsError>]
    class UpdateColumnStatisticsForPartitionResponse < Struct.new(
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #   @return [String]
    # @!attribute column_statistics_list
    #   <p>A list of the column statistics.</p>
    #   @return [Array<Types::ColumnStatistics>]
    class UpdateColumnStatisticsForTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :column_statistics_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>List of ColumnStatisticsErrors.</p>
    #   @return [Array<Types::ColumnStatisticsError>]
    class UpdateColumnStatisticsForTableResponse < Struct.new(
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the database where the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table for which to generate column statistics.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The role used for running the column statistics.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>A schedule for running the column statistics, specified in CRON syntax.</p>
    #   @return [String]
    # @!attribute column_name_list
    #   <p>A list of column names for which to run statistics.</p>
    #   @return [Array<String>]
    # @!attribute sample_size
    #   <p>The percentage of data to sample.</p>
    #   @return [Float]
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the database resides.</p>
    #   @return [String]
    # @!attribute security_configuration
    #   <p>Name of the security configuration that is used to encrypt CloudWatch logs.</p>
    #   @return [String]
    class UpdateColumnStatisticsTaskSettingsRequest < Struct.new(
      :database_name,
      :table_name,
      :role,
      :schedule,
      :column_name_list,
      :sample_size,
      :catalog_id,
      :security_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateColumnStatisticsTaskSettingsResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the connection resides. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the connection definition to update.</p>
    #   @return [String]
    # @!attribute connection_input
    #   <p>A <code>ConnectionInput</code> object that redefines the connection
    #         in question.</p>
    #   @return [Types::ConnectionInput]
    class UpdateConnectionRequest < Struct.new(
      :catalog_id,
      :name,
      :connection_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateConnectionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the new crawler.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The IAM role or Amazon Resource Name (ARN) of an IAM role that is used by the new crawler
    #         to access customer resources.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The Glue database where results are stored, such as:
    #           <code>arn:aws:daylight:us-east-1::database/sometable/*</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the new crawler.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>A list of targets to crawl.</p>
    #   @return [Types::CrawlerTargets]
    # @!attribute schedule
    #   <p>A <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
    #         something every day at 12:15 UTC, you would specify:
    #         <code>cron(15 12 * * ? *)</code>.</p>
    #   @return [String]
    # @!attribute classifiers
    #   <p>A list of custom classifiers that the user
    #         has registered. By default, all built-in classifiers are included in a crawl,
    #         but these custom classifiers always override the default classifiers
    #         for a given classification.</p>
    #   @return [Array<String>]
    # @!attribute table_prefix
    #   <p>The table prefix used for catalog tables that are created.</p>
    #   @return [String]
    # @!attribute schema_change_policy
    #   <p>The policy for the crawler's update and deletion behavior.</p>
    #   @return [Types::SchemaChangePolicy]
    # @!attribute recrawl_policy
    #   <p>A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.</p>
    #   @return [Types::RecrawlPolicy]
    # @!attribute lineage_configuration
    #   <p>Specifies data lineage configuration settings for the crawler.</p>
    #   @return [Types::LineageConfiguration]
    # @!attribute lake_formation_configuration
    #   <p>Specifies Lake Formation configuration settings for the crawler.</p>
    #   @return [Types::LakeFormationConfiguration]
    # @!attribute configuration
    #   <p>Crawler configuration information. This versioned JSON string allows users
    #           to specify aspects of a crawler's behavior.
    #           For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html">Setting crawler configuration options</a>.</p>
    #   @return [String]
    # @!attribute crawler_security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used by this
    #         crawler.</p>
    #   @return [String]
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
      :crawler_security_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateCrawlerResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute crawler_name
    #   <p>The name of the crawler whose schedule to update.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>The updated <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
    #         something every day at 12:15 UTC, you would specify:
    #         <code>cron(15 12 * * ? *)</code>.</p>
    #   @return [String]
    class UpdateCrawlerScheduleRequest < Struct.new(
      :crawler_name,
      :schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateCrawlerScheduleResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a custom CSV classifier to be updated.</p>
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>A custom symbol to denote what separates each column entry in the row.</p>
    #   @return [String]
    # @!attribute quote_symbol
    #   <p>A custom symbol to denote what combines content into a single column value. It must be
    #         different from the column delimiter.</p>
    #   @return [String]
    # @!attribute contains_header
    #   <p>Indicates whether the CSV file contains a header.</p>
    #   @return [String]
    # @!attribute header
    #   <p>A list of strings representing column names.</p>
    #   @return [Array<String>]
    # @!attribute disable_value_trimming
    #   <p>Specifies not to trim values before identifying the type of column values. The default value is true.</p>
    #   @return [Boolean]
    # @!attribute allow_single_column
    #   <p>Enables the processing of files that contain only one column.</p>
    #   @return [Boolean]
    # @!attribute custom_datatype_configured
    #   <p>Specifies the configuration of custom datatypes.</p>
    #   @return [Boolean]
    # @!attribute custom_datatypes
    #   <p>Specifies a list of supported custom datatypes.</p>
    #   @return [Array<String>]
    # @!attribute serde
    #   <p>Sets the SerDe for processing CSV in the classifier, which will be applied in the Data Catalog. Valid values are <code>OpenCSVSerDe</code>, <code>LazySimpleSerDe</code>, and <code>None</code>. You can specify the <code>None</code> value when you want the crawler to do the detection.</p>
    #   @return [String]
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
      :serde,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the data quality ruleset.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the ruleset.</p>
    #   @return [String]
    # @!attribute ruleset
    #   <p>A Data Quality Definition Language (DQDL) ruleset. For more information, see the Glue developer guide.</p>
    #   @return [String]
    class UpdateDataQualityRulesetRequest < Struct.new(
      :name,
      :description,
      :ruleset,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the data quality ruleset.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the ruleset.</p>
    #   @return [String]
    # @!attribute ruleset
    #   <p>A Data Quality Definition Language (DQDL) ruleset. For more information, see the Glue developer guide.</p>
    #   @return [String]
    class UpdateDataQualityRulesetResponse < Struct.new(
      :name,
      :description,
      :ruleset,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the metadata database resides. If none is provided,
    #         the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the database to update in the catalog. For Hive
    #         compatibility, this is folded to lowercase.</p>
    #   @return [String]
    # @!attribute database_input
    #   <p>A <code>DatabaseInput</code> object specifying the new definition
    #         of the metadata database in the catalog.</p>
    #   @return [Types::DatabaseInput]
    class UpdateDatabaseRequest < Struct.new(
      :catalog_id,
      :name,
      :database_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateDatabaseResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name of the <code>DevEndpoint</code> to be updated.</p>
    #   @return [String]
    # @!attribute public_key
    #   <p>The public key for the <code>DevEndpoint</code> to use.</p>
    #   @return [String]
    # @!attribute add_public_keys
    #   <p>The list of public keys for the <code>DevEndpoint</code> to use.</p>
    #   @return [Array<String>]
    # @!attribute delete_public_keys
    #   <p>The list of public keys to be deleted from the <code>DevEndpoint</code>.</p>
    #   @return [Array<String>]
    # @!attribute custom_libraries
    #   <p>Custom Python or Java libraries to be loaded in the <code>DevEndpoint</code>.</p>
    #   @return [Types::DevEndpointCustomLibraries]
    # @!attribute update_etl_libraries
    #   <p>
    #               <code>True</code> if the list of custom libraries to be loaded in the development endpoint
    #         needs to be updated, or <code>False</code> if otherwise.</p>
    #   @return [Boolean]
    # @!attribute delete_arguments
    #   <p>The list of argument keys to be deleted from the map of arguments used to configure the
    #           <code>DevEndpoint</code>.</p>
    #   @return [Array<String>]
    # @!attribute add_arguments
    #   <p>The map of arguments to add the map of arguments used to configure the
    #           <code>DevEndpoint</code>.</p>
    #            <p>Valid arguments are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"--enable-glue-datacatalog": ""</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>
    #   @return [Hash<String, String>]
    class UpdateDevEndpointRequest < Struct.new(
      :endpoint_name,
      :public_key,
      :add_public_keys,
      :delete_public_keys,
      :custom_libraries,
      :update_etl_libraries,
      :delete_arguments,
      :add_arguments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateDevEndpointResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to update an existing Glue Identity Center configuration.</p>
    # @!attribute scopes
    #   <p>A list of Identity Center scopes that define the updated permissions and access levels for the Glue configuration.</p>
    #   @return [Array<String>]
    class UpdateGlueIdentityCenterConfigurationRequest < Struct.new(
      :scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response from updating an existing Glue Identity Center configuration.</p>
    class UpdateGlueIdentityCenterConfigurationResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a grok classifier to update when passed to
    #       <code>UpdateClassifier</code>.</p>
    # @!attribute name
    #   <p>The name of the <code>GrokClassifier</code>.</p>
    #   @return [String]
    # @!attribute classification
    #   <p>An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs,
    #         Amazon CloudWatch Logs, and so on.</p>
    #   @return [String]
    # @!attribute grok_pattern
    #   <p>The grok pattern used by this classifier.</p>
    #   @return [String]
    # @!attribute custom_patterns
    #   <p>Optional custom grok patterns used by this classifier.</p>
    #   @return [String]
    class UpdateGrokClassifierRequest < Struct.new(
      :name,
      :classification,
      :grok_pattern,
      :custom_patterns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input parameters specific to updating Apache Iceberg tables in Glue Data 
    #       Catalog, containing the update operations to be applied to an existing Iceberg 
    #       table.</p>
    # @!attribute update_iceberg_table_input
    #   <p>The specific update operations to be applied to the Iceberg table, containing a 
    #         list of updates that define the new state of the table including schema, 
    #         partitions, and properties.</p>
    #   @return [Types::UpdateIcebergTableInput]
    class UpdateIcebergInput < Struct.new(
      :update_iceberg_table_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the update operations to be applied to an existing Iceberg table inGlue Data Catalog, defining the new state of the table metadata.
    #     </p>
    # @!attribute updates
    #   <p>The list of table update operations that specify the changes to be made to the Iceberg table, including schema modifications, partition 
    #         specifications, and table properties.</p>
    #   @return [Array<Types::IcebergTableUpdate>]
    class UpdateIcebergTableInput < Struct.new(
      :updates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The connection ARN of the source, or the database ARN of the target.</p>
    #   @return [String]
    # @!attribute source_processing_properties
    #   <p>The resource properties associated with the integration source.</p>
    #   @return [Types::SourceProcessingProperties]
    # @!attribute target_processing_properties
    #   <p>The resource properties associated with the integration target.</p>
    #   @return [Types::TargetProcessingProperties]
    class UpdateIntegrationResourcePropertyRequest < Struct.new(
      :resource_arn,
      :source_processing_properties,
      :target_processing_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The connection ARN of the source, or the database ARN of the target.</p>
    #   @return [String]
    # @!attribute source_processing_properties
    #   <p>The resource properties associated with the integration source.</p>
    #   @return [Types::SourceProcessingProperties]
    # @!attribute target_processing_properties
    #   <p>The resource properties associated with the integration target.</p>
    #   @return [Types::TargetProcessingProperties]
    class UpdateIntegrationResourcePropertyResponse < Struct.new(
      :resource_arn,
      :source_processing_properties,
      :target_processing_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The connection ARN of the source, or the database ARN of the target.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table to be replicated.</p>
    #   @return [String]
    # @!attribute source_table_config
    #   <p>A structure for the source table configuration.</p>
    #   @return [Types::SourceTableConfig]
    # @!attribute target_table_config
    #   <p>A structure for the target table configuration.</p>
    #   @return [Types::TargetTableConfig]
    class UpdateIntegrationTablePropertiesRequest < Struct.new(
      :resource_arn,
      :table_name,
      :source_table_config,
      :target_table_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateIntegrationTablePropertiesResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the Glue job to be synchronized to or from the remote repository.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>
    #         The provider for the remote repository. Possible values: GITHUB, AWS_CODE_COMMIT, GITLAB, BITBUCKET.
    #       </p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the remote repository that contains the job artifacts. 
    #         For BitBucket providers, <code>RepositoryName</code> should include <code>WorkspaceName</code>.
    #         Use the format <code><WorkspaceName>/<RepositoryName></code>. 
    #       </p>
    #   @return [String]
    # @!attribute repository_owner
    #   <p>The owner of the remote repository that contains the job artifacts.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>An optional branch in the remote repository.</p>
    #   @return [String]
    # @!attribute folder
    #   <p>An optional folder in the remote repository.</p>
    #   @return [String]
    # @!attribute commit_id
    #   <p>A commit ID for a commit in the remote repository.</p>
    #   @return [String]
    # @!attribute auth_strategy
    #   <p>The type of authentication, which can be an authentication token stored in Amazon Web Services Secrets Manager, or a personal access token.</p>
    #   @return [String]
    # @!attribute auth_token
    #   <p>The value of the authorization token.</p>
    #   @return [String]
    class UpdateJobFromSourceControlRequest < Struct.new(
      :job_name,
      :provider,
      :repository_name,
      :repository_owner,
      :branch_name,
      :folder,
      :commit_id,
      :auth_strategy,
      :auth_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the Glue job.</p>
    #   @return [String]
    class UpdateJobFromSourceControlResponse < Struct.new(
      :job_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job definition to update.</p>
    #   @return [String]
    # @!attribute job_update
    #   <p>Specifies the values with which to update the job definition. Unspecified configuration is removed or reset to default values.</p>
    #   @return [Types::JobUpdate]
    class UpdateJobRequest < Struct.new(
      :job_name,
      :job_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>Returns the name of the updated job definition.</p>
    #   @return [String]
    class UpdateJobResponse < Struct.new(
      :job_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a JSON classifier to be updated.</p>
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #   @return [String]
    # @!attribute json_path
    #   <p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify.
    #         Glue supports a subset of JsonPath, as described in <a href="https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json">Writing JsonPath Custom Classifiers</a>.</p>
    #   @return [String]
    class UpdateJsonClassifierRequest < Struct.new(
      :name,
      :json_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>A unique identifier that was generated when the transform was created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique name that you gave the transform when you created it.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the transform. The default is an empty string.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The configuration parameters that are specific to the transform type (algorithm) used.
    #         Conditionally dependent on the transform type.</p>
    #   @return [Types::TransformParameters]
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role with the required
    #         permissions.</p>
    #   @return [String]
    # @!attribute glue_version
    #   <p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions">Glue Versions</a> in the developer guide.</p>
    #   @return [String]
    # @!attribute max_capacity
    #   <p>The number of Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of
    #         processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
    #         information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue pricing
    #           page</a>. </p>
    #            <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>
    #   @return [Float]
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.</p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when this task runs.</p>
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The timeout for a task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>
    #   @return [Integer]
    # @!attribute max_retries
    #   <p>The maximum number of times to retry a task for this transform after a task run fails.</p>
    #   @return [Integer]
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
      :max_retries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier for the transform that was updated.</p>
    #   @return [String]
    class UpdateMLTransformResponse < Struct.new(
      :transform_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input parameters for updating open table format tables in GlueData Catalog, 
    #       serving as a wrapper for format-specific update operations such as Apache Iceberg.</p>
    # @!attribute update_iceberg_input
    #   <p>Apache Iceberg-specific update parameters that define the table modifications to 
    #         be applied, including schema changes, partition specifications, and table 
    #         properties.</p>
    #   @return [Types::UpdateIcebergInput]
    class UpdateOpenTableFormatInput < Struct.new(
      :update_iceberg_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partition to be updated resides. If none is provided,
    #         the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database in which the table in question
    #         resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table in which the partition to be updated is located.</p>
    #   @return [String]
    # @!attribute partition_value_list
    #   <p>List of partition key values that define the partition to update.</p>
    #   @return [Array<String>]
    # @!attribute partition_input
    #   <p>The new partition object to update the partition to.</p>
    #            <p>The <code>Values</code> property can't be changed. If you want to change the partition key values for a partition, delete and recreate the partition.</p>
    #   @return [Types::PartitionInput]
    class UpdatePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_value_list,
      :partition_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdatePartitionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>
    #   @return [Types::RegistryId]
    # @!attribute description
    #   <p>A description of the registry. If description is not provided, this field will not be updated.</p>
    #   @return [String]
    class UpdateRegistryInput < Struct.new(
      :registry_id,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the updated registry.</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The Amazon Resource name (ARN) of the updated registry.</p>
    #   @return [String]
    class UpdateRegistryResponse < Struct.new(
      :registry_name,
      :registry_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    #            <ul>
    #               <li>
    #                  <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #               </li>
    #               <li>
    #                  <p>SchemaId$SchemaName: The name of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #               </li>
    #            </ul>
    #   @return [Types::SchemaId]
    # @!attribute schema_version_number
    #   <p>Version number required for check pointing. One of <code>VersionNumber</code> or <code>Compatibility</code> has to be provided.</p>
    #   @return [Types::SchemaVersionNumber]
    # @!attribute compatibility
    #   <p>The new compatibility setting for the schema.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description for the schema.</p>
    #   @return [String]
    class UpdateSchemaInput < Struct.new(
      :schema_id,
      :schema_version_number,
      :compatibility,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry that contains the schema.</p>
    #   @return [String]
    class UpdateSchemaResponse < Struct.new(
      :schema_arn,
      :schema_name,
      :registry_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the Glue job to be synchronized to or from the remote repository.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>
    #         The provider for the remote repository. Possible values: GITHUB, AWS_CODE_COMMIT, GITLAB, BITBUCKET.
    #       </p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the remote repository that contains the job artifacts. 
    #         For BitBucket providers, <code>RepositoryName</code> should include <code>WorkspaceName</code>.
    #         Use the format <code><WorkspaceName>/<RepositoryName></code>. 
    #       </p>
    #   @return [String]
    # @!attribute repository_owner
    #   <p>The owner of the remote repository that contains the job artifacts.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>An optional branch in the remote repository.</p>
    #   @return [String]
    # @!attribute folder
    #   <p>An optional folder in the remote repository.</p>
    #   @return [String]
    # @!attribute commit_id
    #   <p>A commit ID for a commit in the remote repository.</p>
    #   @return [String]
    # @!attribute auth_strategy
    #   <p>The type of authentication, which can be an authentication token stored in Amazon Web Services Secrets Manager, or a personal access token.</p>
    #   @return [String]
    # @!attribute auth_token
    #   <p>The value of the authorization token.</p>
    #   @return [String]
    class UpdateSourceControlFromJobRequest < Struct.new(
      :job_name,
      :provider,
      :repository_name,
      :repository_owner,
      :branch_name,
      :folder,
      :commit_id,
      :auth_strategy,
      :auth_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the Glue job.</p>
    #   @return [String]
    class UpdateSourceControlFromJobResponse < Struct.new(
      :job_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The Catalog ID of the table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database in the catalog in which the table resides.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of table optimizer.</p>
    #   @return [String]
    # @!attribute table_optimizer_configuration
    #   <p>A <code>TableOptimizerConfiguration</code> object representing the configuration of a table optimizer.</p>
    #   @return [Types::TableOptimizerConfiguration]
    class UpdateTableOptimizerRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :type,
      :table_optimizer_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateTableOptimizerResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the table resides. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database in which the table resides. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique identifier for the table within the specified database that will be 
    #         created in the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute table_input
    #   <p>An updated <code>TableInput</code> object to define the metadata table
    #         in the catalog.</p>
    #   @return [Types::TableInput]
    # @!attribute skip_archive
    #   <p>By default, <code>UpdateTable</code> always creates an archived version of the table
    #         before updating it. However, if <code>skipArchive</code> is set to true,
    #           <code>UpdateTable</code> does not create the archived version.</p>
    #   @return [Boolean]
    # @!attribute transaction_id
    #   <p>The transaction ID at which to update the table contents. </p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID at which to update the table contents. </p>
    #   @return [String]
    # @!attribute view_update_action
    #   <p>The operation to be performed when updating the view.</p>
    #   @return [String]
    # @!attribute force
    #   <p>A flag that can be set to true to ignore matching storage descriptor and subobject matching requirements.</p>
    #   @return [Boolean]
    # @!attribute update_open_table_format_input
    #   <p>Input parameters for updating open table format tables in GlueData Catalog, 
    #         serving as a wrapper for format-specific update operations such as Apache Iceberg.</p>
    #   @return [Types::UpdateOpenTableFormatInput]
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
      :update_open_table_format_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateTableResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger to update.</p>
    #   @return [String]
    # @!attribute trigger_update
    #   <p>The new values with which to update the trigger.</p>
    #   @return [Types::TriggerUpdate]
    class UpdateTriggerRequest < Struct.new(
      :name,
      :trigger_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute trigger
    #   <p>The resulting trigger definition.</p>
    #   @return [Types::Trigger]
    class UpdateTriggerResponse < Struct.new(
      :trigger,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the usage profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the usage profile.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>A <code>ProfileConfiguration</code> object specifying the job and session values for the profile.</p>
    #   @return [Types::ProfileConfiguration]
    class UpdateUsageProfileRequest < Struct.new(
      :name,
      :description,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the usage profile that was updated.</p>
    #   @return [String]
    class UpdateUsageProfileResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the function to be updated is located. If none is
    #         provided, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database where the function to be updated is
    #         located.</p>
    #   @return [String]
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #   @return [String]
    # @!attribute function_input
    #   <p>A <code>FunctionInput</code> object that redefines the function in the Data
    #         Catalog.</p>
    #   @return [Types::UserDefinedFunctionInput]
    class UpdateUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_name,
      :function_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateUserDefinedFunctionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the workflow to be updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the workflow.</p>
    #   @return [String]
    # @!attribute default_run_properties
    #   <p>A collection of properties to be used as part of each execution of the workflow.</p>
    #            <p>Run properties may be logged. Do not pass plaintext secrets as properties. Retrieve secrets from a Glue Connection, Amazon Web Services Secrets Manager or other secret management mechanism if you intend to use them within the workflow run.</p>
    #   @return [Hash<String, String>]
    # @!attribute max_concurrent_runs
    #   <p>You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.</p>
    #   @return [Integer]
    class UpdateWorkflowRequest < Struct.new(
      :name,
      :description,
      :default_run_properties,
      :max_concurrent_runs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow which was specified in input.</p>
    #   @return [String]
    class UpdateWorkflowResponse < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an XML classifier to be updated.</p>
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #   @return [String]
    # @!attribute classification
    #   <p>An identifier of the data format that the classifier matches.</p>
    #   @return [String]
    # @!attribute row_tag
    #   <p>The XML tag designating the element that contains each record in an XML document being
    #         parsed. This cannot identify a self-closing element (closed by <code>/></code>). An empty
    #         row element that contains only attributes can be parsed as long as it ends with a closing tag
    #         (for example, <code><row item_a="A" item_b="B"></row></code> is okay, but
    #           <code><row item_a="A" item_b="B" /></code> is not).</p>
    #   @return [String]
    class UpdateXMLClassifierRequest < Struct.new(
      :name,
      :classification,
      :row_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The options to configure an upsert operation when writing to a Redshift target .</p>
    # @!attribute table_location
    #   <p>The physical location of the Redshift table.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection to use to write to Redshift.</p>
    #   @return [String]
    # @!attribute upsert_keys
    #   <p>The keys used to determine whether to perform an update or insert.</p>
    #   @return [Array<String>]
    class UpsertRedshiftTargetOptions < Struct.new(
      :table_location,
      :connection_name,
      :upsert_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Glue usage profile.</p>
    # @!attribute name
    #   <p>The name of the usage profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the usage profile.</p>
    #   @return [String]
    # @!attribute created_on
    #   <p>The date and time when the usage profile was created.</p>
    #   @return [Time]
    # @!attribute last_modified_on
    #   <p>The date and time when the usage profile was last modified.</p>
    #   @return [Time]
    class UsageProfileDefinition < Struct.new(
      :name,
      :description,
      :created_on,
      :last_modified_on,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the equivalent of a Hive user-defined function
    #       (<code>UDF</code>) definition.</p>
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the catalog database that contains the function.</p>
    #   @return [String]
    # @!attribute class_name
    #   <p>The Java class that contains the function code.</p>
    #   @return [String]
    # @!attribute owner_name
    #   <p>The owner of the function.</p>
    #   @return [String]
    # @!attribute owner_type
    #   <p>The owner type.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the function was created.</p>
    #   @return [Time]
    # @!attribute resource_uris
    #   <p>The resource URIs for the function.</p>
    #   @return [Array<Types::ResourceUri>]
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the function resides.</p>
    #   @return [String]
    class UserDefinedFunction < Struct.new(
      :function_name,
      :database_name,
      :class_name,
      :owner_name,
      :owner_type,
      :create_time,
      :resource_uris,
      :catalog_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure used to create or update a user-defined function.</p>
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #   @return [String]
    # @!attribute class_name
    #   <p>The Java class that contains the function code.</p>
    #   @return [String]
    # @!attribute owner_name
    #   <p>The owner of the function.</p>
    #   @return [String]
    # @!attribute owner_type
    #   <p>The owner type.</p>
    #   @return [String]
    # @!attribute resource_uris
    #   <p>The resource URIs for the function.</p>
    #   @return [Array<Types::ResourceUri>]
    class UserDefinedFunctionInput < Struct.new(
      :function_name,
      :class_name,
      :owner_name,
      :owner_type,
      :resource_uris,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A value could not be validated.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was a version conflict.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class VersionMismatchException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing details for representations.</p>
    # @!attribute is_protected
    #   <p>You can set this flag as true to instruct the engine not to push user-provided operations into the logical plan of the view during query planning. However, setting this flag does not guarantee that the engine will comply. Refer to the engine's documentation to understand the guarantees provided, if any.</p>
    #   @return [Boolean]
    # @!attribute definer
    #   <p>The definer of a view in SQL.</p>
    #   @return [String]
    # @!attribute sub_objects
    #   <p>A list of table Amazon Resource Names (ARNs).</p>
    #   @return [Array<String>]
    # @!attribute representations
    #   <p>A list of representations.</p>
    #   @return [Array<Types::ViewRepresentation>]
    class ViewDefinition < Struct.new(
      :is_protected,
      :definer,
      :sub_objects,
      :representations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing details for creating or updating an Glue view.</p>
    # @!attribute is_protected
    #   <p>You can set this flag as true to instruct the engine not to push user-provided operations into the logical plan of the view during query planning. However, setting this flag does not guarantee that the engine will comply. Refer to the engine's documentation to understand the guarantees provided, if any.</p>
    #   @return [Boolean]
    # @!attribute definer
    #   <p>The definer of a view in SQL.</p>
    #   @return [String]
    # @!attribute representations
    #   <p>A list of structures that contains the dialect of the view, and the query that defines the view.</p>
    #   @return [Array<Types::ViewRepresentationInput>]
    # @!attribute sub_objects
    #   <p>A list of base table ARNs that make up the view.</p>
    #   @return [Array<String>]
    class ViewDefinitionInput < Struct.new(
      :is_protected,
      :definer,
      :representations,
      :sub_objects,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the dialect of the view, and the query that defines the view.</p>
    # @!attribute dialect
    #   <p>The dialect of the query engine.</p>
    #   @return [String]
    # @!attribute dialect_version
    #   <p>The version of the dialect of the query engine. For example, 3.0.0.</p>
    #   @return [String]
    # @!attribute view_original_text
    #   <p>The <code>SELECT</code> query provided by the customer during <code>CREATE VIEW DDL</code>. This SQL is not used during a query on a view (<code>ViewExpandedText</code> is used instead). <code>ViewOriginalText</code> is used for cases like <code>SHOW CREATE VIEW</code> where users want to see the original DDL command that created the view.</p>
    #   @return [String]
    # @!attribute view_expanded_text
    #   <p>The expanded SQL for the view. This SQL is used by engines while processing a query on a view. Engines may perform operations during view creation to transform <code>ViewOriginalText</code> to <code>ViewExpandedText</code>. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Fully qualified identifiers: <code>SELECT * from table1 -> SELECT * from db1.table1</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute validation_connection
    #   <p>The name of the connection to be used to validate the specific representation of the view.</p>
    #   @return [String]
    # @!attribute is_stale
    #   <p>Dialects marked as stale are no longer valid and must be updated before they can be queried in their respective query engines.</p>
    #   @return [Boolean]
    class ViewRepresentation < Struct.new(
      :dialect,
      :dialect_version,
      :view_original_text,
      :view_expanded_text,
      :validation_connection,
      :is_stale,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing details of a representation to update or create a Lake Formation view.</p>
    # @!attribute dialect
    #   <p>A parameter that specifies the engine type of a specific representation.</p>
    #   @return [String]
    # @!attribute dialect_version
    #   <p>A parameter that specifies the version of the engine of a specific representation.</p>
    #   @return [String]
    # @!attribute view_original_text
    #   <p>A string that represents the original SQL query that describes the view.</p>
    #   @return [String]
    # @!attribute validation_connection
    #   <p>The name of the connection to be used to validate the specific representation of the view.</p>
    #   @return [String]
    # @!attribute view_expanded_text
    #   <p>A string that represents the SQL query that describes the view with expanded resource ARNs</p>
    #   @return [String]
    class ViewRepresentationInput < Struct.new(
      :dialect,
      :dialect_version,
      :view_original_text,
      :validation_connection,
      :view_expanded_text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information for an analytical engine to validate a view, prior to persisting the view metadata. Used in the case of direct <code>UpdateTable</code> or <code>CreateTable</code> API calls.</p>
    # @!attribute dialect
    #   <p>The dialect of the query engine.</p>
    #   @return [String]
    # @!attribute dialect_version
    #   <p>The version of the dialect of the query engine. For example, 3.0.0.</p>
    #   @return [String]
    # @!attribute view_validation_text
    #   <p>The <code>SELECT</code> query that defines the view, as provided by the customer.</p>
    #   @return [String]
    # @!attribute update_time
    #   <p>The time of the last update.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The state of the validation.</p>
    #   @return [String]
    # @!attribute error
    #   <p>An error associated with the validation.</p>
    #   @return [Types::ErrorDetail]
    class ViewValidation < Struct.new(
      :dialect,
      :dialect_version,
      :view_validation_text,
      :update_time,
      :state,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A workflow is a collection of multiple dependent Glue 
    #       jobs and crawlers that are run to complete a complex ETL task. A
    #       workflow manages the execution and monitoring of all its jobs and crawlers.</p>
    # @!attribute name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the workflow.</p>
    #   @return [String]
    # @!attribute default_run_properties
    #   <p>A collection of properties to be used as part of each execution of the workflow.
    #       The run properties are made available to each job in the workflow. A job can modify
    #       the properties for the next jobs in the flow.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_on
    #   <p>The date and time when the workflow was created.</p>
    #   @return [Time]
    # @!attribute last_modified_on
    #   <p>The date and time when the workflow was last modified.</p>
    #   @return [Time]
    # @!attribute last_run
    #   <p>The information about the last execution of the workflow.</p>
    #   @return [Types::WorkflowRun]
    # @!attribute graph
    #   <p>The graph representing all the Glue components that belong to the workflow as nodes and directed
    #         connections between them as edges.</p>
    #   @return [Types::WorkflowGraph]
    # @!attribute max_concurrent_runs
    #   <p>You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.</p>
    #   @return [Integer]
    # @!attribute blueprint_details
    #   <p>This structure indicates the details of the blueprint that this particular workflow is created from.</p>
    #   @return [Types::BlueprintDetails]
    class Workflow < Struct.new(
      :name,
      :description,
      :default_run_properties,
      :created_on,
      :last_modified_on,
      :last_run,
      :graph,
      :max_concurrent_runs,
      :blueprint_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A workflow graph represents the complete workflow containing all the Glue components present in the
    #       workflow and all the directed connections between them.</p>
    # @!attribute nodes
    #   <p>A list of the the Glue components belong to the workflow represented as nodes.</p>
    #   @return [Array<Types::Node>]
    # @!attribute edges
    #   <p>A list of all the directed connections between the nodes belonging to the workflow.</p>
    #   @return [Array<Types::Edge>]
    class WorkflowGraph < Struct.new(
      :nodes,
      :edges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A workflow run is an execution of a workflow providing all the runtime information.</p>
    # @!attribute name
    #   <p>Name of the workflow that was run.</p>
    #   @return [String]
    # @!attribute workflow_run_id
    #   <p>The ID of this workflow run.</p>
    #   @return [String]
    # @!attribute previous_run_id
    #   <p>The ID of the previous workflow run.</p>
    #   @return [String]
    # @!attribute workflow_run_properties
    #   <p>The workflow run properties which were set during the run.</p>
    #   @return [Hash<String, String>]
    # @!attribute started_on
    #   <p>The date and time when the workflow run was started.</p>
    #   @return [Time]
    # @!attribute completed_on
    #   <p>The date and time when the workflow run completed.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the workflow run.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>This error message describes any error that may have occurred in starting the workflow run. Currently the only error message is "Concurrent runs exceeded for workflow: <code>foo</code>."</p>
    #   @return [String]
    # @!attribute statistics
    #   <p>The statistics of the run.</p>
    #   @return [Types::WorkflowRunStatistics]
    # @!attribute graph
    #   <p>The graph representing all the Glue components that belong to the workflow as nodes and directed
    #         connections between them as edges.</p>
    #   @return [Types::WorkflowGraph]
    # @!attribute starting_event_batch_condition
    #   <p>The batch condition that started the workflow run.</p>
    #   @return [Types::StartingEventBatchCondition]
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
      :starting_event_batch_condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Workflow run statistics provides statistics about the workflow run.</p>
    # @!attribute total_actions
    #   <p>Total number of Actions in the workflow run.</p>
    #   @return [Integer]
    # @!attribute timeout_actions
    #   <p>Total number of Actions that timed out.</p>
    #   @return [Integer]
    # @!attribute failed_actions
    #   <p>Total number of Actions that have failed.</p>
    #   @return [Integer]
    # @!attribute stopped_actions
    #   <p>Total number of Actions that have stopped.</p>
    #   @return [Integer]
    # @!attribute succeeded_actions
    #   <p>Total number of Actions that have succeeded.</p>
    #   @return [Integer]
    # @!attribute running_actions
    #   <p>Total number Actions in running state.</p>
    #   @return [Integer]
    # @!attribute errored_actions
    #   <p>Indicates the count of job runs in the ERROR state in the workflow run.</p>
    #   @return [Integer]
    # @!attribute waiting_actions
    #   <p>Indicates the count of job runs in WAITING state in the workflow run.</p>
    #   @return [Integer]
    class WorkflowRunStatistics < Struct.new(
      :total_actions,
      :timeout_actions,
      :failed_actions,
      :stopped_actions,
      :succeeded_actions,
      :running_actions,
      :errored_actions,
      :waiting_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_actions] = 0 unless options.key?(:total_actions)
        options[:timeout_actions] = 0 unless options.key?(:timeout_actions)
        options[:failed_actions] = 0 unless options.key?(:failed_actions)
        options[:stopped_actions] = 0 unless options.key?(:stopped_actions)
        options[:succeeded_actions] = 0 unless options.key?(:succeeded_actions)
        options[:running_actions] = 0 unless options.key?(:running_actions)
        options[:errored_actions] = 0 unless options.key?(:errored_actions)
        options[:waiting_actions] = 0 unless options.key?(:waiting_actions)
        super
      end
    end

    # <p>A classifier for <code>XML</code> content.</p>
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #   @return [String]
    # @!attribute classification
    #   <p>An identifier of the data format that the classifier matches.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that this classifier was registered.</p>
    #   @return [Time]
    # @!attribute last_updated
    #   <p>The time that this classifier was last updated.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>The version of this classifier.</p>
    #   @return [Integer]
    # @!attribute row_tag
    #   <p>The XML tag designating the element that contains each record in an XML document being
    #         parsed. This can't identify a self-closing element (closed by <code>/></code>). An empty
    #         row element that contains only attributes can be parsed as long as it ends with a closing tag
    #         (for example, <code><row item_a="A" item_b="B"></row></code> is okay, but
    #           <code><row item_a="A" item_b="B" /></code> is not).</p>
    #   @return [String]
    class XMLClassifier < Struct.new(
      :name,
      :classification,
      :creation_time,
      :last_updated,
      :version,
      :row_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

  end
end
