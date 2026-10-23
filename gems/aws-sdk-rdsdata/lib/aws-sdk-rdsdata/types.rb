# frozen_string_literal: true

# This is generated code!

module Aws::RDSData
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an array.</p>
    # @!attribute boolean_values
    #   <p>An array of Boolean values.</p>
    #   @return [Array<Boolean>]
    # @!attribute long_values
    #   <p>An array of integers.</p>
    #   @return [Array<Integer>]
    # @!attribute double_values
    #   <p>An array of floating-point numbers.</p>
    #   @return [Array<Float>]
    # @!attribute string_values
    #   <p>An array of strings.</p>
    #   @return [Array<String>]
    # @!attribute array_values
    #   <p>An array of arrays.</p>
    #   @return [Array<Types::ArrayValue>]
    class ArrayValue < Struct.new(
      :boolean_values,
      :long_values,
      :double_values,
      :string_values,
      :array_values,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class BooleanValues < ArrayValue; end
      class LongValues < ArrayValue; end
      class DoubleValues < ArrayValue; end
      class StringValues < ArrayValue; end
      class ArrayValues < ArrayValue; end
      class Unknown < ArrayValue; end
    end

    # <p>There is an error in the call or in a SQL statement. (This error only appears in calls from Aurora Serverless v1 databases.)</p>
    # @!attribute message
    #   <p>The error message returned by this <code>BadRequestException</code> error.</p>
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters represent the input of a SQL statement over an array of
    #             data.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The ARN of the secret that enables access to the DB cluster. Enter the database user name and password for the credentials in
    #               the secret.</p>
    #            <p>For information about creating the secret, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/create_database_secret.html">Create a database secret</a>.</p>
    #   @return [String]
    # @!attribute sql
    #   <p>The SQL statement to run. Don't include a semicolon (;) at the end of the SQL statement.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The name of the database schema.</p>
    #            <note>
    #               <p>Currently, the <code>schema</code> parameter isn't supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute parameter_sets
    #   <p>The parameter set for the batch operation.</p>
    #            <p>The SQL statement is executed as many times as the number of parameter sets provided. 
    #             To execute a SQL statement with no parameters, use one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Specify one or more empty parameter sets.</p>
    #               </li>
    #               <li>
    #                  <p>Use the <code>ExecuteStatement</code> operation instead of the <code>BatchExecuteStatement</code> operation.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Array parameters are not supported.</p>
    #            </note>
    #   @return [Array<Array<Types::SqlParameter>>]
    # @!attribute transaction_id
    #   <p>The identifier of a transaction that was started by using the
    #                   <code>BeginTransaction</code> operation. Specify the transaction ID of the
    #               transaction that you want to include the SQL statement in.</p>
    #            <p>If the SQL statement is not part of a transaction, don't set this
    #               parameter.</p>
    #   @return [String]
    class BatchExecuteStatementInput < Struct.new(
      nil,
      :resource_arn,
      :secret_arn,
      :sql,
      :database,
      :schema,
      :parameter_sets,
      :transaction_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response elements represent the output of a SQL statement over an array of
    #             data.</p>
    # @!attribute update_results
    #   <p>The execution results of each batch entry.</p>
    #   @return [Array<Types::UpdateResult>]
    class BatchExecuteStatementOutput < Struct.new(
      nil,
      :update_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters represent the input of a request to start a SQL
    #             transaction.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The name of the database schema.</p>
    #   @return [String]
    class BeginTransactionInput < Struct.new(
      nil,
      :resource_arn,
      :secret_arn,
      :database,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response elements represent the output of a request to start a SQL
    #             transaction.</p>
    # @!attribute transaction_id
    #   <p>The transaction ID of the transaction started by the call.</p>
    #   @return [String]
    class BeginTransactionOutput < Struct.new(
      nil,
      :transaction_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the metadata for a column.</p>
    # @!attribute name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the column.</p>
    #   @return [Integer]
    # @!attribute type_name
    #   <p>The database-specific data type of the column.</p>
    #   @return [String]
    # @!attribute label
    #   <p>The label for the column.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema that owns the table that includes the column.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table that includes the column.</p>
    #   @return [String]
    # @!attribute is_auto_increment
    #   <p>A value that indicates whether the column increments automatically.</p>
    #   @return [Boolean]
    # @!attribute is_signed
    #   <p>A value that indicates whether an integer column is signed.</p>
    #   @return [Boolean]
    # @!attribute is_currency
    #   <p>A value that indicates whether the column contains currency values.</p>
    #   @return [Boolean]
    # @!attribute is_case_sensitive
    #   <p>A value that indicates whether the column is case-sensitive.</p>
    #   @return [Boolean]
    # @!attribute nullable
    #   <p>A value that indicates whether the column is nullable.</p>
    #   @return [Integer]
    # @!attribute precision
    #   <p>The precision value of a decimal number column.</p>
    #   @return [Integer]
    # @!attribute scale
    #   <p>The scale value of a decimal number column.</p>
    #   @return [Integer]
    # @!attribute array_base_column_type
    #   <p>The type of the column.</p>
    #   @return [Integer]
    class ColumnMetadata < Struct.new(
      nil,
      :name,
      :type,
      :type_name,
      :label,
      :schema_name,
      :table_name,
      :is_auto_increment,
      :is_signed,
      :is_currency,
      :is_case_sensitive,
      :nullable,
      :precision,
      :scale,
      :array_base_column_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:type] = 0 unless options.key?(:type)
        options[:is_auto_increment] = false unless options.key?(:is_auto_increment)
        options[:is_signed] = false unless options.key?(:is_signed)
        options[:is_currency] = false unless options.key?(:is_currency)
        options[:is_case_sensitive] = false unless options.key?(:is_case_sensitive)
        options[:nullable] = 0 unless options.key?(:nullable)
        options[:precision] = 0 unless options.key?(:precision)
        options[:scale] = 0 unless options.key?(:scale)
        options[:array_base_column_type] = 0 unless options.key?(:array_base_column_type)
        super
      end
    end

    # <p>The request parameters represent the input of a commit transaction request.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The identifier of the transaction to end and commit.</p>
    #   @return [String]
    class CommitTransactionInput < Struct.new(
      nil,
      :resource_arn,
      :secret_arn,
      :transaction_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response elements represent the output of a commit transaction request.</p>
    # @!attribute transaction_status
    #   <p>The status of the commit operation.</p>
    #   @return [String]
    class CommitTransactionOutput < Struct.new(
      nil,
      :transaction_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was an error in processing the SQL statement.</p>
    # @!attribute message
    #   @return [String]
    class DatabaseErrorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The DB cluster doesn't have a DB instance.</p>
    # @!attribute message
    #   @return [String]
    class DatabaseNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request was cancelled because the Aurora Serverless v2 DB instance was paused.
    #          The Data API request automatically resumes the DB instance. Wait a few seconds and
    #          try again.</p>
    # @!attribute message
    #   @return [String]
    class DatabaseResumingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The writer instance in the DB cluster isn't available.</p>
    class DatabaseUnavailableException < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters represent the input of a request to run one or more SQL
    #             statements.</p>
    # @!attribute db_cluster_or_instance_arn
    #   <p>The ARN of the Aurora Serverless DB cluster.</p>
    #   @return [String]
    # @!attribute aws_secret_store_arn
    #   <p>The Amazon Resource Name (ARN) of the secret that enables access to the DB cluster. Enter the database user name and password
    #               for the credentials in the secret.</p>
    #            <p>For information about creating the secret, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/create_database_secret.html">Create a database secret</a>.</p>
    #   @return [String]
    # @!attribute sql_statements
    #   <p>One or more SQL statements to run on the DB cluster.</p>
    #            <p>You can separate SQL statements from each other with a semicolon (;). Any valid SQL
    #               statement is permitted, including data definition, data manipulation, and commit
    #               statements. </p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The name of the database schema.</p>
    #   @return [String]
    class ExecuteSqlInput < Struct.new(
      nil,
      :db_cluster_or_instance_arn,
      :aws_secret_store_arn,
      :sql_statements,
      :database,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response elements represent the output of a request to run one or more SQL
    #             statements.</p>
    # @!attribute sql_statement_results
    #   <p>The results of the SQL statement or statements.</p>
    #   @return [Array<Types::SqlStatementResult>]
    class ExecuteSqlOutput < Struct.new(
      nil,
      :sql_statement_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters represent the input of a request to run a SQL statement against
    #             a database.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The ARN of the secret that enables access to the DB cluster. Enter the database user name and password for the credentials in
    #               the secret.</p>
    #            <p>For information about creating the secret, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/create_database_secret.html">Create a database secret</a>.</p>
    #   @return [String]
    # @!attribute sql
    #   <p>The SQL statement to run.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The name of the database schema.</p>
    #            <note>
    #               <p>Currently, the <code>schema</code> parameter isn't supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for the SQL statement.</p>
    #            <note>
    #               <p>Array parameters are not supported.</p>
    #            </note>
    #   @return [Array<Types::SqlParameter>]
    # @!attribute transaction_id
    #   <p>The identifier of a transaction that was started by using the
    #                   <code>BeginTransaction</code> operation. Specify the transaction ID of the
    #               transaction that you want to include the SQL statement in.</p>
    #            <p>If the SQL statement is not part of a transaction, don't set this parameter.</p>
    #   @return [String]
    # @!attribute include_result_metadata
    #   <p>A value that indicates whether to include metadata in the results.</p>
    #   @return [Boolean]
    # @!attribute continue_after_timeout
    #   <p>A value that indicates whether to continue running the statement after 
    #               the call times out. By default, the statement stops running when the call 
    #               times out.</p>
    #            <note>
    #               <p>For DDL statements, we recommend continuing to run the statement after 
    #                  the call times out. When a DDL statement terminates before it is finished 
    #                  running, it can result in errors and possibly corrupted data structures.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute result_set_options
    #   <p>Options that control how the result set is returned.</p>
    #   @return [Types::ResultSetOptions]
    # @!attribute format_records_as
    #   <p>A value that indicates whether to format the result set as a single JSON string.
    #           This parameter only applies to <code>SELECT</code> statements and is ignored for
    #           other types of statements. Allowed values are <code>NONE</code> and <code>JSON</code>.
    #           The default value is <code>NONE</code>. The result is returned in the <code>formattedRecords</code> field.</p>
    #            <p>For usage information about the JSON format for result sets, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html">Using the Data API</a>
    #             in the <i>Amazon Aurora User Guide</i>.</p>
    #   @return [String]
    class ExecuteStatementInput < Struct.new(
      nil,
      :resource_arn,
      :secret_arn,
      :sql,
      :database,
      :schema,
      :parameters,
      :transaction_id,
      :include_result_metadata,
      :continue_after_timeout,
      :result_set_options,
      :format_records_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response elements represent the output of a request to run a SQL statement against
    #             a database.</p>
    # @!attribute records
    #   <p>The records returned by the SQL statement. This field is blank if the
    #           <code>formatRecordsAs</code> parameter is set to <code>JSON</code>.</p>
    #   @return [Array<Array<Types::Field>>]
    # @!attribute column_metadata
    #   <p>Metadata for the columns included in the results. This field is blank if the
    #           <code>formatRecordsAs</code> parameter is set to <code>JSON</code>.</p>
    #   @return [Array<Types::ColumnMetadata>]
    # @!attribute number_of_records_updated
    #   <p>The number of records updated by the request.</p>
    #   @return [Integer]
    # @!attribute generated_fields
    #   <p>Values for fields generated during a DML request.</p>
    #            <note>
    #               <p>The <code>generatedFields</code> data isn't supported by Aurora PostgreSQL.
    #                   To get the values of generated fields, use the <code>RETURNING</code> clause. For
    #                   more information, see <a href="https://www.postgresql.org/docs/10/dml-returning.html">Returning Data From
    #                       Modified Rows</a> in the PostgreSQL documentation.</p>
    #            </note>
    #   @return [Array<Types::Field>]
    # @!attribute formatted_records
    #   <p>A string value that represents the result set of a <code>SELECT</code> statement
    #           in JSON format. This value is only present when the <code>formatRecordsAs</code>
    #           parameter is set to <code>JSON</code>.</p>
    #            <p>The size limit for this field is currently 10 MB. If the JSON-formatted string representing the
    #             result set requires more than 10 MB, the call returns an error.</p>
    #   @return [String]
    class ExecuteStatementOutput < Struct.new(
      nil,
      :records,
      :column_metadata,
      :number_of_records_updated,
      :generated_fields,
      :formatted_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_records_updated] = 0 unless options.key?(:number_of_records_updated)
        super
      end
    end

    # <p>Contains a value.</p>
    # @!attribute is_null
    #   <p>A NULL value.</p>
    #   @return [Boolean]
    # @!attribute boolean_value
    #   <p>A value of Boolean data type.</p>
    #   @return [Boolean]
    # @!attribute long_value
    #   <p>A value of long data type.</p>
    #   @return [Integer]
    # @!attribute double_value
    #   <p>A value of double data type.</p>
    #   @return [Float]
    # @!attribute string_value
    #   <p>A value of string data type.</p>
    #   @return [String]
    # @!attribute blob_value
    #   <p>A value of BLOB data type.</p>
    #   @return [String]
    # @!attribute array_value
    #   <p>An array of values.</p>
    #   @return [Types::ArrayValue]
    class Field < Struct.new(
      :is_null,
      :boolean_value,
      :long_value,
      :double_value,
      :string_value,
      :blob_value,
      :array_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IsNull < Field; end
      class BooleanValue < Field; end
      class LongValue < Field; end
      class DoubleValue < Field; end
      class StringValue < Field; end
      class BlobValue < Field; end
      class ArrayValue < Field; end
      class Unknown < Field; end
    end

    # <p>There are insufficient privileges to make the call.</p>
    # @!attribute message
    #   <p>The error message returned by this <code>ForbiddenException</code> error.</p>
    #   @return [String]
    class ForbiddenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The HTTP endpoint for using RDS Data API isn't enabled for the DB cluster.</p>
    # @!attribute message
    #   @return [String]
    class HttpEndpointNotEnabledException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal error occurred.</p>
    class InternalServerErrorException < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is in an invalid state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidResourceStateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Secrets Manager secret used with the request isn't valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidSecretException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>resourceArn</code>, <code>secretArn</code>, or <code>transactionId</code> value can't be found.</p>
    # @!attribute message
    #   <p>The error message returned by this <code>NotFoundException</code> error.</p>
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A record returned by a call.</p>
    #          <note>
    #             <p>This data structure is only used with the deprecated <code>ExecuteSql</code> operation.
    #               Use the <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> operation instead.</p>
    #          </note>
    # @!attribute values
    #   <p>The values returned in the record.</p>
    #   @return [Array<Types::Value>]
    class Record < Struct.new(
      nil,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result set returned by a SQL statement.</p>
    #          <note>
    #             <p>This data structure is only used with the deprecated <code>ExecuteSql</code> operation.
    #               Use the <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> operation instead.</p>
    #          </note>
    # @!attribute result_set_metadata
    #   <p>The result-set metadata in the result set.</p>
    #   @return [Types::ResultSetMetadata]
    # @!attribute records
    #   <p>The records in the result set.</p>
    #   @return [Array<Types::Record>]
    class ResultFrame < Struct.new(
      nil,
      :result_set_metadata,
      :records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata of the result set returned by a SQL statement.</p>
    # @!attribute column_count
    #   <p>The number of columns in the result set.</p>
    #   @return [Integer]
    # @!attribute column_metadata
    #   <p>The metadata of the columns in the result set.</p>
    #   @return [Array<Types::ColumnMetadata>]
    class ResultSetMetadata < Struct.new(
      nil,
      :column_count,
      :column_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:column_count] = 0 unless options.key?(:column_count)
        super
      end
    end

    # <p>Options that control how the result set is returned.</p>
    # @!attribute decimal_return_type
    #   <p>A value that indicates how a field of <code>DECIMAL</code> type is represented
    #               in the response. The value of <code>STRING</code>, the default, specifies that
    #               it is converted to a String value. The value of <code>DOUBLE_OR_LONG</code>
    #               specifies that it is converted to a Long value if its scale is 0, or to a Double
    #               value otherwise.</p>
    #            <note>
    #               <p>Conversion to Double or Long can result in roundoff errors due to precision loss.
    #                   We recommend converting to String, especially when working with currency values.</p>
    #            </note>
    #   @return [String]
    # @!attribute long_return_type
    #   <p>A value that indicates how a field of <code>LONG</code> type is represented.
    #           Allowed values are <code>LONG</code> and <code>STRING</code>. The default
    #           is <code>LONG</code>. Specify <code>STRING</code> if the length or
    #           precision of numeric values might cause truncation or rounding errors.
    #           </p>
    #   @return [String]
    class ResultSetOptions < Struct.new(
      nil,
      :decimal_return_type,
      :long_return_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters represent the input of a request to perform a rollback of a
    #             transaction.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The identifier of the transaction to roll back.</p>
    #   @return [String]
    class RollbackTransactionInput < Struct.new(
      nil,
      :resource_arn,
      :secret_arn,
      :transaction_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response elements represent the output of a request to perform a rollback of a
    #             transaction.</p>
    # @!attribute transaction_status
    #   <p>The status of the rollback operation.</p>
    #   @return [String]
    class RollbackTransactionOutput < Struct.new(
      nil,
      :transaction_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was a problem with the Secrets Manager secret used with the request, caused by one of the following conditions:</p>
    #          <ul>
    #             <li>
    #                <p>RDS Data API timed out retrieving the secret.</p>
    #             </li>
    #             <li>
    #                <p>The secret provided wasn't found.</p>
    #             </li>
    #             <li>
    #                <p>The secret couldn't be decrypted.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    class SecretsErrorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service specified by the <code>resourceArn</code> parameter isn't
    #             available.</p>
    class ServiceUnavailableError < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A parameter used in a SQL statement.</p>
    # @!attribute name
    #   <p>The name of the parameter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the parameter.</p>
    #   @return [Types::Field]
    # @!attribute type_hint
    #   <p>A hint that specifies the correct object type for data type mapping. Possible values
    #               are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DATE</code> - The corresponding <code>String</code> parameter value is sent as an object 
    #                 of <code>DATE</code> type to the database. The accepted format is <code>YYYY-MM-DD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DECIMAL</code> - The corresponding <code>String</code> parameter value is sent as an object 
    #                       of <code>DECIMAL</code> type to the database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JSON</code> - The corresponding <code>String</code> parameter value is sent as an
    #              object of <code>JSON</code> type to the database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIME</code> - The corresponding <code>String</code> parameter value is sent as an object 
    #                       of <code>TIME</code> type to the database. The accepted format is <code>HH:MM:SS[.FFF]</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIMESTAMP</code> - The corresponding <code>String</code> parameter value is sent as an object 
    #                 of <code>TIMESTAMP</code> type to the database. The accepted format is <code>YYYY-MM-DD HH:MM:SS[.FFF]</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UUID</code> - The corresponding <code>String</code> parameter value is sent as an object of
    #                <code>UUID</code> type to the database.
    #             </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class SqlParameter < Struct.new(
      nil,
      :name,
      :value,
      :type_hint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a SQL statement.</p>
    #          <note>
    #             <p>This data structure is only used with the deprecated <code>ExecuteSql</code> operation.
    #               Use the <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> operation instead.</p>
    #          </note>
    # @!attribute result_frame
    #   <p>The result set of the SQL statement.</p>
    #   @return [Types::ResultFrame]
    # @!attribute number_of_records_updated
    #   <p>The number of records updated by a SQL statement.</p>
    #   @return [Integer]
    class SqlStatementResult < Struct.new(
      nil,
      :result_frame,
      :number_of_records_updated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_records_updated] = 0 unless options.key?(:number_of_records_updated)
        super
      end
    end

    # <p>The execution of the SQL statement timed out.</p>
    # @!attribute message
    #   <p>The error message returned by this <code>StatementTimeoutException</code> error.</p>
    #   @return [String]
    # @!attribute db_connection_id
    #   <p>The database connection ID that executed the SQL statement.</p>
    #   @return [Integer]
    class StatementTimeoutException < Struct.new(
      nil,
      :message,
      :db_connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:db_connection_id] = 0 unless options.key?(:db_connection_id)
        super
      end
    end

    # <p>A structure value returned by a call.</p>
    #          <note>
    #             <p>This data structure is only used with the deprecated <code>ExecuteSql</code> operation.
    #               Use the <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> operation instead.</p>
    #          </note>
    # @!attribute attributes
    #   <p>The attributes returned in the record.</p>
    #   @return [Array<Types::Value>]
    class StructValue < Struct.new(
      nil,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The transaction ID wasn't found.</p>
    # @!attribute message
    #   @return [String]
    class TransactionNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was a problem with the result because of one of the following conditions:</p>
    #          <ul>
    #             <li>
    #                <p>It contained an unsupported data type.</p>
    #             </li>
    #             <li>
    #                <p>It contained a multidimensional array.</p>
    #             </li>
    #             <li>
    #                <p>The size was too large.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    class UnsupportedResultException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response elements represent the results of an update.</p>
    # @!attribute generated_fields
    #   <p>Values for fields generated during the request.</p>
    #   @return [Array<Types::Field>]
    class UpdateResult < Struct.new(
      nil,
      :generated_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the value of a column.</p>
    #          <note>
    #             <p>This data structure is only used with the deprecated <code>ExecuteSql</code> operation.
    #               Use the <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> operation instead.</p>
    #          </note>
    # @!attribute is_null
    #   <p>A NULL value.</p>
    #   @return [Boolean]
    # @!attribute bit_value
    #   <p>A value for a column of BIT data type.</p>
    #   @return [Boolean]
    # @!attribute big_int_value
    #   <p>A value for a column of big integer data type.</p>
    #   @return [Integer]
    # @!attribute int_value
    #   <p>A value for a column of integer data type.</p>
    #   @return [Integer]
    # @!attribute double_value
    #   <p>A value for a column of double data type.</p>
    #   @return [Float]
    # @!attribute real_value
    #   <p>A value for a column of real data type.</p>
    #   @return [Float]
    # @!attribute string_value
    #   <p>A value for a column of string data type.</p>
    #   @return [String]
    # @!attribute blob_value
    #   <p>A value for a column of BLOB data type.</p>
    #   @return [String]
    # @!attribute array_values
    #   <p>An array of column values.</p>
    #   @return [Array<Types::Value>]
    # @!attribute struct_value
    #   <p>A value for a column of STRUCT data type.</p>
    #   @return [Types::StructValue]
    class Value < Struct.new(
      :is_null,
      :bit_value,
      :big_int_value,
      :int_value,
      :double_value,
      :real_value,
      :string_value,
      :blob_value,
      :array_values,
      :struct_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IsNull < Value; end
      class BitValue < Value; end
      class BigIntValue < Value; end
      class IntValue < Value; end
      class DoubleValue < Value; end
      class RealValue < Value; end
      class StringValue < Value; end
      class BlobValue < Value; end
      class ArrayValues < Value; end
      class StructValue < Value; end
      class Unknown < Value; end
    end

  end
end
