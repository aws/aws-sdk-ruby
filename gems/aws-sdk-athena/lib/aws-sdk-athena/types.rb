# frozen_string_literal: true

# This is generated code!

module Aws::Athena
  # This module contains the types returned by client operations.
  module Types

    # <p>Indicates that an Amazon S3 canned ACL should be set to control ownership of
    #             stored query results, including data files inserted by Athena as the result
    #             of statements like CTAS or INSERT INTO. When Athena stores query results in
    #                 Amazon S3, the canned ACL is set with the <code>x-amz-acl</code> request
    #             header. For more information about S3 Object Ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html#object-ownership-overview">Object Ownership settings</a> in the <i>Amazon S3 User
    #                 Guide</i>.</p>
    # @!attribute s3_acl_option
    #   <p>The Amazon S3 canned ACL that Athena should specify when storing
    #               query results, including data files inserted by Athena as the result
    #               of statements like CTAS or INSERT INTO. Currently the only supported canned ACL is
    #                   <code>BUCKET_OWNER_FULL_CONTROL</code>. If a query runs in a workgroup and the
    #               workgroup overrides client-side settings, then the Amazon S3 canned ACL
    #               specified in the workgroup's settings is used for all queries that run in the workgroup.
    #               For more information about Amazon S3 canned ACLs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl">Canned ACL</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class AclConfiguration < Struct.new(
      nil,
      :s3_acl_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the application runtime IDs and their supported DPU sizes.</p>
    # @!attribute application_runtime_id
    #   <p>The name of the supported application runtime (for example, <code>Athena notebook
    #                   version 1</code>).</p>
    #   @return [String]
    # @!attribute supported_dpu_sizes
    #   <p>A list of the supported DPU sizes that the application runtime supports.</p>
    #   @return [Array<Integer>]
    class ApplicationDPUSizes < Struct.new(
      nil,
      :application_runtime_id,
      :supported_dpu_sizes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about an Athena query error. The
    #                 <code>AthenaError</code> feature provides standardized error information to help you
    #             understand failed queries and take steps after a query failure occurs.
    #                 <code>AthenaError</code> includes an <code>ErrorCategory</code> field that specifies
    #             whether the cause of the failed query is due to system error, user error, or other
    #             error.</p>
    # @!attribute error_category
    #   <p>An integer value that specifies the category of a query failure error. The following
    #               list shows the category for each integer value.</p>
    #            <p>
    #               <b>1</b> - System</p>
    #            <p>
    #               <b>2</b> - User</p>
    #            <p>
    #               <b>3</b> - Other</p>
    #   @return [Integer]
    # @!attribute error_type
    #   <p>An integer value that provides specific information about an Athena query
    #               error. For the meaning of specific values, see the <a href="https://docs.aws.amazon.com/athena/latest/ug/error-reference.html#error-reference-error-type-reference">Error Type Reference</a> in the <i>Amazon Athena User
    #                   Guide</i>.</p>
    #   @return [Integer]
    # @!attribute retryable
    #   <p>True if the query might succeed if resubmitted.</p>
    #   @return [Boolean]
    # @!attribute error_message
    #   <p>Contains a short description of the error that occurred.</p>
    #   @return [String]
    class AthenaError < Struct.new(
      nil,
      :error_category,
      :error_type,
      :retryable,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retryable] = false unless options.key?(:retryable)
        super
      end
    end

    # <p>Contains an array of named query IDs.</p>
    # @!attribute named_query_ids
    #   <p>An array of query IDs.</p>
    #   @return [Array<String>]
    class BatchGetNamedQueryInput < Struct.new(
      nil,
      :named_query_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute named_queries
    #   <p>Information about the named query IDs submitted.</p>
    #   @return [Array<Types::NamedQuery>]
    # @!attribute unprocessed_named_query_ids
    #   <p>Information about provided query IDs.</p>
    #   @return [Array<Types::UnprocessedNamedQueryId>]
    class BatchGetNamedQueryOutput < Struct.new(
      nil,
      :named_queries,
      :unprocessed_named_query_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute prepared_statement_names
    #   <p>A list of prepared statement names to return.</p>
    #   @return [Array<String>]
    # @!attribute work_group
    #   <p>The name of the workgroup to which the prepared statements belong.</p>
    #   @return [String]
    class BatchGetPreparedStatementInput < Struct.new(
      nil,
      :prepared_statement_names,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute prepared_statements
    #   <p>The list of prepared statements returned.</p>
    #   @return [Array<Types::PreparedStatement>]
    # @!attribute unprocessed_prepared_statement_names
    #   <p>A list of one or more prepared statements that were requested but could not be
    #               returned.</p>
    #   @return [Array<Types::UnprocessedPreparedStatementName>]
    class BatchGetPreparedStatementOutput < Struct.new(
      nil,
      :prepared_statements,
      :unprocessed_prepared_statement_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an array of query execution IDs.</p>
    # @!attribute query_execution_ids
    #   <p>An array of query execution IDs.</p>
    #   @return [Array<String>]
    class BatchGetQueryExecutionInput < Struct.new(
      nil,
      :query_execution_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_executions
    #   <p>Information about a query execution.</p>
    #   @return [Array<Types::QueryExecution>]
    # @!attribute unprocessed_query_execution_ids
    #   <p>Information about the query executions that failed to run.</p>
    #   @return [Array<Types::UnprocessedQueryExecutionId>]
    class BatchGetQueryExecutionOutput < Struct.new(
      nil,
      :query_executions,
      :unprocessed_query_execution_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration information for the calculation.</p>
    # @!attribute code_block
    #   <p>A string that contains the code for the calculation.</p>
    #   @return [String]
    class CalculationConfiguration < Struct.new(
      nil,
      :code_block,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an application-specific calculation result.</p>
    # @!attribute std_out_s3_uri
    #   <p>The Amazon S3 location of the <code>stdout</code> file for the calculation.</p>
    #   @return [String]
    # @!attribute std_error_s3_uri
    #   <p>The Amazon S3 location of the <code>stderr</code> error messages file for the
    #               calculation.</p>
    #   @return [String]
    # @!attribute result_s3_uri
    #   <p>The Amazon S3 location of the folder for the calculation results.</p>
    #   @return [String]
    # @!attribute result_type
    #   <p>The data format of the calculation result.</p>
    #   @return [String]
    class CalculationResult < Struct.new(
      nil,
      :std_out_s3_uri,
      :std_error_s3_uri,
      :result_s3_uri,
      :result_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains statistics for a notebook calculation.</p>
    # @!attribute dpu_execution_in_millis
    #   <p>The data processing unit execution time in milliseconds for the calculation.</p>
    #   @return [Integer]
    # @!attribute progress
    #   <p>The progress of the calculation.</p>
    #   @return [String]
    class CalculationStatistics < Struct.new(
      nil,
      :dpu_execution_in_millis,
      :progress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the status of a notebook calculation.</p>
    # @!attribute submission_date_time
    #   <p>The date and time the calculation was submitted for processing.</p>
    #   @return [Time]
    # @!attribute completion_date_time
    #   <p>The date and time the calculation completed processing.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The state of the calculation execution. A description of each state follows.</p>
    #            <p>
    #               <code>CREATING</code> - The calculation is in the process of being created.</p>
    #            <p>
    #               <code>CREATED</code> - The calculation has been created and is ready to run.</p>
    #            <p>
    #               <code>QUEUED</code> - The calculation has been queued for processing.</p>
    #            <p>
    #               <code>RUNNING</code> - The calculation is running.</p>
    #            <p>
    #               <code>CANCELING</code> - A request to cancel the calculation has been received and the
    #               system is working to stop it.</p>
    #            <p>
    #               <code>CANCELED</code> - The calculation is no longer running as the result of a cancel
    #               request.</p>
    #            <p>
    #               <code>COMPLETED</code> - The calculation has completed without error.</p>
    #            <p>
    #               <code>FAILED</code> - The calculation failed and is no longer running.</p>
    #   @return [String]
    # @!attribute state_change_reason
    #   <p>The reason for the calculation state change (for example, the calculation was canceled
    #               because the session was terminated).</p>
    #   @return [String]
    class CalculationStatus < Struct.new(
      nil,
      :submission_date_time,
      :completion_date_time,
      :state,
      :state_change_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information for a notebook calculation.</p>
    # @!attribute calculation_execution_id
    #   <p>The calculation execution UUID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the calculation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Contains information about the status of the calculation.</p>
    #   @return [Types::CalculationStatus]
    class CalculationSummary < Struct.new(
      nil,
      :calculation_execution_id,
      :description,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the capacity reservation to cancel.</p>
    #   @return [String]
    class CancelCapacityReservationInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelCapacityReservationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the submission time of a single allocation request for a capacity reservation
    #             and the most recent status of the attempted allocation.</p>
    # @!attribute status
    #   <p>The status of the capacity allocation.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the capacity allocation.</p>
    #   @return [String]
    # @!attribute request_time
    #   <p>The time when the capacity allocation was requested.</p>
    #   @return [Time]
    # @!attribute request_completion_time
    #   <p>The time when the capacity allocation request was completed.</p>
    #   @return [Time]
    class CapacityAllocation < Struct.new(
      nil,
      :status,
      :status_message,
      :request_time,
      :request_completion_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A mapping between one or more workgroups and a capacity reservation.</p>
    # @!attribute work_group_names
    #   <p>The list of workgroup names for the capacity assignment.</p>
    #   @return [Array<String>]
    class CapacityAssignment < Struct.new(
      nil,
      :work_group_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Assigns Athena workgroups (and hence their queries) to capacity
    #             reservations. A capacity reservation can have only one capacity assignment
    #             configuration, but the capacity assignment configuration can be made up of multiple
    #             individual assignments. Each assignment specifies how Athena queries can
    #             consume capacity from the capacity reservation that their workgroup is mapped to.</p>
    # @!attribute capacity_reservation_name
    #   <p>The name of the reservation that the capacity assignment configuration is for.</p>
    #   @return [String]
    # @!attribute capacity_assignments
    #   <p>The list of assignments that make up the capacity assignment configuration.</p>
    #   @return [Array<Types::CapacityAssignment>]
    class CapacityAssignmentConfiguration < Struct.new(
      nil,
      :capacity_reservation_name,
      :capacity_assignments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reservation for a specified number of data processing units (DPUs). When a
    #             reservation is initially created, it has no DPUs. Athena allocates DPUs
    #             until the allocated amount equals the requested amount.</p>
    # @!attribute name
    #   <p>The name of the capacity reservation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the capacity reservation.</p>
    #   @return [String]
    # @!attribute target_dpus
    #   <p>The number of data processing units requested.</p>
    #   @return [Integer]
    # @!attribute allocated_dpus
    #   <p>The number of data processing units currently allocated.</p>
    #   @return [Integer]
    # @!attribute last_allocation
    #   <p>Contains the submission time of a single allocation request for a capacity reservation
    #               and the most recent status of the attempted allocation.</p>
    #   @return [Types::CapacityAllocation]
    # @!attribute last_successful_allocation_time
    #   <p>The time of the most recent capacity allocation that succeeded.</p>
    #   @return [Time]
    # @!attribute creation_time
    #   <p>The time in UTC epoch millis when the capacity reservation was created.</p>
    #   @return [Time]
    class CapacityReservation < Struct.new(
      nil,
      :name,
      :status,
      :target_dpus,
      :allocated_dpus,
      :last_allocation,
      :last_successful_allocation_time,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A classification refers to a set of specific configurations.</p>
    # @!attribute name
    #   <p>The name of the configuration classification.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>A set of properties specified within a configuration classification.</p>
    #   @return [Hash<String, String>]
    class Classification < Struct.new(
      nil,
      :name,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for delivering logs to Amazon CloudWatch log groups.</p>
    # @!attribute enabled
    #   <p>Enables CloudWatch logging.</p>
    #   @return [Boolean]
    # @!attribute log_group
    #   <p>The name of the log group in Amazon CloudWatch Logs where you want to publish
    #               your logs.</p>
    #   @return [String]
    # @!attribute log_stream_name_prefix
    #   <p>Prefix for the CloudWatch log stream name.</p>
    #   @return [String]
    # @!attribute log_types
    #   <p>The types of logs that you want to publish to CloudWatch.</p>
    #   @return [Hash<String, Array<String>>]
    class CloudWatchLoggingConfiguration < Struct.new(
      nil,
      :enabled,
      :log_group,
      :log_stream_name_prefix,
      :log_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata for a column in a table.</p>
    # @!attribute name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the column.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>Optional information about the column.</p>
    #   @return [String]
    class Column < Struct.new(
      nil,
      :name,
      :type,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the columns in a query execution result.</p>
    # @!attribute catalog_name
    #   <p>The catalog to which the query results belong.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The schema name (database name) to which the query results belong.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The table name for the query results.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute label
    #   <p>A column label.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the column.</p>
    #   @return [String]
    # @!attribute precision
    #   <p>For <code>DECIMAL</code> data types, specifies the total number of digits, up to 38.
    #               For performance reasons, we recommend up to 18 digits.</p>
    #   @return [Integer]
    # @!attribute scale
    #   <p>For <code>DECIMAL</code> data types, specifies the total number of digits in the
    #               fractional part of the value. Defaults to 0.</p>
    #   @return [Integer]
    # @!attribute nullable
    #   <p>Unsupported constraint. This value always shows as <code>UNKNOWN</code>.</p>
    #   @return [String]
    # @!attribute case_sensitive
    #   <p>Indicates whether values in the column are case-sensitive.</p>
    #   @return [Boolean]
    class ColumnInfo < Struct.new(
      nil,
      :catalog_name,
      :schema_name,
      :table_name,
      :name,
      :label,
      :type,
      :precision,
      :scale,
      :nullable,
      :case_sensitive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:precision] = 0 unless options.key?(:precision)
        options[:scale] = 0 unless options.key?(:scale)
        options[:case_sensitive] = false unless options.key?(:case_sensitive)
        super
      end
    end

    # @!attribute target_dpus
    #   <p>The number of requested data processing units.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the capacity reservation to create.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the capacity reservation.</p>
    #   @return [Array<Types::Tag>]
    class CreateCapacityReservationInput < Struct.new(
      nil,
      :target_dpus,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateCapacityReservationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the data catalog to create. The catalog name must be unique for the
    #                   Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at
    #               sign, or hyphen characters. The remainder of the length constraint of 256 is reserved
    #               for use by Athena.</p>
    #            <p>For <code>FEDERATED</code> type the catalog name has following considerations and
    #               limits:</p>
    #            <ul>
    #               <li>
    #                  <p>The catalog name allows special characters such as <code>_ , @ , \ , -
    #                       </code>. These characters are replaced with a hyphen (-) when creating the CFN
    #                       Stack Name and with an underscore (_) when creating the Lambda Function and Glue
    #                       Connection Name.</p>
    #               </li>
    #               <li>
    #                  <p>The catalog name has a theoretical limit of 128 characters. However, since we
    #                       use it to create other resources that allow less characters and we prepend a
    #                       prefix to it, the actual catalog name limit for <code>FEDERATED</code> catalog
    #                       is 64 - 23 = 41 characters.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute type
    #   <p>The type of data catalog to create: <code>LAMBDA</code> for a federated catalog,
    #                   <code>GLUE</code> for an Glue Data Catalog, and <code>HIVE</code> for an
    #               external Apache Hive metastore. <code>FEDERATED</code> is a federated catalog for which
    #                   Athena creates the connection and the Lambda function for
    #               you based on the parameters that you pass.</p>
    #            <p>For <code>FEDERATED</code> type, we do not support IAM identity center.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the data catalog to be created.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Specifies the Lambda function or functions to use for creating the data
    #               catalog. This is a mapping whose values depend on the catalog type. </p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>HIVE</code> data catalog type, use the following syntax. The
    #                           <code>metadata-function</code> parameter is required. <code>The
    #                           sdk-version</code> parameter is optional and defaults to the currently
    #                       supported version.</p>
    #                  <p>
    #                     <code>metadata-function=<i>lambda_arn</i>,
    #                               sdk-version=<i>version_number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets
    #                       of required parameters, but not both.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have one Lambda function that processes metadata
    #                               and another for reading the actual data, use the following syntax. Both
    #                               parameters are required.</p>
    #                        <p>
    #                           <code>metadata-function=<i>lambda_arn</i>,
    #                                       record-function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p> If you have a composite Lambda function that processes
    #                               both metadata and data, use the following syntax to specify your Lambda function.</p>
    #                        <p>
    #                           <code>function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>The <code>GLUE</code> type takes a catalog ID parameter and is required. The
    #                               <code>
    #                        <i>catalog_id</i>
    #                     </code> is the account ID of the
    #                           Amazon Web Services account to which the Glue Data Catalog
    #                       belongs.</p>
    #                  <p>
    #                     <code>catalog-id=<i>catalog_id</i>
    #                     </code>
    #                  </p>
    #                  <ul>
    #                     <li>
    #                        <p>The <code>GLUE</code> data catalog type also applies to the default
    #                                   <code>AwsDataCatalog</code> that already exists in your account, of
    #                               which you can have only one and cannot modify.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>The <code>FEDERATED</code> data catalog type uses one of the following
    #                       parameters, but not both. Use <code>connection-arn</code> for an existing
    #                           Glue connection. Use <code>connection-type</code> and
    #                           <code>connection-properties</code> to specify the configuration setting for
    #                       a new connection.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>connection-arn:<i><glue_connection_arn_to_reuse></i>
    #                           </code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>lambda-role-arn</code> (optional): The execution role to use for the
    #                               Lambda function. If not provided, one is created.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>connection-type:MYSQL|REDSHIFT|....,
    #                                       connection-properties:"<i><json_string></i>"</code>
    #                        </p>
    #                        <p>For <i>
    #                              <code><json_string></code>
    #                           </i>, use escaped
    #                               JSON text, as in the following example.</p>
    #                        <p>
    #                           <code>"{\"spill_bucket\":\"my_spill\",\"spill_prefix\":\"athena-spill\",\"host\":\"abc12345.snowflakecomputing.com\",\"port\":\"1234\",\"warehouse\":\"DEV_WH\",\"database\":\"TEST\",\"schema\":\"PUBLIC\",\"SecretArn\":\"arn:aws:secretsmanager:ap-south-1:111122223333:secret:snowflake-XHb67j\"}"</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>A list of comma separated tags to add to the data catalog that is created. All the
    #               resources that are created by the <code>CreateDataCatalog</code> API operation with
    #                   <code>FEDERATED</code> type will have the tag
    #                   <code>federated_athena_datacatalog="true"</code>. This includes the CFN Stack, Glue
    #               Connection, Athena DataCatalog, and all the resources created as part of the CFN Stack
    #               (Lambda Function, IAM policies/roles).</p>
    #   @return [Array<Types::Tag>]
    class CreateDataCatalogInput < Struct.new(
      nil,
      :name,
      :type,
      :description,
      :parameters,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_catalog
    #   <p>Contains information about a data catalog in an Amazon Web Services account.</p>
    #            <note>
    #               <p>In the Athena console, data catalogs are listed as "data sources" on
    #                   the <b>Data sources</b> page under the <b>Data source name</b> column.</p>
    #            </note>
    #   @return [Types::DataCatalog]
    class CreateDataCatalogOutput < Struct.new(
      nil,
      :data_catalog,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The query name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The query description.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The database to which the query belongs.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The contents of the query with all query statements.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the query is
    #               idempotent (executes only once). If another <code>CreateNamedQuery</code> request is
    #               received, the same response is returned and another query is not created. If a parameter
    #               has changed, for example, the <code>QueryString</code>, an error is returned.</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for users. If you are
    #                   not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    #   @return [String]
    # @!attribute work_group
    #   <p>The name of the workgroup in which the named query is being created.</p>
    #   @return [String]
    class CreateNamedQueryInput < Struct.new(
      nil,
      :name,
      :description,
      :database,
      :query_string,
      :client_request_token,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute named_query_id
    #   <p>The unique ID of the query.</p>
    #   @return [String]
    class CreateNamedQueryOutput < Struct.new(
      nil,
      :named_query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute work_group
    #   <p>The name of the Spark enabled workgroup in which the notebook will be created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>ipynb</code> file to be created in the Spark workgroup, without
    #               the <code>.ipynb</code> extension.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the notebook is
    #               idempotent (executes only once).</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for you. If you are not
    #                   using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    #   @return [String]
    class CreateNotebookInput < Struct.new(
      nil,
      :work_group,
      :name,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notebook_id
    #   <p>A unique identifier for the notebook.</p>
    #   @return [String]
    class CreateNotebookOutput < Struct.new(
      nil,
      :notebook_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statement_name
    #   <p>The name of the prepared statement.</p>
    #   @return [String]
    # @!attribute work_group
    #   <p>The name of the workgroup to which the prepared statement belongs.</p>
    #   @return [String]
    # @!attribute query_statement
    #   <p>The query string for the prepared statement.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the prepared statement.</p>
    #   @return [String]
    class CreatePreparedStatementInput < Struct.new(
      nil,
      :statement_name,
      :work_group,
      :query_statement,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreatePreparedStatementOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    class CreatePresignedNotebookUrlRequest < Struct.new(
      nil,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notebook_url
    #   <p>The URL of the notebook. The URL includes the authentication token and notebook file
    #               name and points directly to the opened notebook.</p>
    #   @return [String]
    # @!attribute auth_token
    #   <p>The authentication token for the notebook.</p>
    #   @return [String]
    # @!attribute auth_token_expiration_time
    #   <p>The UTC epoch time when the authentication token expires.</p>
    #   @return [Integer]
    class CreatePresignedNotebookUrlResponse < Struct.new(
      nil,
      :notebook_url,
      :auth_token,
      :auth_token_expiration_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The workgroup name.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Contains configuration information for creating an Athena SQL workgroup or
    #               Spark enabled Athena workgroup. Athena SQL workgroup
    #               configuration includes the location in Amazon S3 where query and calculation
    #               results are stored, the encryption configuration, if any, used for encrypting query
    #               results, whether the Amazon CloudWatch Metrics are enabled for the workgroup, the
    #               limit for the amount of bytes scanned (cutoff) per query, if it is specified, and
    #               whether workgroup's settings (specified with <code>EnforceWorkGroupConfiguration</code>)
    #               in the <code>WorkGroupConfiguration</code> override client-side settings. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    #   @return [Types::WorkGroupConfiguration]
    # @!attribute description
    #   <p>The workgroup description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of comma separated tags to add to the workgroup that is created.</p>
    #   @return [Array<Types::Tag>]
    class CreateWorkGroupInput < Struct.new(
      nil,
      :name,
      :configuration,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateWorkGroupOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the customer managed KMS key that is used to encrypt the user's data stores
    #             in Athena. When an Amazon Web Services managed key is used, this value is
    #             null. This setting does not apply to Athena SQL workgroups.</p>
    # @!attribute kms_key
    #   <p>The customer managed KMS key that is used to encrypt the user's data stores in Athena.</p>
    #   @return [String]
    class CustomerContentEncryptionConfiguration < Struct.new(
      nil,
      :kms_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a data catalog in an Amazon Web Services account.</p>
    #          <note>
    #             <p>In the Athena console, data catalogs are listed as "data sources" on
    #                 the <b>Data sources</b> page under the <b>Data source name</b> column.</p>
    #          </note>
    # @!attribute name
    #   <p>The name of the data catalog. The catalog name must be unique for the Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at sign,
    #               or hyphen characters. The remainder of the length constraint of 256 is reserved for use
    #               by Athena.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the data catalog.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of data catalog to create: <code>LAMBDA</code> for a federated catalog,
    #                   <code>GLUE</code> for an Glue Data Catalog, and <code>HIVE</code> for an
    #               external Apache Hive metastore. <code>FEDERATED</code> is a federated catalog for which
    #                   Athena creates the connection and the Lambda function for
    #               you based on the parameters that you pass.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Specifies the Lambda function or functions to use for the data catalog.
    #               This is a mapping whose values depend on the catalog type. </p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>HIVE</code> data catalog type, use the following syntax. The
    #                           <code>metadata-function</code> parameter is required. <code>The
    #                           sdk-version</code> parameter is optional and defaults to the currently
    #                       supported version.</p>
    #                  <p>
    #                     <code>metadata-function=<i>lambda_arn</i>,
    #                               sdk-version=<i>version_number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets
    #                       of required parameters, but not both.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have one Lambda function that processes metadata
    #                               and another for reading the actual data, use the following syntax. Both
    #                               parameters are required.</p>
    #                        <p>
    #                           <code>metadata-function=<i>lambda_arn</i>,
    #                                       record-function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p> If you have a composite Lambda function that processes
    #                               both metadata and data, use the following syntax to specify your Lambda function.</p>
    #                        <p>
    #                           <code>function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>The <code>GLUE</code> type takes a catalog ID parameter and is required. The
    #                               <code>
    #                        <i>catalog_id</i>
    #                     </code> is the account ID of the
    #                           Amazon Web Services account to which the Glue catalog
    #                       belongs.</p>
    #                  <p>
    #                     <code>catalog-id=<i>catalog_id</i>
    #                     </code>
    #                  </p>
    #                  <ul>
    #                     <li>
    #                        <p>The <code>GLUE</code> data catalog type also applies to the default
    #                                   <code>AwsDataCatalog</code> that already exists in your account, of
    #                               which you can have only one and cannot modify.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>The <code>FEDERATED</code> data catalog type uses one of the following
    #                       parameters, but not both. Use <code>connection-arn</code> for an existing
    #                           Glue connection. Use <code>connection-type</code> and
    #                           <code>connection-properties</code> to specify the configuration setting for
    #                       a new connection.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>connection-arn:<i><glue_connection_arn_to_reuse></i>
    #                           </code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>connection-type:MYSQL|REDSHIFT|....,
    #                                       connection-properties:"<i><json_string></i>"</code>
    #                        </p>
    #                        <p>For <i>
    #                              <code><json_string></code>
    #                           </i>, use escaped
    #                               JSON text, as in the following example.</p>
    #                        <p>
    #                           <code>"{\"spill_bucket\":\"my_spill\",\"spill_prefix\":\"athena-spill\",\"host\":\"abc12345.snowflakecomputing.com\",\"port\":\"1234\",\"warehouse\":\"DEV_WH\",\"database\":\"TEST\",\"schema\":\"PUBLIC\",\"SecretArn\":\"arn:aws:secretsmanager:ap-south-1:111122223333:secret:snowflake-XHb67j\"}"</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The status of the creation or deletion of the data catalog.</p>
    #            <ul>
    #               <li>
    #                  <p>The <code>LAMBDA</code>, <code>GLUE</code>, and <code>HIVE</code> data catalog
    #                       types are created synchronously. Their status is either
    #                           <code>CREATE_COMPLETE</code> or <code>CREATE_FAILED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The <code>FEDERATED</code> data catalog type is created asynchronously.</p>
    #               </li>
    #            </ul>
    #            <p>Data catalog creation status:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code>: Federated data catalog creation in
    #                       progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_COMPLETE</code>: Data catalog creation complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code>: Data catalog could not be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED_CLEANUP_IN_PROGRESS</code>: Federated data catalog
    #                       creation failed and is being removed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED_CLEANUP_COMPLETE</code>: Federated data catalog creation
    #                       failed and was removed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED_CLEANUP_FAILED</code>: Federated data catalog creation
    #                       failed but could not be removed.</p>
    #               </li>
    #            </ul>
    #            <p>Data catalog deletion status:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETE_IN_PROGRESS</code>: Federated data catalog deletion in
    #                       progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_COMPLETE</code>: Federated data catalog deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code>: Federated data catalog could not be
    #                       deleted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection for a <code>FEDERATED</code> data catalog (for example,
    #                   <code>REDSHIFT</code>, <code>MYSQL</code>, or <code>SQLSERVER</code>). For
    #               information about individual connectors, see <a href="https://docs.aws.amazon.com/athena/latest/ug/connectors-available.html">Available data source
    #                   connectors</a>.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Text of the error that occurred during data catalog creation or deletion.</p>
    #   @return [String]
    class DataCatalog < Struct.new(
      nil,
      :name,
      :description,
      :type,
      :parameters,
      :status,
      :connection_type,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary information for the data catalog, which includes its name and type.</p>
    # @!attribute catalog_name
    #   <p>The name of the data catalog. The catalog name is unique for the Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at sign,
    #               or hyphen characters. The remainder of the length constraint of 256 is reserved for use
    #               by Athena.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data catalog type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the creation or deletion of the data catalog.</p>
    #            <ul>
    #               <li>
    #                  <p>The <code>LAMBDA</code>, <code>GLUE</code>, and <code>HIVE</code> data catalog
    #                       types are created synchronously. Their status is either
    #                           <code>CREATE_COMPLETE</code> or <code>CREATE_FAILED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The <code>FEDERATED</code> data catalog type is created asynchronously.</p>
    #               </li>
    #            </ul>
    #            <p>Data catalog creation status:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code>: Federated data catalog creation in
    #                       progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_COMPLETE</code>: Data catalog creation complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code>: Data catalog could not be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED_CLEANUP_IN_PROGRESS</code>: Federated data catalog
    #                       creation failed and is being removed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED_CLEANUP_COMPLETE</code>: Federated data catalog creation
    #                       failed and was removed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED_CLEANUP_FAILED</code>: Federated data catalog creation
    #                       failed but could not be removed.</p>
    #               </li>
    #            </ul>
    #            <p>Data catalog deletion status:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETE_IN_PROGRESS</code>: Federated data catalog deletion in
    #                       progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_COMPLETE</code>: Federated data catalog deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code>: Federated data catalog could not be
    #                       deleted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The type of connection for a <code>FEDERATED</code> data catalog (for example,
    #                   <code>REDSHIFT</code>, <code>MYSQL</code>, or <code>SQLSERVER</code>). For
    #               information about individual connectors, see <a href="https://docs.aws.amazon.com/athena/latest/ug/connectors-available.html">Available data source
    #                   connectors</a>.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Text of the error that occurred during data catalog creation or deletion.</p>
    #   @return [String]
    class DataCatalogSummary < Struct.new(
      nil,
      :catalog_name,
      :type,
      :status,
      :connection_type,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata information for a database in a data catalog.</p>
    # @!attribute name
    #   <p>The name of the database.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the database.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A set of custom key/value pairs.</p>
    #   @return [Hash<String, String>]
    class Database < Struct.new(
      nil,
      :name,
      :description,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A piece of data (a field in the table).</p>
    # @!attribute var_char_value
    #   <p>The value of the datum.</p>
    #   @return [String]
    class Datum < Struct.new(
      nil,
      :var_char_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the capacity reservation to delete.</p>
    #   @return [String]
    class DeleteCapacityReservationInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCapacityReservationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the data catalog to delete.</p>
    #   @return [String]
    # @!attribute delete_catalog_only
    #   <p>Deletes the Athena Data Catalog. You can only use this with the <code>FEDERATED</code>
    #               catalogs. You usually perform this before registering the connector with Glue Data
    #               Catalog. After deletion, you will have to manage the Glue Connection and Lambda
    #               function. </p>
    #   @return [Boolean]
    class DeleteDataCatalogInput < Struct.new(
      nil,
      :name,
      :delete_catalog_only,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_catalog
    #   <p>Contains information about a data catalog in an Amazon Web Services account.</p>
    #            <note>
    #               <p>In the Athena console, data catalogs are listed as "data sources" on
    #                   the <b>Data sources</b> page under the <b>Data source name</b> column.</p>
    #            </note>
    #   @return [Types::DataCatalog]
    class DeleteDataCatalogOutput < Struct.new(
      nil,
      :data_catalog,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute named_query_id
    #   <p>The unique ID of the query to delete.</p>
    #   @return [String]
    class DeleteNamedQueryInput < Struct.new(
      nil,
      :named_query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteNamedQueryOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notebook_id
    #   <p>The ID of the notebook to delete.</p>
    #   @return [String]
    class DeleteNotebookInput < Struct.new(
      nil,
      :notebook_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteNotebookOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statement_name
    #   <p>The name of the prepared statement to delete.</p>
    #   @return [String]
    # @!attribute work_group
    #   <p>The workgroup to which the statement to be deleted belongs.</p>
    #   @return [String]
    class DeletePreparedStatementInput < Struct.new(
      nil,
      :statement_name,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeletePreparedStatementOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute work_group
    #   <p>The unique name of the workgroup to delete.</p>
    #   @return [String]
    # @!attribute recursive_delete_option
    #   <p>The option to delete the workgroup and its contents even if the workgroup contains any
    #               named queries, query executions, or notebooks.</p>
    #   @return [Boolean]
    class DeleteWorkGroupInput < Struct.new(
      nil,
      :work_group,
      :recursive_delete_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWorkGroupOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If query and calculation results are encrypted in Amazon S3, indicates the
    #             encryption option used (for example, <code>SSE_KMS</code> or <code>CSE_KMS</code>) and
    #             key information.</p>
    # @!attribute encryption_option
    #   <p>Indicates whether Amazon S3 server-side encryption with Amazon S3-managed keys (<code>SSE_S3</code>), server-side encryption with KMS-managed keys
    #                   (<code>SSE_KMS</code>), or client-side encryption with KMS-managed keys
    #                   (<code>CSE_KMS</code>) is used.</p>
    #            <p>If a query runs in a workgroup and the workgroup overrides client-side settings, then
    #               the workgroup's setting for encryption is used. It specifies whether query results must
    #               be encrypted, for all queries that run in this workgroup. </p>
    #   @return [String]
    # @!attribute kms_key
    #   <p>For <code>SSE_KMS</code> and <code>CSE_KMS</code>, this is the KMS key ARN or
    #               ID.</p>
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      nil,
      :encryption_option,
      :kms_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The engine configuration for the workgroup, which includes the minimum/maximum number of Data Processing Units (DPU) that queries should use when
    #             running in provisioned capacity. If not specified, Athena uses default values (Default value for min is 4 and for max is Minimum of 124 and allocated DPUs).</p>
    #          <p>To specify DPU values for PC queries the WG containing EngineConfiguration should have the following values:
    #         The name of the Classifications should be <code>athena-query-engine-properties</code>, with the only allowed properties as <code>max-dpu-count</code> and <code>min-dpu-count</code>.</p>
    # @!attribute coordinator_dpu_size
    #   <p>The number of DPUs to use for the coordinator. A coordinator is a special executor
    #               that orchestrates processing work and manages other executors in a notebook session. The
    #               default is 1.</p>
    #   @return [Integer]
    # @!attribute max_concurrent_dpus
    #   <p>The maximum number of DPUs that can run concurrently.</p>
    #   @return [Integer]
    # @!attribute default_executor_dpu_size
    #   <p>The default number of DPUs to use for executors. An executor is the smallest unit of
    #               compute that a notebook session can request from Athena. The default is
    #               1.</p>
    #   @return [Integer]
    # @!attribute additional_configs
    #   <p>Contains additional notebook engine <code>MAP<string, string></code> parameter
    #               mappings in the form of key-value pairs. To specify an Athena notebook that
    #               the Jupyter server will download and serve, specify a value for the <a>StartSessionRequest$NotebookVersion</a> field, and then add a key named
    #                   <code>NotebookId</code> to <code>AdditionalConfigs</code> that has the value of the
    #                   Athena notebook ID.</p>
    #   @return [Hash<String, String>]
    # @!attribute spark_properties
    #   <p>Specifies custom jar files and Spark properties for use cases like cluster encryption,
    #               table formats, and general Spark tuning.</p>
    #   @return [Hash<String, String>]
    # @!attribute classifications
    #   <p>The configuration classifications that can be specified for the engine.</p>
    #   @return [Array<Types::Classification>]
    class EngineConfiguration < Struct.new(
      nil,
      :coordinator_dpu_size,
      :max_concurrent_dpus,
      :default_executor_dpu_size,
      :additional_configs,
      :spark_properties,
      :classifications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_concurrent_dpus] = 20 unless options.key?(:max_concurrent_dpus)
        super
      end
    end

    # <p>The Athena engine version for running queries, or the PySpark engine
    #             version for running sessions.</p>
    # @!attribute selected_engine_version
    #   <p>The engine version requested by the user. Possible values are determined by the output
    #               of <code>ListEngineVersions</code>, including AUTO. The default is AUTO.</p>
    #   @return [String]
    # @!attribute effective_engine_version
    #   <p>Read only. The engine version on which the query runs. If the user requests a valid
    #               engine version other than Auto, the effective engine version is the same as the engine
    #               version that the user requested. If the user requests Auto, the effective engine version
    #               is chosen by Athena. When a request to update the engine version is made by
    #               a <code>CreateWorkGroup</code> or <code>UpdateWorkGroup</code> operation, the
    #                   <code>EffectiveEngineVersion</code> field is ignored.</p>
    #   @return [String]
    class EngineVersion < Struct.new(
      nil,
      :selected_engine_version,
      :effective_engine_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an executor.</p>
    # @!attribute executor_id
    #   <p>The UUID of the executor.</p>
    #   @return [String]
    # @!attribute executor_type
    #   <p>The type of executor used for the application (<code>COORDINATOR</code>,
    #                   <code>GATEWAY</code>, or <code>WORKER</code>).</p>
    #   @return [String]
    # @!attribute start_date_time
    #   <p>The date and time that the executor started.</p>
    #   @return [Integer]
    # @!attribute termination_date_time
    #   <p>The date and time that the executor was terminated.</p>
    #   @return [Integer]
    # @!attribute executor_state
    #   <p>The processing state of the executor. A description of each state follows.</p>
    #            <p>
    #               <code>CREATING</code> - The executor is being started, including acquiring
    #               resources.</p>
    #            <p>
    #               <code>CREATED</code> - The executor has been started.</p>
    #            <p>
    #               <code>REGISTERED</code> - The executor has been registered.</p>
    #            <p>
    #               <code>TERMINATING</code> - The executor is in the process of shutting down.</p>
    #            <p>
    #               <code>TERMINATED</code> - The executor is no longer running.</p>
    #            <p>
    #               <code>FAILED</code> - Due to a failure, the executor is no longer running.</p>
    #   @return [String]
    # @!attribute executor_size
    #   <p>The smallest unit of compute that a session can request from Athena. Size
    #               is measured in data processing unit (DPU) values, a relative measure of processing
    #               power.</p>
    #   @return [Integer]
    class ExecutorsSummary < Struct.new(
      nil,
      :executor_id,
      :executor_type,
      :start_date_time,
      :termination_date_time,
      :executor_state,
      :executor_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notebook_id
    #   <p>The ID of the notebook to export.</p>
    #   @return [String]
    class ExportNotebookInput < Struct.new(
      nil,
      :notebook_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notebook_metadata
    #   <p>The notebook metadata, including notebook ID, notebook name, and workgroup
    #               name.</p>
    #   @return [Types::NotebookMetadata]
    # @!attribute payload
    #   <p>The content of the exported notebook.</p>
    #   @return [String]
    class ExportNotebookOutput < Struct.new(
      nil,
      :notebook_metadata,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A string for searching notebook names.</p>
    # @!attribute name
    #   <p>The name of the notebook to search for.</p>
    #   @return [String]
    class FilterDefinition < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculation_execution_id
    #   <p>The calculation execution UUID.</p>
    #   @return [String]
    class GetCalculationExecutionCodeRequest < Struct.new(
      nil,
      :calculation_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_block
    #   <p>The unencrypted code that was executed for the calculation.</p>
    #   @return [String]
    class GetCalculationExecutionCodeResponse < Struct.new(
      nil,
      :code_block,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculation_execution_id
    #   <p>The calculation execution UUID.</p>
    #   @return [String]
    class GetCalculationExecutionRequest < Struct.new(
      nil,
      :calculation_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculation_execution_id
    #   <p>The calculation execution UUID.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The session ID that the calculation ran in.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the calculation execution.</p>
    #   @return [String]
    # @!attribute working_directory
    #   <p>The Amazon S3 location in which calculation results are stored.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Contains information about the status of the calculation.</p>
    #   @return [Types::CalculationStatus]
    # @!attribute statistics
    #   <p>Contains information about the data processing unit (DPU) execution time and progress.
    #               This field is populated only when statistics are available.</p>
    #   @return [Types::CalculationStatistics]
    # @!attribute result
    #   <p>Contains result information. This field is populated only if the calculation is
    #               completed.</p>
    #   @return [Types::CalculationResult]
    class GetCalculationExecutionResponse < Struct.new(
      nil,
      :calculation_execution_id,
      :session_id,
      :description,
      :working_directory,
      :status,
      :statistics,
      :result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculation_execution_id
    #   <p>The calculation execution UUID.</p>
    #   @return [String]
    class GetCalculationExecutionStatusRequest < Struct.new(
      nil,
      :calculation_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>Contains information about the calculation execution status.</p>
    #   @return [Types::CalculationStatus]
    # @!attribute statistics
    #   <p>Contains information about the DPU execution time and progress.</p>
    #   @return [Types::CalculationStatistics]
    class GetCalculationExecutionStatusResponse < Struct.new(
      nil,
      :status,
      :statistics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_reservation_name
    #   <p>The name of the capacity reservation to retrieve the capacity assignment configuration
    #               for.</p>
    #   @return [String]
    class GetCapacityAssignmentConfigurationInput < Struct.new(
      nil,
      :capacity_reservation_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_assignment_configuration
    #   <p>The requested capacity assignment configuration for the specified capacity
    #               reservation.</p>
    #   @return [Types::CapacityAssignmentConfiguration]
    class GetCapacityAssignmentConfigurationOutput < Struct.new(
      nil,
      :capacity_assignment_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the capacity reservation.</p>
    #   @return [String]
    class GetCapacityReservationInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_reservation
    #   <p>The requested capacity reservation structure.</p>
    #   @return [Types::CapacityReservation]
    class GetCapacityReservationOutput < Struct.new(
      nil,
      :capacity_reservation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the data catalog to return.</p>
    #   @return [String]
    # @!attribute work_group
    #   <p>The name of the workgroup. Required if making an IAM Identity Center request.</p>
    #   @return [String]
    class GetDataCatalogInput < Struct.new(
      nil,
      :name,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_catalog
    #   <p>The data catalog returned.</p>
    #   @return [Types::DataCatalog]
    class GetDataCatalogOutput < Struct.new(
      nil,
      :data_catalog,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_name
    #   <p>The name of the data catalog that contains the database to return.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database to return.</p>
    #   @return [String]
    # @!attribute work_group
    #   <p>The name of the workgroup for which the metadata is being fetched. Required if
    #               requesting an IAM Identity Center enabled Glue Data Catalog.</p>
    #   @return [String]
    class GetDatabaseInput < Struct.new(
      nil,
      :catalog_name,
      :database_name,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database
    #   <p>The database returned.</p>
    #   @return [Types::Database]
    class GetDatabaseOutput < Struct.new(
      nil,
      :database,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute named_query_id
    #   <p>The unique ID of the query. Use <a>ListNamedQueries</a> to get query
    #               IDs.</p>
    #   @return [String]
    class GetNamedQueryInput < Struct.new(
      nil,
      :named_query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute named_query
    #   <p>Information about the query.</p>
    #   @return [Types::NamedQuery]
    class GetNamedQueryOutput < Struct.new(
      nil,
      :named_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notebook_id
    #   <p>The ID of the notebook whose metadata is to be retrieved.</p>
    #   @return [String]
    class GetNotebookMetadataInput < Struct.new(
      nil,
      :notebook_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notebook_metadata
    #   <p>The metadata that is returned for the specified notebook ID.</p>
    #   @return [Types::NotebookMetadata]
    class GetNotebookMetadataOutput < Struct.new(
      nil,
      :notebook_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statement_name
    #   <p>The name of the prepared statement to retrieve.</p>
    #   @return [String]
    # @!attribute work_group
    #   <p>The workgroup to which the statement to be retrieved belongs.</p>
    #   @return [String]
    class GetPreparedStatementInput < Struct.new(
      nil,
      :statement_name,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute prepared_statement
    #   <p>The name of the prepared statement that was retrieved.</p>
    #   @return [Types::PreparedStatement]
    class GetPreparedStatementOutput < Struct.new(
      nil,
      :prepared_statement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_execution_id
    #   <p>The unique ID of the query execution.</p>
    #   @return [String]
    class GetQueryExecutionInput < Struct.new(
      nil,
      :query_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_execution
    #   <p>Information about the query execution.</p>
    #   @return [Types::QueryExecution]
    class GetQueryExecutionOutput < Struct.new(
      nil,
      :query_execution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_execution_id
    #   <p>The unique ID of the query execution.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results (rows) to return in this request.</p>
    #   @return [Integer]
    # @!attribute query_result_type
    #   <p> When you set this to <code>DATA_ROWS</code> or empty, <code>GetQueryResults</code>
    #               returns the query results in rows. If set to <code>DATA_MANIFEST</code>, it returns the
    #               manifest file in rows. Only the query types <code>CREATE TABLE AS SELECT</code>,
    #                   <code>UNLOAD</code>, and <code>INSERT</code> can generate a manifest file. If you
    #               use <code>DATA_MANIFEST</code> for other query types, the query will fail. </p>
    #   @return [String]
    class GetQueryResultsInput < Struct.new(
      nil,
      :query_execution_id,
      :next_token,
      :max_results,
      :query_result_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_count
    #   <p>The number of rows inserted with a <code>CREATE TABLE AS SELECT</code>, <code>INSERT
    #                   INTO</code>, or <code>UPDATE</code> statement. </p>
    #   @return [Integer]
    # @!attribute result_set
    #   <p>The results of the query execution.</p>
    #   @return [Types::ResultSet]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    class GetQueryResultsOutput < Struct.new(
      nil,
      :update_count,
      :result_set,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_execution_id
    #   <p>The unique ID of the query execution.</p>
    #   @return [String]
    class GetQueryRuntimeStatisticsInput < Struct.new(
      nil,
      :query_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_runtime_statistics
    #   <p>Runtime statistics about the query execution.</p>
    #   @return [Types::QueryRuntimeStatistics]
    class GetQueryRuntimeStatisticsOutput < Struct.new(
      nil,
      :query_runtime_statistics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The The Amazon Resource Name (ARN) for a session.</p>
    #   @return [String]
    class GetResourceDashboardRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute url
    #   <p>The Live UI/Persistence UI url for a session.</p>
    #   @return [String]
    class GetResourceDashboardResponse < Struct.new(
      nil,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    class GetSessionEndpointRequest < Struct.new(
      nil,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_url
    #   <p>The endpoint for connecting to the session.</p>
    #   @return [String]
    # @!attribute auth_token
    #   <p>Authentication token for the connection</p>
    #   @return [String]
    # @!attribute auth_token_expiration_time
    #   <p>Expiration time of the auth token.</p>
    #   @return [Time]
    class GetSessionEndpointResponse < Struct.new(
      nil,
      :endpoint_url,
      :auth_token,
      :auth_token_expiration_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    class GetSessionRequest < Struct.new(
      nil,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The session description.</p>
    #   @return [String]
    # @!attribute work_group
    #   <p>The workgroup to which the session belongs.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The engine version used by the session (for example, <code>PySpark engine version
    #                   3</code>). You can get a list of engine versions by calling <a>ListEngineVersions</a>.</p>
    #   @return [String]
    # @!attribute engine_configuration
    #   <p>Contains engine configuration information like DPU usage.</p>
    #   @return [Types::EngineConfiguration]
    # @!attribute notebook_version
    #   <p>The notebook version.</p>
    #   @return [String]
    # @!attribute monitoring_configuration
    #   <p>Contains the configuration settings for managed log persistence, delivering logs to Amazon S3 buckets,
    #               Amazon CloudWatch log groups etc.</p>
    #   @return [Types::MonitoringConfiguration]
    # @!attribute session_configuration
    #   <p>Contains the workgroup configuration information used by the session.</p>
    #   @return [Types::SessionConfiguration]
    # @!attribute status
    #   <p>Contains information about the status of the session.</p>
    #   @return [Types::SessionStatus]
    # @!attribute statistics
    #   <p>Contains the DPU execution time.</p>
    #   @return [Types::SessionStatistics]
    class GetSessionResponse < Struct.new(
      nil,
      :session_id,
      :description,
      :work_group,
      :engine_version,
      :engine_configuration,
      :notebook_version,
      :monitoring_configuration,
      :session_configuration,
      :status,
      :statistics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    class GetSessionStatusRequest < Struct.new(
      nil,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Contains information about the status of the session.</p>
    #   @return [Types::SessionStatus]
    class GetSessionStatusResponse < Struct.new(
      nil,
      :session_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_name
    #   <p>The name of the data catalog that contains the database and table metadata to
    #               return.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database that contains the table metadata to return.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table for which metadata is returned.</p>
    #   @return [String]
    # @!attribute work_group
    #   <p>The name of the workgroup for which the metadata is being fetched. Required if
    #               requesting an IAM Identity Center enabled Glue Data Catalog.</p>
    #   @return [String]
    class GetTableMetadataInput < Struct.new(
      nil,
      :catalog_name,
      :database_name,
      :table_name,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_metadata
    #   <p>An object that contains table metadata.</p>
    #   @return [Types::TableMetadata]
    class GetTableMetadataOutput < Struct.new(
      nil,
      :table_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute work_group
    #   <p>The name of the workgroup.</p>
    #   @return [String]
    class GetWorkGroupInput < Struct.new(
      nil,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute work_group
    #   <p>Information about the workgroup.</p>
    #   @return [Types::WorkGroup]
    class GetWorkGroupOutput < Struct.new(
      nil,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies whether the workgroup is IAM Identity Center supported.</p>
    # @!attribute enable_identity_center
    #   <p>Specifies whether the workgroup is IAM Identity Center supported.</p>
    #   @return [Boolean]
    # @!attribute identity_center_instance_arn
    #   <p>The IAM Identity Center instance ARN that the workgroup associates to.</p>
    #   @return [String]
    class IdentityCenterConfiguration < Struct.new(
      nil,
      :enable_identity_center,
      :identity_center_instance_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute work_group
    #   <p>The name of the Spark enabled workgroup to import the notebook to.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the notebook to import.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The notebook content to be imported. The payload must be in <code>ipynb</code>
    #               format.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The notebook content type. Currently, the only valid type is
    #               <code>IPYNB</code>.</p>
    #   @return [String]
    # @!attribute notebook_s3_location_uri
    #   <p>A URI that specifies the Amazon S3 location of a notebook file in
    #                   <code>ipynb</code> format.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to import the notebook is
    #               idempotent (executes only once).</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for you. If you are not
    #                   using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    #   @return [String]
    class ImportNotebookInput < Struct.new(
      nil,
      :work_group,
      :name,
      :payload,
      :type,
      :notebook_s3_location_uri,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notebook_id
    #   <p>The ID assigned to the imported notebook.</p>
    #   @return [String]
    class ImportNotebookOutput < Struct.new(
      nil,
      :notebook_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates a platform issue, which may be due to a transient condition or
    #             outage.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that something is wrong with the input to the request. For example, a
    #             required parameter may be missing or out of range.</p>
    # @!attribute athena_error_code
    #   <p>The error code returned when the query execution failed to process, or when the
    #               processing request for the named query failed.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :athena_error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Specifies the maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated.</p>
    #   @return [String]
    class ListApplicationDPUSizesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_dpu_sizes
    #   <p>A list of the supported DPU sizes that the application runtime supports.</p>
    #   @return [Array<Types::ApplicationDPUSizes>]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    class ListApplicationDPUSizesOutput < Struct.new(
      nil,
      :application_dpu_sizes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    # @!attribute state_filter
    #   <p>A filter for a specific calculation execution state. A description of each state
    #               follows.</p>
    #            <p>
    #               <code>CREATING</code> - The calculation is in the process of being created.</p>
    #            <p>
    #               <code>CREATED</code> - The calculation has been created and is ready to run.</p>
    #            <p>
    #               <code>QUEUED</code> - The calculation has been queued for processing.</p>
    #            <p>
    #               <code>RUNNING</code> - The calculation is running.</p>
    #            <p>
    #               <code>CANCELING</code> - A request to cancel the calculation has been received and the
    #               system is working to stop it.</p>
    #            <p>
    #               <code>CANCELED</code> - The calculation is no longer running as the result of a cancel
    #               request.</p>
    #            <p>
    #               <code>COMPLETED</code> - The calculation has completed without error.</p>
    #            <p>
    #               <code>FAILED</code> - The calculation failed and is no longer running.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of calculation executions to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    class ListCalculationExecutionsRequest < Struct.new(
      nil,
      :session_id,
      :state_filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    # @!attribute calculations
    #   <p>A list of <a>CalculationSummary</a> objects.</p>
    #   @return [Array<Types::CalculationSummary>]
    class ListCalculationExecutionsResponse < Struct.new(
      nil,
      :next_token,
      :calculations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results to return.</p>
    #   @return [Integer]
    class ListCapacityReservationsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    #   @return [String]
    # @!attribute capacity_reservations
    #   <p>The capacity reservations for the current account.</p>
    #   @return [Array<Types::CapacityReservation>]
    class ListCapacityReservationsOutput < Struct.new(
      nil,
      :next_token,
      :capacity_reservations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of data catalogs to return.</p>
    #   @return [Integer]
    # @!attribute work_group
    #   <p>The name of the workgroup. Required if making an IAM Identity Center request.</p>
    #   @return [String]
    class ListDataCatalogsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_catalogs_summary
    #   <p>A summary list of data catalogs.</p>
    #   @return [Array<Types::DataCatalogSummary>]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    #   @return [String]
    class ListDataCatalogsOutput < Struct.new(
      nil,
      :data_catalogs_summary,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_name
    #   <p>The name of the data catalog that contains the databases to return.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute work_group
    #   <p>The name of the workgroup for which the metadata is being fetched. Required if
    #               requesting an IAM Identity Center enabled Glue Data Catalog.</p>
    #   @return [String]
    class ListDatabasesInput < Struct.new(
      nil,
      :catalog_name,
      :next_token,
      :max_results,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_list
    #   <p>A list of databases from a data catalog.</p>
    #   @return [Array<Types::Database>]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    #   @return [String]
    class ListDatabasesOutput < Struct.new(
      nil,
      :database_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of engine versions to return in this request.</p>
    #   @return [Integer]
    class ListEngineVersionsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute engine_versions
    #   <p>A list of engine versions that are available to choose from.</p>
    #   @return [Array<Types::EngineVersion>]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    class ListEngineVersionsOutput < Struct.new(
      nil,
      :engine_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    # @!attribute executor_state_filter
    #   <p>A filter for a specific executor state. A description of each state follows.</p>
    #            <p>
    #               <code>CREATING</code> - The executor is being started, including acquiring
    #               resources.</p>
    #            <p>
    #               <code>CREATED</code> - The executor has been started.</p>
    #            <p>
    #               <code>REGISTERED</code> - The executor has been registered.</p>
    #            <p>
    #               <code>TERMINATING</code> - The executor is in the process of shutting down.</p>
    #            <p>
    #               <code>TERMINATED</code> - The executor is no longer running.</p>
    #            <p>
    #               <code>FAILED</code> - Due to a failure, the executor is no longer running.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of executors to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    class ListExecutorsRequest < Struct.new(
      nil,
      :session_id,
      :executor_state_filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    # @!attribute executors_summary
    #   <p>Contains summary information about the executor.</p>
    #   @return [Array<Types::ExecutorsSummary>]
    class ListExecutorsResponse < Struct.new(
      nil,
      :session_id,
      :next_token,
      :executors_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of queries to return in this request.</p>
    #   @return [Integer]
    # @!attribute work_group
    #   <p>The name of the workgroup from which the named queries are being returned. If a
    #               workgroup is not specified, the saved queries for the primary workgroup are
    #               returned.</p>
    #   @return [String]
    class ListNamedQueriesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute named_query_ids
    #   <p>The list of unique query IDs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    class ListNamedQueriesOutput < Struct.new(
      nil,
      :named_query_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Search filter string.</p>
    #   @return [Types::FilterDefinition]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute work_group
    #   <p>The name of the Spark enabled workgroup to retrieve notebook metadata for.</p>
    #   @return [String]
    class ListNotebookMetadataInput < Struct.new(
      nil,
      :filters,
      :next_token,
      :max_results,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    # @!attribute notebook_metadata_list
    #   <p>The list of notebook metadata for the specified workgroup.</p>
    #   @return [Array<Types::NotebookMetadata>]
    class ListNotebookMetadataOutput < Struct.new(
      nil,
      :next_token,
      :notebook_metadata_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notebook_id
    #   <p>The ID of the notebook to list sessions for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of notebook sessions to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    class ListNotebookSessionsRequest < Struct.new(
      nil,
      :notebook_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notebook_sessions_list
    #   <p>A list of the sessions belonging to the notebook.</p>
    #   @return [Array<Types::NotebookSessionSummary>]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    class ListNotebookSessionsResponse < Struct.new(
      nil,
      :notebook_sessions_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute work_group
    #   <p>The workgroup to list the prepared statements for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #   @return [Integer]
    class ListPreparedStatementsInput < Struct.new(
      nil,
      :work_group,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute prepared_statements
    #   <p>The list of prepared statements for the workgroup.</p>
    #   @return [Array<Types::PreparedStatementSummary>]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    class ListPreparedStatementsOutput < Struct.new(
      nil,
      :prepared_statements,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of query executions to return in this request.</p>
    #   @return [Integer]
    # @!attribute work_group
    #   <p>The name of the workgroup from which queries are being returned. If a workgroup is not
    #               specified, a list of available query execution IDs for the queries in the primary
    #               workgroup is returned.</p>
    #   @return [String]
    class ListQueryExecutionsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_execution_ids
    #   <p>The unique IDs of each query execution as an array of strings.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A token to be used by the next request if this request is truncated.</p>
    #   @return [String]
    class ListQueryExecutionsOutput < Struct.new(
      nil,
      :query_execution_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute work_group
    #   <p>The workgroup to which the session belongs.</p>
    #   @return [String]
    # @!attribute state_filter
    #   <p>A filter for a specific session state. A description of each state follows.</p>
    #            <p>
    #               <code>CREATING</code> - The session is being started, including acquiring
    #               resources.</p>
    #            <p>
    #               <code>CREATED</code> - The session has been started.</p>
    #            <p>
    #               <code>IDLE</code> - The session is able to accept a calculation.</p>
    #            <p>
    #               <code>BUSY</code> - The session is processing another task and is unable to accept a
    #               calculation.</p>
    #            <p>
    #               <code>TERMINATING</code> - The session is in the process of shutting down.</p>
    #            <p>
    #               <code>TERMINATED</code> - The session and its resources are no longer running.</p>
    #            <p>
    #               <code>DEGRADED</code> - The session has no healthy coordinators.</p>
    #            <p>
    #               <code>FAILED</code> - Due to a failure, the session and its resources are no longer
    #               running.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of sessions to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    class ListSessionsRequest < Struct.new(
      nil,
      :work_group,
      :state_filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    # @!attribute sessions
    #   <p>A list of sessions.</p>
    #   @return [Array<Types::SessionSummary>]
    class ListSessionsResponse < Struct.new(
      nil,
      :next_token,
      :sessions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog_name
    #   <p>The name of the data catalog for which table metadata should be returned.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database for which table metadata should be returned.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>A regex filter that pattern-matches table names. If no expression is supplied,
    #               metadata for all tables are listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute work_group
    #   <p>The name of the workgroup for which the metadata is being fetched. Required if
    #               requesting an IAM Identity Center enabled Glue Data Catalog.</p>
    #   @return [String]
    class ListTableMetadataInput < Struct.new(
      nil,
      :catalog_name,
      :database_name,
      :expression,
      :next_token,
      :max_results,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_metadata_list
    #   <p>A list of table metadata.</p>
    #   @return [Array<Types::TableMetadata>]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    #   @return [String]
    class ListTableMetadataOutput < Struct.new(
      nil,
      :table_metadata_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Lists the tags for the resource with the specified ARN.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results for
    #               this request, where the request lists the tags for the resource with the specified
    #               ARN.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request that lists the tags for the
    #               resource.</p>
    #   @return [Integer]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags associated with the specified resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>A token to be used by the next request if this request is truncated.</p>
    #   @return [String]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of workgroups to return in this request.</p>
    #   @return [Integer]
    class ListWorkGroupsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute work_groups
    #   <p>A list of <a>WorkGroupSummary</a> objects that include the names,
    #               descriptions, creation times, and states for each workgroup.</p>
    #   @return [Array<Types::WorkGroupSummary>]
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #   @return [String]
    class ListWorkGroupsOutput < Struct.new(
      nil,
      :work_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for delivering logs to Amazon S3 buckets.</p>
    # @!attribute enabled
    #   <p>Enables mamanged log persistence.</p>
    #   @return [Boolean]
    # @!attribute kms_key
    #   <p>The KMS key ARN to encrypt the logs stored in managed log persistence.</p>
    #   @return [String]
    class ManagedLoggingConfiguration < Struct.new(
      nil,
      :enabled,
      :kms_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The configuration for storing results in Athena owned storage, which includes whether this feature is enabled; whether encryption configuration, if any, is used for encrypting query results.
    #         </p>
    # @!attribute enabled
    #   <p>If set to true, allows you to store query results in Athena owned storage. If set to
    #               false, workgroup member stores query results in location specified under
    #                   <code>ResultConfiguration$OutputLocation</code>. The default is false. A workgroup
    #               cannot have the <code>ResultConfiguration$OutputLocation</code> parameter when you set
    #               this field to true. </p>
    #   @return [Boolean]
    # @!attribute encryption_configuration
    #   <p>If you encrypt query and calculation results in Athena owned storage, this field
    #               indicates the encryption option (for example, SSE_KMS or CSE_KMS) and key
    #               information.</p>
    #   @return [Types::ManagedQueryResultsEncryptionConfiguration]
    class ManagedQueryResultsConfiguration < Struct.new(
      nil,
      :enabled,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Updates the configuration for managed query results.</p>
    # @!attribute enabled
    #   <p>If set to true, specifies that Athena manages query results in Athena owned
    #               storage.</p>
    #   @return [Boolean]
    # @!attribute encryption_configuration
    #   <p>If you encrypt query and calculation results in Athena owned storage, this field
    #               indicates the encryption option (for example, SSE_KMS or CSE_KMS) and key
    #               information.</p>
    #   @return [Types::ManagedQueryResultsEncryptionConfiguration]
    # @!attribute remove_encryption_configuration
    #   <p>If set to true, it removes workgroup from Athena owned storage. The existing query
    #               results are cleaned up after 24hrs. You must provide query results in location specified
    #               under <code>ResultConfiguration$OutputLocation</code>.</p>
    #   @return [Boolean]
    class ManagedQueryResultsConfigurationUpdates < Struct.new(
      nil,
      :enabled,
      :encryption_configuration,
      :remove_encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If you encrypt query and calculation results in Athena owned storage, this field
    #             indicates the encryption option (for example, SSE_KMS or CSE_KMS) and key
    #             information.</p>
    # @!attribute kms_key
    #   <p>The ARN of an KMS key for encrypting managed query results.</p>
    #   @return [String]
    class ManagedQueryResultsEncryptionConfiguration < Struct.new(
      nil,
      :kms_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception that Athena received when it called a custom metastore.
    #             Occurs if the error is not caused by user input (<code>InvalidRequestException</code>)
    #             or from the Athena platform (<code>InternalServerException</code>). For
    #             example, if a user-created Lambda function is missing permissions, the
    #                 Lambda
    #             <code>4XX</code> exception is returned in a <code>MetadataException</code>.</p>
    # @!attribute message
    #   @return [String]
    class MetadataException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration settings for managed log persistence, delivering logs to Amazon S3 buckets,
    #             Amazon CloudWatch log groups etc.</p>
    # @!attribute cloud_watch_logging_configuration
    #   <p>Configuration settings for delivering logs to Amazon CloudWatch log groups.
    #           </p>
    #   @return [Types::CloudWatchLoggingConfiguration]
    # @!attribute managed_logging_configuration
    #   <p>Configuration settings for managed log persistence.
    #           </p>
    #   @return [Types::ManagedLoggingConfiguration]
    # @!attribute s3_logging_configuration
    #   <p>Configuration settings for delivering logs to Amazon S3 buckets.
    #           </p>
    #   @return [Types::S3LoggingConfiguration]
    class MonitoringConfiguration < Struct.new(
      nil,
      :cloud_watch_logging_configuration,
      :managed_logging_configuration,
      :s3_logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A query, where <code>QueryString</code> contains the SQL statements that make up the
    #             query.</p>
    # @!attribute name
    #   <p>The query name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The query description.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The database to which the query belongs.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The SQL statements that make up the query.</p>
    #   @return [String]
    # @!attribute named_query_id
    #   <p>The unique identifier of the query.</p>
    #   @return [String]
    # @!attribute work_group
    #   <p>The name of the workgroup that contains the named query.</p>
    #   @return [String]
    class NamedQuery < Struct.new(
      nil,
      :name,
      :description,
      :database,
      :query_string,
      :named_query_id,
      :work_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata for notebook, including the notebook name, ID, workgroup, and time
    #             created.</p>
    # @!attribute notebook_id
    #   <p>The notebook ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the notebook.</p>
    #   @return [String]
    # @!attribute work_group
    #   <p>The name of the Spark enabled workgroup to which the notebook belongs.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the notebook was created.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>The type of notebook. Currently, the only valid type is <code>IPYNB</code>.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The time when the notebook was last modified.</p>
    #   @return [Time]
    class NotebookMetadata < Struct.new(
      nil,
      :notebook_id,
      :name,
      :work_group,
      :creation_time,
      :type,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the notebook session ID and notebook session creation time.</p>
    # @!attribute session_id
    #   <p>The notebook session ID.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the notebook session was created.</p>
    #   @return [Time]
    class NotebookSessionSummary < Struct.new(
      nil,
      :session_id,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A prepared SQL statement for use with Athena.</p>
    # @!attribute statement_name
    #   <p>The name of the prepared statement.</p>
    #   @return [String]
    # @!attribute query_statement
    #   <p>The query string for the prepared statement.</p>
    #   @return [String]
    # @!attribute work_group_name
    #   <p>The name of the workgroup to which the prepared statement belongs.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the prepared statement.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The last modified time of the prepared statement.</p>
    #   @return [Time]
    class PreparedStatement < Struct.new(
      nil,
      :statement_name,
      :query_statement,
      :work_group_name,
      :description,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The name and last modified time of the prepared statement.</p>
    # @!attribute statement_name
    #   <p>The name of the prepared statement.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The last modified time of the prepared statement.</p>
    #   @return [Time]
    class PreparedStatementSummary < Struct.new(
      nil,
      :statement_name,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_reservation_name
    #   <p>The name of the capacity reservation to put a capacity assignment configuration
    #               for.</p>
    #   @return [String]
    # @!attribute capacity_assignments
    #   <p>The list of assignments for the capacity assignment configuration.</p>
    #   @return [Array<Types::CapacityAssignment>]
    class PutCapacityAssignmentConfigurationInput < Struct.new(
      nil,
      :capacity_reservation_name,
      :capacity_assignments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutCapacityAssignmentConfigurationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a single instance of a query execution.</p>
    # @!attribute query_execution_id
    #   <p>The unique identifier for each query execution.</p>
    #   @return [String]
    # @!attribute query
    #   <p>The SQL query statements which the query execution ran.</p>
    #   @return [String]
    # @!attribute statement_type
    #   <p>The type of query statement that was run. <code>DDL</code> indicates DDL query
    #               statements. <code>DML</code> indicates DML (Data Manipulation Language) query
    #               statements, such as <code>CREATE TABLE AS SELECT</code>. <code>UTILITY</code> indicates
    #               query statements other than DDL and DML, such as <code>SHOW CREATE TABLE</code>,
    #                   <code>EXPLAIN</code>, <code>DESCRIBE</code>, or <code>SHOW TABLES</code>.</p>
    #   @return [String]
    # @!attribute managed_query_results_configuration
    #   <p> The configuration for storing results in Athena owned storage, which includes whether
    #               this feature is enabled; whether encryption configuration, if any, is used for
    #               encrypting query results. </p>
    #   @return [Types::ManagedQueryResultsConfiguration]
    # @!attribute result_configuration
    #   <p>The location in Amazon S3 where query and calculation results are stored and
    #               the encryption option, if any, used for query results. These are known as "client-side
    #               settings". If workgroup settings override client-side settings, then the query uses the
    #               location for the query results and the encryption configuration that are specified for
    #               the workgroup.</p>
    #   @return [Types::ResultConfiguration]
    # @!attribute result_reuse_configuration
    #   <p>Specifies the query result reuse behavior that was used for the query.</p>
    #   @return [Types::ResultReuseConfiguration]
    # @!attribute query_execution_context
    #   <p>The database in which the query execution occurred.</p>
    #   @return [Types::QueryExecutionContext]
    # @!attribute status
    #   <p>The completion date, current state, submission time, and state change reason (if
    #               applicable) for the query execution.</p>
    #   @return [Types::QueryExecutionStatus]
    # @!attribute statistics
    #   <p>Query execution statistics, such as the amount of data scanned, the amount of time
    #               that the query took to process, and the type of statement that was run.</p>
    #   @return [Types::QueryExecutionStatistics]
    # @!attribute work_group
    #   <p>The name of the workgroup in which the query ran.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The engine version that executed the query.</p>
    #   @return [Types::EngineVersion]
    # @!attribute execution_parameters
    #   <p>A list of values for the parameters in a query. The values are applied sequentially to
    #               the parameters in the query in the order in which the parameters occur. The list of
    #               parameters is not returned in the response.</p>
    #   @return [Array<String>]
    # @!attribute substatement_type
    #   <p>The kind of query statement that was run.</p>
    #   @return [String]
    # @!attribute query_results_s3_access_grants_configuration
    #   <p>Specifies whether Amazon S3 access grants are enabled for query
    #               results.</p>
    #   @return [Types::QueryResultsS3AccessGrantsConfiguration]
    class QueryExecution < Struct.new(
      nil,
      :query_execution_id,
      :query,
      :statement_type,
      :managed_query_results_configuration,
      :result_configuration,
      :result_reuse_configuration,
      :query_execution_context,
      :status,
      :statistics,
      :work_group,
      :engine_version,
      :execution_parameters,
      :substatement_type,
      :query_results_s3_access_grants_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The database and data catalog context in which the query execution occurs.</p>
    # @!attribute database
    #   <p>The name of the database used in the query execution. The database must exist in the
    #               catalog.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The name of the data catalog used in the query execution.</p>
    #   @return [String]
    class QueryExecutionContext < Struct.new(
      nil,
      :database,
      :catalog,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The amount of data scanned during the query execution and the amount of time that it
    #             took to execute, and the type of statement that was run.</p>
    # @!attribute engine_execution_time_in_millis
    #   <p>The number of milliseconds that the query took to execute.</p>
    #   @return [Integer]
    # @!attribute data_scanned_in_bytes
    #   <p>The number of bytes in the data that was queried.</p>
    #   @return [Integer]
    # @!attribute data_manifest_location
    #   <p>The location and file name of a data manifest file. The manifest file is saved to the
    #                   Athena query results location in Amazon S3. The manifest file
    #               tracks files that the query wrote to Amazon S3. If the query fails, the manifest
    #               file also tracks files that the query intended to write. The manifest is useful for
    #               identifying orphaned files resulting from a failed query. For more information, see
    #                   <a href="https://docs.aws.amazon.com/athena/latest/ug/querying.html">Working with Query
    #                   Results, Output Files, and Query History</a> in the <i>Amazon Athena User Guide</i>.</p>
    #   @return [String]
    # @!attribute total_execution_time_in_millis
    #   <p>The number of milliseconds that Athena took to run the query.</p>
    #   @return [Integer]
    # @!attribute query_queue_time_in_millis
    #   <p>The number of milliseconds that the query was in your query queue waiting for
    #               resources. Note that if transient errors occur, Athena might automatically
    #               add the query back to the queue.</p>
    #   @return [Integer]
    # @!attribute service_pre_processing_time_in_millis
    #   <p>The number of milliseconds that Athena took to preprocess the query before
    #               submitting the query to the query engine.</p>
    #   @return [Integer]
    # @!attribute query_planning_time_in_millis
    #   <p>The number of milliseconds that Athena took to plan the query processing
    #               flow. This includes the time spent retrieving table partitions from the data source.
    #               Note that because the query engine performs the query planning, query planning time is a
    #               subset of engine processing time.</p>
    #   @return [Integer]
    # @!attribute service_processing_time_in_millis
    #   <p>The number of milliseconds that Athena took to finalize and publish the
    #               query results after the query engine finished running the query.</p>
    #   @return [Integer]
    # @!attribute result_reuse_information
    #   <p>Contains information about whether previous query results were reused for the
    #               query.</p>
    #   @return [Types::ResultReuseInformation]
    # @!attribute dpu_count
    #   <p>The number of Data Processing Units (DPUs) that Athena used to run the query.</p>
    #   @return [Float]
    class QueryExecutionStatistics < Struct.new(
      nil,
      :engine_execution_time_in_millis,
      :data_scanned_in_bytes,
      :data_manifest_location,
      :total_execution_time_in_millis,
      :query_queue_time_in_millis,
      :service_pre_processing_time_in_millis,
      :query_planning_time_in_millis,
      :service_processing_time_in_millis,
      :result_reuse_information,
      :dpu_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The completion date, current state, submission time, and state change reason (if
    #             applicable) for the query execution.</p>
    # @!attribute state
    #   <p>The state of query execution. <code>QUEUED</code> indicates that the query has been
    #               submitted to the service, and Athena will execute the query as soon as
    #               resources are available. <code>RUNNING</code> indicates that the query is in execution
    #               phase. <code>SUCCEEDED</code> indicates that the query completed without errors.
    #                   <code>FAILED</code> indicates that the query experienced an error and did not
    #               complete processing. <code>CANCELLED</code> indicates that a user input interrupted
    #               query execution.</p>
    #            <note>
    #               <p>For queries that experience certain transient errors, the state transitions from
    #                       <code>RUNNING</code> back to <code>QUEUED</code>. The <code>FAILED</code> state
    #                   is always terminal with no automatic retry. </p>
    #            </note>
    #   @return [String]
    # @!attribute state_change_reason
    #   <p>Further detail about the status of the query.</p>
    #   @return [String]
    # @!attribute submission_date_time
    #   <p>The date and time that the query was submitted.</p>
    #   @return [Time]
    # @!attribute completion_date_time
    #   <p>The date and time that the query completed.</p>
    #   @return [Time]
    # @!attribute athena_error
    #   <p>Provides information about an Athena query error.</p>
    #   @return [Types::AthenaError]
    class QueryExecutionStatus < Struct.new(
      nil,
      :state,
      :state_change_reason,
      :submission_date_time,
      :completion_date_time,
      :athena_error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies whether Amazon S3 access grants are enabled for query
    #             results.</p>
    # @!attribute enable_s3_access_grants
    #   <p>Specifies whether Amazon S3 access grants are enabled for query
    #               results.</p>
    #   @return [Boolean]
    # @!attribute create_user_level_prefix
    #   <p>When enabled, appends the user ID as an Amazon S3 path prefix to the query
    #               result output location.</p>
    #   @return [Boolean]
    # @!attribute authentication_type
    #   <p>The authentication type used for Amazon S3 access grants. Currently, only
    #                   <code>DIRECTORY_IDENTITY</code> is supported.</p>
    #   @return [String]
    class QueryResultsS3AccessGrantsConfiguration < Struct.new(
      nil,
      :enable_s3_access_grants,
      :create_user_level_prefix,
      :authentication_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The query execution timeline, statistics on input and output rows and bytes, and the
    #             different query stages that form the query execution plan.</p>
    # @!attribute timeline
    #   <p>Timeline statistics such as query queue time, planning time, execution time, service
    #               processing time, and total execution time.</p>
    #   @return [Types::QueryRuntimeStatisticsTimeline]
    # @!attribute rows
    #   <p>Statistics such as input rows and bytes read by the query, rows and bytes output by
    #               the query, and the number of rows written by the query.</p>
    #   @return [Types::QueryRuntimeStatisticsRows]
    # @!attribute output_stage
    #   <p>Stage statistics such as input and output rows and bytes, execution time, and stage
    #               state. This information also includes substages and the query stage plan.</p>
    #   @return [Types::QueryStage]
    class QueryRuntimeStatistics < Struct.new(
      nil,
      :timeline,
      :rows,
      :output_stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Statistics such as input rows and bytes read by the query, rows and bytes output by
    #             the query, and the number of rows written by the query.</p>
    # @!attribute input_rows
    #   <p>The number of rows read to execute the query.</p>
    #   @return [Integer]
    # @!attribute input_bytes
    #   <p>The number of bytes read to execute the query.</p>
    #   @return [Integer]
    # @!attribute output_bytes
    #   <p>The number of bytes returned by the query.</p>
    #   @return [Integer]
    # @!attribute output_rows
    #   <p>The number of rows returned by the query.</p>
    #   @return [Integer]
    class QueryRuntimeStatisticsRows < Struct.new(
      nil,
      :input_rows,
      :input_bytes,
      :output_bytes,
      :output_rows,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Timeline statistics such as query queue time, planning time, execution time, service
    #             processing time, and total execution time.</p>
    # @!attribute query_queue_time_in_millis
    #   <p>The number of milliseconds that the query was in your query queue waiting for
    #               resources. Note that if transient errors occur, Athena might automatically
    #               add the query back to the queue.</p>
    #   @return [Integer]
    # @!attribute service_pre_processing_time_in_millis
    #   <p> The number of milliseconds that Athena spends on preprocessing before it
    #               submits the query to the engine. </p>
    #   @return [Integer]
    # @!attribute query_planning_time_in_millis
    #   <p>The number of milliseconds that Athena took to plan the query processing
    #               flow. This includes the time spent retrieving table partitions from the data source.
    #               Note that because the query engine performs the query planning, query planning time is a
    #               subset of engine processing time.</p>
    #   @return [Integer]
    # @!attribute engine_execution_time_in_millis
    #   <p>The number of milliseconds that the query took to execute.</p>
    #   @return [Integer]
    # @!attribute service_processing_time_in_millis
    #   <p>The number of milliseconds that Athena took to finalize and publish the
    #               query results after the query engine finished running the query.</p>
    #   @return [Integer]
    # @!attribute total_execution_time_in_millis
    #   <p>The number of milliseconds that Athena took to run the query.</p>
    #   @return [Integer]
    class QueryRuntimeStatisticsTimeline < Struct.new(
      nil,
      :query_queue_time_in_millis,
      :service_pre_processing_time_in_millis,
      :query_planning_time_in_millis,
      :engine_execution_time_in_millis,
      :service_processing_time_in_millis,
      :total_execution_time_in_millis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Stage statistics such as input and output rows and bytes, execution time and stage
    #             state. This information also includes substages and the query stage plan.</p>
    # @!attribute stage_id
    #   <p>The identifier for a stage.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>State of the stage after query execution.</p>
    #   @return [String]
    # @!attribute output_bytes
    #   <p>The number of bytes output from the stage after execution.</p>
    #   @return [Integer]
    # @!attribute output_rows
    #   <p>The number of rows output from the stage after execution.</p>
    #   @return [Integer]
    # @!attribute input_bytes
    #   <p>The number of bytes input into the stage for execution.</p>
    #   @return [Integer]
    # @!attribute input_rows
    #   <p>The number of rows input into the stage for execution.</p>
    #   @return [Integer]
    # @!attribute execution_time
    #   <p>Time taken to execute this stage.</p>
    #   @return [Integer]
    # @!attribute query_stage_plan
    #   <p>Stage plan information such as name, identifier, sub plans, and source stages.</p>
    #   @return [Types::QueryStagePlanNode]
    # @!attribute sub_stages
    #   <p>List of sub query stages that form this stage execution plan.</p>
    #   @return [Array<Types::QueryStage>]
    class QueryStage < Struct.new(
      nil,
      :stage_id,
      :state,
      :output_bytes,
      :output_rows,
      :input_bytes,
      :input_rows,
      :execution_time,
      :query_stage_plan,
      :sub_stages,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Stage plan information such as name, identifier, sub plans, and remote sources.</p>
    # @!attribute name
    #   <p>Name of the query stage plan that describes the operation this stage is performing as
    #               part of query execution.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Information about the operation this query stage plan node is performing.</p>
    #   @return [String]
    # @!attribute children
    #   <p>Stage plan information such as name, identifier, sub plans, and remote sources of
    #               child plan nodes/</p>
    #   @return [Array<Types::QueryStagePlanNode>]
    # @!attribute remote_sources
    #   <p>Source plan node IDs.</p>
    #   @return [Array<String>]
    class QueryStagePlanNode < Struct.new(
      nil,
      :name,
      :identifier,
      :children,
      :remote_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource, such as a workgroup, was not found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the Amazon resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The location in Amazon S3 where query and calculation results are stored and
    #             the encryption option, if any, used for query and calculation results. These are known
    #             as "client-side settings". If workgroup settings override client-side settings, then the
    #             query uses the workgroup settings.</p>
    # @!attribute output_location
    #   <p>The location in Amazon S3 where your query and calculation results are stored,
    #               such as <code>s3://path/to/query/bucket/</code>. To run the query, you must specify the
    #               query results location using one of the ways: either for individual queries using either
    #               this setting (client-side), or in the workgroup, using <a>WorkGroupConfiguration</a>. If none of them is set, Athena
    #               issues an error that no output location is provided. If workgroup settings override
    #               client-side settings, then the query uses the settings specified for the workgroup. See
    #                   <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>If query and calculation results are encrypted in Amazon S3, indicates the
    #               encryption option used (for example, <code>SSE_KMS</code> or <code>CSE_KMS</code>) and
    #               key information. This is a client-side setting. If workgroup settings override
    #               client-side settings, then the query uses the encryption configuration that is specified
    #               for the workgroup, and also uses the location for storing query results specified in the
    #               workgroup. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>
    #               and <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override Client-Side Settings</a>.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The Amazon Web Services account ID that you expect to be the owner of the Amazon S3 bucket specified by <a>ResultConfiguration$OutputLocation</a>.
    #               If set, Athena uses the value for <code>ExpectedBucketOwner</code> when it
    #               makes Amazon S3 calls to your specified output location. If the
    #                   <code>ExpectedBucketOwner</code>
    #               Amazon Web Services account ID does not match the actual owner of the Amazon S3
    #               bucket, the call fails with a permissions error.</p>
    #            <p>This is a client-side setting. If workgroup settings override client-side settings,
    #               then the query uses the <code>ExpectedBucketOwner</code> setting that is specified for
    #               the workgroup, and also uses the location for storing query results specified in the
    #               workgroup. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>
    #               and <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override Client-Side Settings</a>.</p>
    #   @return [String]
    # @!attribute acl_configuration
    #   <p>Indicates that an Amazon S3 canned ACL should be set to control ownership of
    #               stored query results. Currently the only supported canned ACL is
    #                   <code>BUCKET_OWNER_FULL_CONTROL</code>. This is a client-side setting. If workgroup
    #               settings override client-side settings, then the query uses the ACL configuration that
    #               is specified for the workgroup, and also uses the location for storing query results
    #               specified in the workgroup. For more information, see <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a> and <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override Client-Side Settings</a>.</p>
    #   @return [Types::AclConfiguration]
    class ResultConfiguration < Struct.new(
      nil,
      :output_location,
      :encryption_configuration,
      :expected_bucket_owner,
      :acl_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information about the updates in the query results, such as output location and
    #             encryption configuration for the query results.</p>
    # @!attribute output_location
    #   <p>The location in Amazon S3 where your query and calculation results are stored,
    #               such as <code>s3://path/to/query/bucket/</code>. If workgroup settings override
    #               client-side settings, then the query uses the location for the query results and the
    #               encryption configuration that are specified for the workgroup. The "workgroup settings
    #               override" is specified in <code>EnforceWorkGroupConfiguration</code> (true/false) in the
    #                   <code>WorkGroupConfiguration</code>. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    #   @return [String]
    # @!attribute remove_output_location
    #   <p>If set to "true", indicates that the previously-specified query results location (also
    #               known as a client-side setting) for queries in this workgroup should be ignored and set
    #               to null. If set to "false" or not set, and a value is present in the
    #                   <code>OutputLocation</code> in <code>ResultConfigurationUpdates</code> (the
    #               client-side setting), the <code>OutputLocation</code> in the workgroup's
    #                   <code>ResultConfiguration</code> will be updated with the new value. For more
    #               information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override
    #                   Client-Side Settings</a>.</p>
    #   @return [Boolean]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration for query and calculation results.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute remove_encryption_configuration
    #   <p>If set to "true", indicates that the previously-specified encryption configuration
    #               (also known as the client-side setting) for queries in this workgroup should be ignored
    #               and set to null. If set to "false" or not set, and a value is present in the
    #                   <code>EncryptionConfiguration</code> in <code>ResultConfigurationUpdates</code> (the
    #               client-side setting), the <code>EncryptionConfiguration</code> in the workgroup's
    #                   <code>ResultConfiguration</code> will be updated with the new value. For more
    #               information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override
    #                   Client-Side Settings</a>.</p>
    #   @return [Boolean]
    # @!attribute expected_bucket_owner
    #   <p>The Amazon Web Services account ID that you expect to be the owner of the Amazon S3 bucket specified by <a>ResultConfiguration$OutputLocation</a>.
    #               If set, Athena uses the value for <code>ExpectedBucketOwner</code> when it
    #               makes Amazon S3 calls to your specified output location. If the
    #                   <code>ExpectedBucketOwner</code>
    #               Amazon Web Services account ID does not match the actual owner of the Amazon S3
    #               bucket, the call fails with a permissions error.</p>
    #            <p>If workgroup settings override client-side settings, then the query uses the
    #                   <code>ExpectedBucketOwner</code> setting that is specified for the workgroup, and
    #               also uses the location for storing query results specified in the workgroup. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a> and <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override Client-Side Settings</a>.</p>
    #   @return [String]
    # @!attribute remove_expected_bucket_owner
    #   <p>If set to "true", removes the Amazon Web Services account ID previously specified for
    #                   <a>ResultConfiguration$ExpectedBucketOwner</a>. If set to "false" or not
    #               set, and a value is present in the <code>ExpectedBucketOwner</code> in
    #                   <code>ResultConfigurationUpdates</code> (the client-side setting), the
    #                   <code>ExpectedBucketOwner</code> in the workgroup's <code>ResultConfiguration</code>
    #               is updated with the new value. For more information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override
    #                   Client-Side Settings</a>.</p>
    #   @return [Boolean]
    # @!attribute acl_configuration
    #   <p>The ACL configuration for the query results.</p>
    #   @return [Types::AclConfiguration]
    # @!attribute remove_acl_configuration
    #   <p>If set to <code>true</code>, indicates that the previously-specified ACL configuration
    #               for queries in this workgroup should be ignored and set to null. If set to
    #                   <code>false</code> or not set, and a value is present in the
    #                   <code>AclConfiguration</code> of <code>ResultConfigurationUpdates</code>, the
    #                   <code>AclConfiguration</code> in the workgroup's <code>ResultConfiguration</code> is
    #               updated with the new value. For more information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override
    #                   Client-Side Settings</a>.</p>
    #   @return [Boolean]
    class ResultConfigurationUpdates < Struct.new(
      nil,
      :output_location,
      :remove_output_location,
      :encryption_configuration,
      :remove_encryption_configuration,
      :expected_bucket_owner,
      :remove_expected_bucket_owner,
      :acl_configuration,
      :remove_acl_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies whether previous query results are reused, and if so, their maximum
    #             age.</p>
    # @!attribute enabled
    #   <p>True if previous query results can be reused when the query is run; otherwise, false.
    #               The default is false.</p>
    #   @return [Boolean]
    # @!attribute max_age_in_minutes
    #   <p>Specifies, in minutes, the maximum age of a previous query result that Athena should consider for reuse. The default is 60.</p>
    #   @return [Integer]
    class ResultReuseByAgeConfiguration < Struct.new(
      nil,
      :enabled,
      :max_age_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Specifies the query result reuse behavior for the query.</p>
    # @!attribute result_reuse_by_age_configuration
    #   <p>Specifies whether previous query results are reused, and if so, their maximum
    #               age.</p>
    #   @return [Types::ResultReuseByAgeConfiguration]
    class ResultReuseConfiguration < Struct.new(
      nil,
      :result_reuse_by_age_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about whether the result of a previous query was reused.</p>
    # @!attribute reused_previous_result
    #   <p>True if a previous query result was reused; false if the result was generated from a
    #               new run of the query.</p>
    #   @return [Boolean]
    class ResultReuseInformation < Struct.new(
      nil,
      :reused_previous_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:reused_previous_result] = false unless options.key?(:reused_previous_result)
        super
      end
    end

    # <p>The metadata and rows that make up a query result set. The metadata describes the
    #             column structure and data types. To return a <code>ResultSet</code> object, use <a>GetQueryResults</a>.</p>
    # @!attribute rows
    #   <p>The rows in the table.</p>
    #   @return [Array<Types::Row>]
    # @!attribute result_set_metadata
    #   <p>The metadata that describes the column structure and data types of a table of query
    #               results.</p>
    #   @return [Types::ResultSetMetadata]
    class ResultSet < Struct.new(
      nil,
      :rows,
      :result_set_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata that describes the column structure and data types of a table of query
    #             results. To return a <code>ResultSetMetadata</code> object, use <a>GetQueryResults</a>.</p>
    # @!attribute column_info
    #   <p>Information about the columns returned in a query result metadata.</p>
    #   @return [Array<Types::ColumnInfo>]
    class ResultSetMetadata < Struct.new(
      nil,
      :column_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The rows that make up a query result table.</p>
    # @!attribute data
    #   <p>The data that populates a row in a query result table.</p>
    #   @return [Array<Types::Datum>]
    class Row < Struct.new(
      nil,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for delivering logs to Amazon S3 buckets.</p>
    # @!attribute enabled
    #   <p>Enables S3 log delivery.</p>
    #   @return [Boolean]
    # @!attribute kms_key
    #   <p>The KMS key ARN to encrypt the logs published to the given Amazon S3 destination.</p>
    #   @return [String]
    # @!attribute log_location
    #   <p>The Amazon S3 destination URI for log publishing.</p>
    #   @return [String]
    class S3LoggingConfiguration < Struct.new(
      nil,
      :enabled,
      :kms_key,
      :log_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified session already exists.</p>
    # @!attribute message
    #   @return [String]
    class SessionAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains session configuration information.</p>
    # @!attribute execution_role
    #   <p>The ARN of the execution role used to access user resources for Spark sessions and
    #               Identity Center enabled workgroups. This property applies only to Spark enabled
    #               workgroups and Identity Center enabled workgroups.</p>
    #   @return [String]
    # @!attribute working_directory
    #   <p>The Amazon S3 location that stores information for the notebook.</p>
    #   @return [String]
    # @!attribute idle_timeout_seconds
    #   <p>The idle timeout in seconds for the session.</p>
    #   @return [Integer]
    # @!attribute session_idle_timeout_in_minutes
    #   <p>The idle timeout in seconds for the session.</p>
    #   @return [Integer]
    # @!attribute encryption_configuration
    #   <p>If query and calculation results are encrypted in Amazon S3, indicates the
    #               encryption option used (for example, <code>SSE_KMS</code> or <code>CSE_KMS</code>) and
    #               key information.</p>
    #   @return [Types::EncryptionConfiguration]
    class SessionConfiguration < Struct.new(
      nil,
      :execution_role,
      :working_directory,
      :idle_timeout_seconds,
      :session_idle_timeout_in_minutes,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains statistics for a session.</p>
    # @!attribute dpu_execution_in_millis
    #   <p>The data processing unit execution time for a session in milliseconds.</p>
    #   @return [Integer]
    class SessionStatistics < Struct.new(
      nil,
      :dpu_execution_in_millis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the status of a session.</p>
    # @!attribute start_date_time
    #   <p>The date and time that the session started.</p>
    #   @return [Time]
    # @!attribute last_modified_date_time
    #   <p>The most recent date and time that the session was modified.</p>
    #   @return [Time]
    # @!attribute end_date_time
    #   <p>The date and time that the session ended.</p>
    #   @return [Time]
    # @!attribute idle_since_date_time
    #   <p>The date and time starting at which the session became idle. Can be empty if the
    #               session is not currently idle.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The state of the session. A description of each state follows.</p>
    #            <p>
    #               <code>CREATING</code> - The session is being started, including acquiring
    #               resources.</p>
    #            <p>
    #               <code>CREATED</code> - The session has been started.</p>
    #            <p>
    #               <code>IDLE</code> - The session is able to accept a calculation.</p>
    #            <p>
    #               <code>BUSY</code> - The session is processing another task and is unable to accept a
    #               calculation.</p>
    #            <p>
    #               <code>TERMINATING</code> - The session is in the process of shutting down.</p>
    #            <p>
    #               <code>TERMINATED</code> - The session and its resources are no longer running.</p>
    #            <p>
    #               <code>DEGRADED</code> - The session has no healthy coordinators.</p>
    #            <p>
    #               <code>FAILED</code> - Due to a failure, the session and its resources are no longer
    #               running.</p>
    #   @return [String]
    # @!attribute state_change_reason
    #   <p>The reason for the session state change (for example, canceled because the session was
    #               terminated).</p>
    #   @return [String]
    class SessionStatus < Struct.new(
      nil,
      :start_date_time,
      :last_modified_date_time,
      :end_date_time,
      :idle_since_date_time,
      :state,
      :state_change_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a session.</p>
    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The session description.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The engine version used by the session (for example, <code>PySpark engine version
    #                   3</code>).</p>
    #   @return [Types::EngineVersion]
    # @!attribute notebook_version
    #   <p>The notebook version.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Contains information about the session status.</p>
    #   @return [Types::SessionStatus]
    class SessionSummary < Struct.new(
      nil,
      :session_id,
      :description,
      :engine_version,
      :notebook_version,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the calculation.</p>
    #   @return [String]
    # @!attribute calculation_configuration
    #   <p>Contains configuration information for the calculation.</p>
    #   @deprecated
    #     Structure is deprecated.
    #   @return [Types::CalculationConfiguration]
    # @!attribute code_block
    #   <p>A string that contains the code of the calculation. Use this parameter instead of
    #                   <a>CalculationConfiguration$CodeBlock</a>, which is deprecated.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the calculation is
    #               idempotent (executes only once). If another
    #                   <code>StartCalculationExecutionRequest</code> is received, the same response is
    #               returned and another calculation is not created. If a parameter has changed, an error is
    #               returned.</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for users. If you are
    #                   not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    #   @return [String]
    class StartCalculationExecutionRequest < Struct.new(
      nil,
      :session_id,
      :description,
      :calculation_configuration,
      :code_block,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculation_execution_id
    #   <p>The calculation execution UUID.</p>
    #   @return [String]
    # @!attribute state
    #   <p>
    #               <code>CREATING</code> - The calculation is in the process of being created.</p>
    #            <p>
    #               <code>CREATED</code> - The calculation has been created and is ready to run.</p>
    #            <p>
    #               <code>QUEUED</code> - The calculation has been queued for processing.</p>
    #            <p>
    #               <code>RUNNING</code> - The calculation is running.</p>
    #            <p>
    #               <code>CANCELING</code> - A request to cancel the calculation has been received and the
    #               system is working to stop it.</p>
    #            <p>
    #               <code>CANCELED</code> - The calculation is no longer running as the result of a cancel
    #               request.</p>
    #            <p>
    #               <code>COMPLETED</code> - The calculation has completed without error.</p>
    #            <p>
    #               <code>FAILED</code> - The calculation failed and is no longer running.</p>
    #   @return [String]
    class StartCalculationExecutionResponse < Struct.new(
      nil,
      :calculation_execution_id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_string
    #   <p>The SQL query statements to be executed.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the query is
    #               idempotent (executes only once). If another <code>StartQueryExecution</code> request is
    #               received, the same response is returned and another query is not created. An error is
    #               returned if a parameter, such as <code>QueryString</code>, has changed. A call to
    #                   <code>StartQueryExecution</code> that uses a previous client request token returns
    #               the same <code>QueryExecutionId</code> even if the requester doesn't have permission on
    #               the tables specified in <code>QueryString</code>.</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for users. If you are
    #                   not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    #   @return [String]
    # @!attribute query_execution_context
    #   <p>The database within which the query executes.</p>
    #   @return [Types::QueryExecutionContext]
    # @!attribute result_configuration
    #   <p>Specifies information about where and how to save the results of the query execution.
    #               If the query runs in a workgroup, then workgroup's settings may override query settings.
    #               This affects the query results location. The workgroup settings override is specified in
    #               EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    #   @return [Types::ResultConfiguration]
    # @!attribute work_group
    #   <p>The name of the workgroup in which the query is being started.</p>
    #   @return [String]
    # @!attribute execution_parameters
    #   <p>A list of values for the parameters in a query. The values are applied sequentially to
    #               the parameters in the query in the order in which the parameters occur.</p>
    #   @return [Array<String>]
    # @!attribute result_reuse_configuration
    #   <p>Specifies the query result reuse behavior for the query.</p>
    #   @return [Types::ResultReuseConfiguration]
    # @!attribute engine_configuration
    #   <p>The engine configuration for the workgroup, which includes the minimum/maximum number of Data Processing Units (DPU) that queries should use when
    #               running in provisioned capacity. If not specified, Athena uses default values (Default value for min is 4 and for max is Minimum of 124 and allocated DPUs).</p>
    #            <p>To specify minimum and maximum DPU values for Capacity Reservations queries, the workgroup containing <code>EngineConfiguration</code> should have the following values: The name of
    #               the <code>Classifications</code> should be <code>athena-query-engine-properties</code>, with the only allowed properties as <code>max-dpu-count</code> and <code>min-dpu-count</code>.</p>
    #   @return [Types::EngineConfiguration]
    class StartQueryExecutionInput < Struct.new(
      nil,
      :query_string,
      :client_request_token,
      :query_execution_context,
      :result_configuration,
      :work_group,
      :execution_parameters,
      :result_reuse_configuration,
      :engine_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_execution_id
    #   <p>The unique ID of the query that ran as a result of this request.</p>
    #   @return [String]
    class StartQueryExecutionOutput < Struct.new(
      nil,
      :query_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The session description.</p>
    #   @return [String]
    # @!attribute work_group
    #   <p>The workgroup to which the session belongs.</p>
    #   @return [String]
    # @!attribute engine_configuration
    #   <p>Contains engine data processing unit (DPU) configuration settings and parameter
    #               mappings.</p>
    #   @return [Types::EngineConfiguration]
    # @!attribute execution_role
    #   <p>The ARN of the execution role used to access user resources for Spark sessions and
    #               Identity Center enabled workgroups. This property applies only to Spark enabled
    #               workgroups and Identity Center enabled workgroups.</p>
    #   @return [String]
    # @!attribute monitoring_configuration
    #   <p>Contains the configuration settings for managed log persistence, delivering logs to Amazon S3 buckets,
    #               Amazon CloudWatch log groups etc.</p>
    #   @return [Types::MonitoringConfiguration]
    # @!attribute notebook_version
    #   <p>The notebook version. This value is supplied automatically for notebook sessions in
    #               the Athena console and is not required for programmatic session access. The
    #               only valid notebook version is <code>Athena notebook version 1</code>. If
    #               you specify a value for <code>NotebookVersion</code>, you must also specify a value for
    #                   <code>NotebookId</code>. See <a>EngineConfiguration$AdditionalConfigs</a>.</p>
    #   @return [String]
    # @!attribute session_idle_timeout_in_minutes
    #   <p>The idle timeout in minutes for the session.</p>
    #   @return [Integer]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the session is
    #               idempotent (executes only once). If another <code>StartSessionRequest</code> is
    #               received, the same response is returned and another session is not created. If a
    #               parameter has changed, an error is returned.</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for users. If you are
    #                   not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of comma separated tags to add to the session that is created.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute copy_work_group_tags
    #   <p>Copies the tags from the Workgroup to the Session when.</p>
    #   @return [Boolean]
    class StartSessionRequest < Struct.new(
      nil,
      :description,
      :work_group,
      :engine_configuration,
      :execution_role,
      :monitoring_configuration,
      :notebook_version,
      :session_idle_timeout_in_minutes,
      :client_request_token,
      :tags,
      :copy_work_group_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the session. A description of each state follows.</p>
    #            <p>
    #               <code>CREATING</code> - The session is being started, including acquiring
    #               resources.</p>
    #            <p>
    #               <code>CREATED</code> - The session has been started.</p>
    #            <p>
    #               <code>IDLE</code> - The session is able to accept a calculation.</p>
    #            <p>
    #               <code>BUSY</code> - The session is processing another task and is unable to accept a
    #               calculation.</p>
    #            <p>
    #               <code>TERMINATING</code> - The session is in the process of shutting down.</p>
    #            <p>
    #               <code>TERMINATED</code> - The session and its resources are no longer running.</p>
    #            <p>
    #               <code>DEGRADED</code> - The session has no healthy coordinators.</p>
    #            <p>
    #               <code>FAILED</code> - Due to a failure, the session and its resources are no longer
    #               running.</p>
    #   @return [String]
    class StartSessionResponse < Struct.new(
      nil,
      :session_id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculation_execution_id
    #   <p>The calculation execution UUID.</p>
    #   @return [String]
    class StopCalculationExecutionRequest < Struct.new(
      nil,
      :calculation_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state
    #   <p>
    #               <code>CREATING</code> - The calculation is in the process of being created.</p>
    #            <p>
    #               <code>CREATED</code> - The calculation has been created and is ready to run.</p>
    #            <p>
    #               <code>QUEUED</code> - The calculation has been queued for processing.</p>
    #            <p>
    #               <code>RUNNING</code> - The calculation is running.</p>
    #            <p>
    #               <code>CANCELING</code> - A request to cancel the calculation has been received and the
    #               system is working to stop it.</p>
    #            <p>
    #               <code>CANCELED</code> - The calculation is no longer running as the result of a cancel
    #               request.</p>
    #            <p>
    #               <code>COMPLETED</code> - The calculation has completed without error.</p>
    #            <p>
    #               <code>FAILED</code> - The calculation failed and is no longer running.</p>
    #   @return [String]
    class StopCalculationExecutionResponse < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_execution_id
    #   <p>The unique ID of the query execution to stop.</p>
    #   @return [String]
    class StopQueryExecutionInput < Struct.new(
      nil,
      :query_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopQueryExecutionOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata for a table.</p>
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time that the table was created.</p>
    #   @return [Time]
    # @!attribute last_access_time
    #   <p>The last time the table was accessed.</p>
    #   @return [Time]
    # @!attribute table_type
    #   <p>The type of table. In Athena, only <code>EXTERNAL_TABLE</code> is
    #               supported.</p>
    #   @return [String]
    # @!attribute columns
    #   <p>A list of the columns in the table.</p>
    #   @return [Array<Types::Column>]
    # @!attribute partition_keys
    #   <p>A list of the partition keys in the table.</p>
    #   @return [Array<Types::Column>]
    # @!attribute parameters
    #   <p>A set of custom key/value pairs for table properties.</p>
    #   @return [Hash<String, String>]
    class TableMetadata < Struct.new(
      nil,
      :name,
      :create_time,
      :last_access_time,
      :table_type,
      :columns,
      :partition_keys,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A label that you assign to a resource. Athena resources include
    #             workgroups, data catalogs, and capacity reservations. Each tag consists of a key and an
    #             optional value, both of which you define. For example, you can use tags to categorize
    #                 Athena resources by purpose, owner, or environment. Use a consistent set
    #             of tag keys to make it easier to search and filter the resources in your account. For
    #             best practices, see <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html">Tagging
    #                 Best Practices</a>. Tag keys can be from 1 to 128 UTF-8 Unicode characters, and
    #             tag values can be from 0 to 256 UTF-8 Unicode characters. Tags can use letters and
    #             numbers representable in UTF-8, and the following characters: + - = . _ : / @. Tag keys
    #             and values are case-sensitive. Tag keys must be unique per resource. If you specify more
    #             than one tag, separate them by commas. </p>
    # @!attribute key
    #   <p>A tag key. The tag key length is from 1 to 128 Unicode characters in UTF-8. You can
    #               use letters and numbers representable in UTF-8, and the following characters: + - = . _
    #               : / @. Tag keys are case-sensitive and must be unique per resource. </p>
    #   @return [String]
    # @!attribute value
    #   <p>A tag value. The tag value length is from 0 to 256 Unicode characters in UTF-8. You
    #               can use letters and numbers representable in UTF-8, and the following characters: + - =
    #               . _ : / @. Tag values are case-sensitive. </p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Specifies the ARN of the Athena resource to which tags are to be
    #               added.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of one or more tags, separated by commas, to be added to an Athena resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    class TerminateSessionRequest < Struct.new(
      nil,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state
    #   <p>The state of the session. A description of each state follows.</p>
    #            <p>
    #               <code>CREATING</code> - The session is being started, including acquiring
    #               resources.</p>
    #            <p>
    #               <code>CREATED</code> - The session has been started.</p>
    #            <p>
    #               <code>IDLE</code> - The session is able to accept a calculation.</p>
    #            <p>
    #               <code>BUSY</code> - The session is processing another task and is unable to accept a
    #               calculation.</p>
    #            <p>
    #               <code>TERMINATING</code> - The session is in the process of shutting down.</p>
    #            <p>
    #               <code>TERMINATED</code> - The session and its resources are no longer running.</p>
    #            <p>
    #               <code>DEGRADED</code> - The session has no healthy coordinators.</p>
    #            <p>
    #               <code>FAILED</code> - Due to a failure, the session and its resources are no longer
    #               running.</p>
    #   @return [String]
    class TerminateSessionResponse < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the request was throttled.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the query throttling, for example, when it exceeds the concurrent query
    #               limit.</p>
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a named query ID that could not be processed.</p>
    # @!attribute named_query_id
    #   <p>The unique identifier of the named query.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code returned when the processing request for the named query failed, if
    #               applicable.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message returned when the processing request for the named query failed, if
    #               applicable.</p>
    #   @return [String]
    class UnprocessedNamedQueryId < Struct.new(
      nil,
      :named_query_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The name of a prepared statement that could not be returned.</p>
    # @!attribute statement_name
    #   <p>The name of a prepared statement that could not be returned due to an error.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code returned when the request for the prepared statement failed.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message containing the reason why the prepared statement could not be
    #               returned. The following error messages are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INVALID_INPUT</code> - The name of the prepared statement that was
    #                       provided is not valid (for example, the name is too long).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STATEMENT_NOT_FOUND</code> - A prepared statement with the name provided
    #                       could not be found.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNAUTHORIZED</code> - The requester does not have permission to access
    #                       the workgroup that contains the prepared statement.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UnprocessedPreparedStatementName < Struct.new(
      nil,
      :statement_name,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a query execution that failed to process.</p>
    # @!attribute query_execution_id
    #   <p>The unique identifier of the query execution.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code returned when the query execution failed to process, if
    #               applicable.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message returned when the query execution failed to process, if
    #               applicable.</p>
    #   @return [String]
    class UnprocessedQueryExecutionId < Struct.new(
      nil,
      :query_execution_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Specifies the ARN of the resource from which tags are to be removed.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A comma-separated list of one or more tag keys whose tags are to be removed from the
    #               specified resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_dpus
    #   <p>The new number of requested data processing units.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the capacity reservation.</p>
    #   @return [String]
    class UpdateCapacityReservationInput < Struct.new(
      nil,
      :target_dpus,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateCapacityReservationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the data catalog to update. The catalog name must be unique for the
    #                   Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at
    #               sign, or hyphen characters. The remainder of the length constraint of 256 is reserved
    #               for use by Athena.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies the type of data catalog to update. Specify <code>LAMBDA</code> for a
    #               federated catalog, <code>HIVE</code> for an external hive metastore, or
    #                   <code>GLUE</code> for an Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute description
    #   <p>New or modified text that describes the data catalog.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Specifies the Lambda function or functions to use for updating the data
    #               catalog. This is a mapping whose values depend on the catalog type. </p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>HIVE</code> data catalog type, use the following syntax. The
    #                           <code>metadata-function</code> parameter is required. <code>The
    #                           sdk-version</code> parameter is optional and defaults to the currently
    #                       supported version.</p>
    #                  <p>
    #                     <code>metadata-function=<i>lambda_arn</i>,
    #                               sdk-version=<i>version_number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets
    #                       of required parameters, but not both.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have one Lambda function that processes metadata
    #                               and another for reading the actual data, use the following syntax. Both
    #                               parameters are required.</p>
    #                        <p>
    #                           <code>metadata-function=<i>lambda_arn</i>,
    #                                       record-function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p> If you have a composite Lambda function that processes
    #                               both metadata and data, use the following syntax to specify your Lambda function.</p>
    #                        <p>
    #                           <code>function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class UpdateDataCatalogInput < Struct.new(
      nil,
      :name,
      :type,
      :description,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateDataCatalogOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute named_query_id
    #   <p>The unique identifier (UUID) of the query.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the query.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The query description.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The contents of the query with all query statements.</p>
    #   @return [String]
    class UpdateNamedQueryInput < Struct.new(
      nil,
      :named_query_id,
      :name,
      :description,
      :query_string,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateNamedQueryOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notebook_id
    #   <p>The ID of the notebook to update.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The updated content for the notebook.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The notebook content type. Currently, the only valid type is
    #               <code>IPYNB</code>.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The active notebook session ID. Required if the notebook has an active session.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the notebook is
    #               idempotent (executes only once).</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for you. If you are not
    #                   using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    #   @return [String]
    class UpdateNotebookInput < Struct.new(
      nil,
      :notebook_id,
      :payload,
      :type,
      :session_id,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notebook_id
    #   <p>The ID of the notebook to update the metadata for.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the notebook is
    #               idempotent (executes only once).</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for you. If you are not
    #                   using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    #   @return [String]
    # @!attribute name
    #   <p>The name to update the notebook to.</p>
    #   @return [String]
    class UpdateNotebookMetadataInput < Struct.new(
      nil,
      :notebook_id,
      :client_request_token,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateNotebookMetadataOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateNotebookOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statement_name
    #   <p>The name of the prepared statement.</p>
    #   @return [String]
    # @!attribute work_group
    #   <p>The workgroup for the prepared statement.</p>
    #   @return [String]
    # @!attribute query_statement
    #   <p>The query string for the prepared statement.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the prepared statement.</p>
    #   @return [String]
    class UpdatePreparedStatementInput < Struct.new(
      nil,
      :statement_name,
      :work_group,
      :query_statement,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdatePreparedStatementOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute work_group
    #   <p>The specified workgroup that will be updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The workgroup description.</p>
    #   @return [String]
    # @!attribute configuration_updates
    #   <p>Contains configuration updates for an Athena SQL workgroup.</p>
    #   @return [Types::WorkGroupConfigurationUpdates]
    # @!attribute state
    #   <p>The workgroup state that will be updated for the given workgroup.</p>
    #   @return [String]
    class UpdateWorkGroupInput < Struct.new(
      nil,
      :work_group,
      :description,
      :configuration_updates,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateWorkGroupOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A workgroup, which contains a name, description, creation time, state, and other
    #             configuration, listed under <a>WorkGroup$Configuration</a>. Each workgroup
    #             enables you to isolate queries for you or your group of users from other queries in the
    #             same account, to configure the query results location and the encryption configuration
    #             (known as workgroup settings), to enable sending query metrics to Amazon CloudWatch,
    #             and to establish per-query data usage control limits for all queries in a workgroup. The
    #             workgroup settings override is specified in <code>EnforceWorkGroupConfiguration</code>
    #             (true/false) in the <code>WorkGroupConfiguration</code>. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    # @!attribute name
    #   <p>The workgroup name.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the workgroup: ENABLED or DISABLED.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration of the workgroup, which includes the location in Amazon S3
    #               where query and calculation results are stored, the encryption configuration, if any,
    #               used for query and calculation results; whether the Amazon CloudWatch Metrics are
    #               enabled for the workgroup; whether workgroup settings override client-side settings; and
    #               the data usage limits for the amount of data scanned per query or per workgroup. The
    #               workgroup settings override is specified in <code>EnforceWorkGroupConfiguration</code>
    #               (true/false) in the <code>WorkGroupConfiguration</code>. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    #   @return [Types::WorkGroupConfiguration]
    # @!attribute description
    #   <p>The workgroup description.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time the workgroup was created.</p>
    #   @return [Time]
    # @!attribute identity_center_application_arn
    #   <p>The ARN of the IAM Identity Center enabled application associated with the
    #               workgroup.</p>
    #   @return [String]
    class WorkGroup < Struct.new(
      nil,
      :name,
      :state,
      :configuration,
      :description,
      :creation_time,
      :identity_center_application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the workgroup, which includes the location in Amazon S3
    #             where query and calculation results are stored, the encryption option, if any, used for
    #             query and calculation results, whether the Amazon CloudWatch Metrics are enabled for
    #             the workgroup and whether workgroup settings override query settings, and the data usage
    #             limits for the amount of data scanned per query or per workgroup. The workgroup settings
    #             override is specified in <code>EnforceWorkGroupConfiguration</code> (true/false) in the
    #                 <code>WorkGroupConfiguration</code>. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>. </p>
    # @!attribute result_configuration
    #   <p>The configuration for the workgroup, which includes the location in Amazon S3
    #               where query and calculation results are stored and the encryption option, if any, used
    #               for query and calculation results. To run the query, you must specify the query results
    #               location using one of the ways: either in the workgroup using this setting, or for
    #               individual queries (client-side), using <a>ResultConfiguration$OutputLocation</a>. If none of them is set, Athena issues an error that no output location is provided.</p>
    #   @return [Types::ResultConfiguration]
    # @!attribute managed_query_results_configuration
    #   <p> The configuration for storing results in Athena owned storage, which includes whether
    #               this feature is enabled; whether encryption configuration, if any, is used for
    #               encrypting query results. </p>
    #   @return [Types::ManagedQueryResultsConfiguration]
    # @!attribute enforce_work_group_configuration
    #   <p>If set to "true", the settings for the workgroup override client-side settings. If set
    #               to "false", client-side settings are used. This property is not required for Apache
    #               Spark enabled workgroups. For more information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override
    #                   Client-Side Settings</a>.</p>
    #   @return [Boolean]
    # @!attribute publish_cloud_watch_metrics_enabled
    #   <p>Indicates that the Amazon CloudWatch metrics are enabled for the workgroup.</p>
    #   @return [Boolean]
    # @!attribute bytes_scanned_cutoff_per_query
    #   <p>The upper data usage limit (cutoff) for the amount of bytes a single query in a
    #               workgroup is allowed to scan.</p>
    #   @return [Integer]
    # @!attribute requester_pays_enabled
    #   <p>If set to <code>true</code>, allows members assigned to a workgroup to reference
    #                   Amazon S3 Requester Pays buckets in queries. If set to <code>false</code>,
    #               workgroup members cannot query data from Requester Pays buckets, and queries that
    #               retrieve data from Requester Pays buckets cause an error. The default is
    #                   <code>false</code>. For more information about Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html">Requester
    #                   Pays Buckets</a> in the <i>Amazon Simple Storage Service Developer
    #                   Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute engine_version
    #   <p>The engine version that all queries running on the workgroup use. Queries on the
    #                   <code>AmazonAthenaPreviewFunctionality</code> workgroup run on the preview engine
    #               regardless of this setting.</p>
    #   @return [Types::EngineVersion]
    # @!attribute additional_configuration
    #   <p>Specifies a user defined JSON string that is passed to the notebook engine.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The ARN of the execution role used to access user resources for Spark sessions and
    #                   IAM Identity Center enabled workgroups. This property applies only to Spark enabled
    #               workgroups and IAM Identity Center enabled workgroups. The property is required for
    #                   IAM Identity Center enabled workgroups.</p>
    #   @return [String]
    # @!attribute monitoring_configuration
    #   <p>Contains the configuration settings for managed log persistence, delivering logs to Amazon S3 buckets,
    #               Amazon CloudWatch log groups etc.</p>
    #   @return [Types::MonitoringConfiguration]
    # @!attribute engine_configuration
    #   <p>The engine configuration for the workgroup, which includes the minimum/maximum number of Data Processing Units (DPU) that queries should use when
    #               running in provisioned capacity. If not specified, Athena uses default values (Default value for min is 4 and for max is Minimum of 124 and allocated DPUs).</p>
    #            <p>To specify DPU values for PC queries the WG containing EngineConfiguration should have the following values:
    #           The name of the Classifications should be <code>athena-query-engine-properties</code>, with the only allowed properties as <code>max-dpu-count</code> and <code>min-dpu-count</code>.</p>
    #   @return [Types::EngineConfiguration]
    # @!attribute customer_content_encryption_configuration
    #   <p>Specifies the KMS key that is used to encrypt the user's data stores in Athena. This setting does not apply to Athena SQL workgroups.</p>
    #   @return [Types::CustomerContentEncryptionConfiguration]
    # @!attribute enable_minimum_encryption_configuration
    #   <p>Enforces a minimal level of encryption for the workgroup for query and calculation
    #               results that are written to Amazon S3. When enabled, workgroup users can set
    #               encryption only to the minimum level set by the administrator or higher when they submit
    #               queries.</p>
    #            <p>The <code>EnforceWorkGroupConfiguration</code> setting takes precedence over the
    #                   <code>EnableMinimumEncryptionConfiguration</code> flag. This means that if
    #                   <code>EnforceWorkGroupConfiguration</code> is true, the
    #                   <code>EnableMinimumEncryptionConfiguration</code> flag is ignored, and the workgroup
    #               configuration for encryption is used.</p>
    #   @return [Boolean]
    # @!attribute identity_center_configuration
    #   <p>Specifies whether the workgroup is IAM Identity Center supported.</p>
    #   @return [Types::IdentityCenterConfiguration]
    # @!attribute query_results_s3_access_grants_configuration
    #   <p>Specifies whether Amazon S3 access grants are enabled for query
    #               results.</p>
    #   @return [Types::QueryResultsS3AccessGrantsConfiguration]
    class WorkGroupConfiguration < Struct.new(
      nil,
      :result_configuration,
      :managed_query_results_configuration,
      :enforce_work_group_configuration,
      :publish_cloud_watch_metrics_enabled,
      :bytes_scanned_cutoff_per_query,
      :requester_pays_enabled,
      :engine_version,
      :additional_configuration,
      :execution_role,
      :monitoring_configuration,
      :engine_configuration,
      :customer_content_encryption_configuration,
      :enable_minimum_encryption_configuration,
      :identity_center_configuration,
      :query_results_s3_access_grants_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information that will be updated for this workgroup, which includes
    #             the location in Amazon S3 where query and calculation results are stored, the
    #             encryption option, if any, used for query results, whether the Amazon CloudWatch
    #             Metrics are enabled for the workgroup, whether the workgroup settings override the
    #             client-side settings, and the data usage limit for the amount of bytes scanned per
    #             query, if it is specified.</p>
    # @!attribute enforce_work_group_configuration
    #   <p>If set to "true", the settings for the workgroup override client-side settings. If set
    #               to "false" client-side settings are used. For more information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override Client-Side Settings</a>.</p>
    #   @return [Boolean]
    # @!attribute result_configuration_updates
    #   <p>The result configuration information about the queries in this workgroup that will be
    #               updated. Includes the updated results location and an updated option for encrypting
    #               query results.</p>
    #   @return [Types::ResultConfigurationUpdates]
    # @!attribute managed_query_results_configuration_updates
    #   <p>Updates configuration information for managed query results in the workgroup.</p>
    #   @return [Types::ManagedQueryResultsConfigurationUpdates]
    # @!attribute publish_cloud_watch_metrics_enabled
    #   <p>Indicates whether this workgroup enables publishing metrics to Amazon CloudWatch.</p>
    #   @return [Boolean]
    # @!attribute bytes_scanned_cutoff_per_query
    #   <p>The upper limit (cutoff) for the amount of bytes a single query in a workgroup is
    #               allowed to scan.</p>
    #   @return [Integer]
    # @!attribute remove_bytes_scanned_cutoff_per_query
    #   <p>Indicates that the data usage control limit per query is removed. <a>WorkGroupConfiguration$BytesScannedCutoffPerQuery</a>
    #            </p>
    #   @return [Boolean]
    # @!attribute requester_pays_enabled
    #   <p>If set to <code>true</code>, allows members assigned to a workgroup to specify Amazon S3 Requester Pays buckets in queries. If set to <code>false</code>, workgroup
    #               members cannot query data from Requester Pays buckets, and queries that retrieve data
    #               from Requester Pays buckets cause an error. The default is <code>false</code>. For more
    #               information about Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html">Requester Pays Buckets</a>
    #               in the <i>Amazon Simple Storage Service Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute engine_version
    #   <p>The engine version requested when a workgroup is updated. After the update, all
    #               queries on the workgroup run on the requested engine version. If no value was previously
    #               set, the default is Auto. Queries on the <code>AmazonAthenaPreviewFunctionality</code>
    #               workgroup run on the preview engine regardless of this setting.</p>
    #   @return [Types::EngineVersion]
    # @!attribute remove_customer_content_encryption_configuration
    #   <p>Removes content encryption configuration from an Apache Spark-enabled Athena workgroup.</p>
    #   @return [Boolean]
    # @!attribute additional_configuration
    #   <p>Contains a user defined string in JSON format for a Spark-enabled workgroup.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The ARN of the execution role used to access user resources for Spark sessions and
    #               Identity Center enabled workgroups. This property applies only to Spark enabled
    #               workgroups and Identity Center enabled workgroups.</p>
    #   @return [String]
    # @!attribute customer_content_encryption_configuration
    #   <p>Specifies the customer managed KMS key that is used to encrypt the user's data stores
    #               in Athena. When an Amazon Web Services managed key is used, this value is
    #               null. This setting does not apply to Athena SQL workgroups.</p>
    #   @return [Types::CustomerContentEncryptionConfiguration]
    # @!attribute enable_minimum_encryption_configuration
    #   <p>Enforces a minimal level of encryption for the workgroup for query and calculation
    #               results that are written to Amazon S3. When enabled, workgroup users can set
    #               encryption only to the minimum level set by the administrator or higher when they submit
    #               queries. This setting does not apply to Spark-enabled workgroups.</p>
    #            <p>The <code>EnforceWorkGroupConfiguration</code> setting takes precedence over the
    #                   <code>EnableMinimumEncryptionConfiguration</code> flag. This means that if
    #                   <code>EnforceWorkGroupConfiguration</code> is true, the
    #                   <code>EnableMinimumEncryptionConfiguration</code> flag is ignored, and the workgroup
    #               configuration for encryption is used.</p>
    #   @return [Boolean]
    # @!attribute query_results_s3_access_grants_configuration
    #   <p>Specifies whether Amazon S3 access grants are enabled for query
    #               results.</p>
    #   @return [Types::QueryResultsS3AccessGrantsConfiguration]
    # @!attribute monitoring_configuration
    #   <p>Contains the configuration settings for managed log persistence, delivering logs to Amazon S3 buckets,
    #               Amazon CloudWatch log groups etc.</p>
    #   @return [Types::MonitoringConfiguration]
    # @!attribute engine_configuration
    #   <p>The engine configuration for the workgroup, which includes the minimum/maximum number of Data Processing Units (DPU) that queries should use when
    #               running in provisioned capacity. If not specified, Athena uses default values (Default value for min is 4 and for max is Minimum of 124 and allocated DPUs).</p>
    #            <p>To specify DPU values for PC queries the WG containing EngineConfiguration should have the following values:
    #           The name of the Classifications should be <code>athena-query-engine-properties</code>, with the only allowed properties as <code>max-dpu-count</code> and <code>min-dpu-count</code>.</p>
    #   @return [Types::EngineConfiguration]
    class WorkGroupConfigurationUpdates < Struct.new(
      nil,
      :enforce_work_group_configuration,
      :result_configuration_updates,
      :managed_query_results_configuration_updates,
      :publish_cloud_watch_metrics_enabled,
      :bytes_scanned_cutoff_per_query,
      :remove_bytes_scanned_cutoff_per_query,
      :requester_pays_enabled,
      :engine_version,
      :remove_customer_content_encryption_configuration,
      :additional_configuration,
      :execution_role,
      :customer_content_encryption_configuration,
      :enable_minimum_encryption_configuration,
      :query_results_s3_access_grants_configuration,
      :monitoring_configuration,
      :engine_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary information for the workgroup, which includes its name, state,
    #             description, and the date and time it was created.</p>
    # @!attribute name
    #   <p>The name of the workgroup.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the workgroup.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The workgroup description.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The workgroup creation date and time.</p>
    #   @return [Time]
    # @!attribute engine_version
    #   <p>The engine version setting for all queries on the workgroup. Queries on the
    #                   <code>AmazonAthenaPreviewFunctionality</code> workgroup run on the preview engine
    #               regardless of this setting.</p>
    #   @return [Types::EngineVersion]
    # @!attribute identity_center_application_arn
    #   <p>The ARN of the IAM Identity Center enabled application associated with the
    #               workgroup.</p>
    #   @return [String]
    class WorkGroupSummary < Struct.new(
      nil,
      :name,
      :state,
      :description,
      :creation_time,
      :engine_version,
      :identity_center_application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
