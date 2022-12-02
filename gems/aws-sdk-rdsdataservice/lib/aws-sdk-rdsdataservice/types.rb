# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDSDataService
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an array.
    #
    # @note ArrayValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ArrayValue is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ArrayValue corresponding to the set member.
    #
    # @!attribute [rw] boolean_values
    #   An array of Boolean values.
    #   @return [Array<Boolean>]
    #
    # @!attribute [rw] long_values
    #   An array of integers.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] double_values
    #   An array of floating-point numbers.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] string_values
    #   An array of strings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] array_values
    #   An array of arrays.
    #   @return [Array<Types::ArrayValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ArrayValue AWS API Documentation
    #
    class ArrayValue < Struct.new(
      :boolean_values,
      :long_values,
      :double_values,
      :string_values,
      :array_values,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BooleanValues < ArrayValue; end
      class LongValues < ArrayValue; end
      class DoubleValues < ArrayValue; end
      class StringValues < ArrayValue; end
      class ArrayValues < ArrayValue; end
      class Unknown < ArrayValue; end
    end

    # There is an error in the call or in a SQL statement.
    #
    # @!attribute [rw] message
    #   The error message returned by this `BadRequestException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters represent the input of a SQL statement over an
    # array of data.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the secret that enables access to the DB cluster. Enter
    #   the database user name and password for the credentials in the
    #   secret.
    #
    #   For information about creating the secret, see [Create a database
    #   secret][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/create_database_secret.html
    #   @return [String]
    #
    # @!attribute [rw] sql
    #   The SQL statement to run. Don't include a semicolon (;) at the end
    #   of the SQL statement.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The name of the database schema.
    #
    #   <note markdown="1"> Currently, the `schema` parameter isn't supported.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] parameter_sets
    #   The parameter set for the batch operation.
    #
    #   The SQL statement is executed as many times as the number of
    #   parameter sets provided. To execute a SQL statement with no
    #   parameters, use one of the following options:
    #
    #   * Specify one or more empty parameter sets.
    #
    #   * Use the `ExecuteStatement` operation instead of the
    #     `BatchExecuteStatement` operation.
    #
    #   <note markdown="1"> Array parameters are not supported.
    #
    #    </note>
    #   @return [Array<Array<Types::SqlParameter>>]
    #
    # @!attribute [rw] transaction_id
    #   The identifier of a transaction that was started by using the
    #   `BeginTransaction` operation. Specify the transaction ID of the
    #   transaction that you want to include the SQL statement in.
    #
    #   If the SQL statement is not part of a transaction, don't set this
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/BatchExecuteStatementRequest AWS API Documentation
    #
    class BatchExecuteStatementRequest < Struct.new(
      :resource_arn,
      :secret_arn,
      :sql,
      :database,
      :schema,
      :parameter_sets,
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response elements represent the output of a SQL statement over an
    # array of data.
    #
    # @!attribute [rw] update_results
    #   The execution results of each batch entry.
    #   @return [Array<Types::UpdateResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/BatchExecuteStatementResponse AWS API Documentation
    #
    class BatchExecuteStatementResponse < Struct.new(
      :update_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters represent the input of a request to start a SQL
    # transaction.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The name or ARN of the secret that enables access to the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The name of the database schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/BeginTransactionRequest AWS API Documentation
    #
    class BeginTransactionRequest < Struct.new(
      :resource_arn,
      :secret_arn,
      :database,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response elements represent the output of a request to start a SQL
    # transaction.
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID of the transaction started by the call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/BeginTransactionResponse AWS API Documentation
    #
    class BeginTransactionResponse < Struct.new(
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the metadata for a column.
    #
    # @!attribute [rw] name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the column.
    #   @return [Integer]
    #
    # @!attribute [rw] type_name
    #   The database-specific data type of the column.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The label for the column.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema that owns the table that includes the column.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table that includes the column.
    #   @return [String]
    #
    # @!attribute [rw] is_auto_increment
    #   A value that indicates whether the column increments automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_signed
    #   A value that indicates whether an integer column is signed.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_currency
    #   A value that indicates whether the column contains currency values.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_case_sensitive
    #   A value that indicates whether the column is case-sensitive.
    #   @return [Boolean]
    #
    # @!attribute [rw] nullable
    #   A value that indicates whether the column is nullable.
    #   @return [Integer]
    #
    # @!attribute [rw] precision
    #   The precision value of a decimal number column.
    #   @return [Integer]
    #
    # @!attribute [rw] scale
    #   The scale value of a decimal number column.
    #   @return [Integer]
    #
    # @!attribute [rw] array_base_column_type
    #   The type of the column.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ColumnMetadata AWS API Documentation
    #
    class ColumnMetadata < Struct.new(
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
      :array_base_column_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters represent the input of a commit transaction
    # request.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The name or ARN of the secret that enables access to the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The identifier of the transaction to end and commit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/CommitTransactionRequest AWS API Documentation
    #
    class CommitTransactionRequest < Struct.new(
      :resource_arn,
      :secret_arn,
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response elements represent the output of a commit transaction
    # request.
    #
    # @!attribute [rw] transaction_status
    #   The status of the commit operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/CommitTransactionResponse AWS API Documentation
    #
    class CommitTransactionResponse < Struct.new(
      :transaction_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters represent the input of a request to run one or
    # more SQL statements.
    #
    # @!attribute [rw] db_cluster_or_instance_arn
    #   The ARN of the Aurora Serverless DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] aws_secret_store_arn
    #   The Amazon Resource Name (ARN) of the secret that enables access to
    #   the DB cluster. Enter the database user name and password for the
    #   credentials in the secret.
    #
    #   For information about creating the secret, see [Create a database
    #   secret][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/create_database_secret.html
    #   @return [String]
    #
    # @!attribute [rw] sql_statements
    #   One or more SQL statements to run on the DB cluster.
    #
    #   You can separate SQL statements from each other with a semicolon
    #   (;). Any valid SQL statement is permitted, including data
    #   definition, data manipulation, and commit statements.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The name of the database schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ExecuteSqlRequest AWS API Documentation
    #
    class ExecuteSqlRequest < Struct.new(
      :db_cluster_or_instance_arn,
      :aws_secret_store_arn,
      :sql_statements,
      :database,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response elements represent the output of a request to run one or
    # more SQL statements.
    #
    # @!attribute [rw] sql_statement_results
    #   The results of the SQL statement or statements.
    #   @return [Array<Types::SqlStatementResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ExecuteSqlResponse AWS API Documentation
    #
    class ExecuteSqlResponse < Struct.new(
      :sql_statement_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters represent the input of a request to run a SQL
    # statement against a database.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the secret that enables access to the DB cluster. Enter
    #   the database user name and password for the credentials in the
    #   secret.
    #
    #   For information about creating the secret, see [Create a database
    #   secret][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/create_database_secret.html
    #   @return [String]
    #
    # @!attribute [rw] sql
    #   The SQL statement to run.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The name of the database schema.
    #
    #   <note markdown="1"> Currently, the `schema` parameter isn't supported.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the SQL statement.
    #
    #   <note markdown="1"> Array parameters are not supported.
    #
    #    </note>
    #   @return [Array<Types::SqlParameter>]
    #
    # @!attribute [rw] transaction_id
    #   The identifier of a transaction that was started by using the
    #   `BeginTransaction` operation. Specify the transaction ID of the
    #   transaction that you want to include the SQL statement in.
    #
    #   If the SQL statement is not part of a transaction, don't set this
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] include_result_metadata
    #   A value that indicates whether to include metadata in the results.
    #   @return [Boolean]
    #
    # @!attribute [rw] continue_after_timeout
    #   A value that indicates whether to continue running the statement
    #   after the call times out. By default, the statement stops running
    #   when the call times out.
    #
    #   <note markdown="1"> For DDL statements, we recommend continuing to run the statement
    #   after the call times out. When a DDL statement terminates before it
    #   is finished running, it can result in errors and possibly corrupted
    #   data structures.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] result_set_options
    #   Options that control how the result set is returned.
    #   @return [Types::ResultSetOptions]
    #
    # @!attribute [rw] format_records_as
    #   A value that indicates whether to format the result set as a single
    #   JSON string. This parameter only applies to `SELECT` statements and
    #   is ignored for other types of statements. Allowed values are `NONE`
    #   and `JSON`. The default value is `NONE`. The result is returned in
    #   the `formattedRecords` field.
    #
    #   For usage information about the JSON format for result sets, see
    #   [Using the Data API][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ExecuteStatementRequest AWS API Documentation
    #
    class ExecuteStatementRequest < Struct.new(
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
      :format_records_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response elements represent the output of a request to run a SQL
    # statement against a database.
    #
    # @!attribute [rw] records
    #   The records returned by the SQL statement. This field is blank if
    #   the `formatRecordsAs` parameter is set to `JSON`.
    #   @return [Array<Array<Types::Field>>]
    #
    # @!attribute [rw] column_metadata
    #   Metadata for the columns included in the results. This field is
    #   blank if the `formatRecordsAs` parameter is set to `JSON`.
    #   @return [Array<Types::ColumnMetadata>]
    #
    # @!attribute [rw] number_of_records_updated
    #   The number of records updated by the request.
    #   @return [Integer]
    #
    # @!attribute [rw] generated_fields
    #   Values for fields generated during a DML request.
    #
    #        <note> <p>The <code>generatedFields</code> data isn't supported by Aurora PostgreSQL. To get the values of generated fields, use the <code>RETURNING</code> clause. For more information, see <a href="https://www.postgresql.org/docs/10/dml-returning.html">Returning Data From Modified Rows</a> in the PostgreSQL documentation.</p> </note>
    #   @return [Array<Types::Field>]
    #
    # @!attribute [rw] formatted_records
    #   A string value that represents the result set of a `SELECT`
    #   statement in JSON format. This value is only present when the
    #   `formatRecordsAs` parameter is set to `JSON`.
    #
    #   The size limit for this field is currently 10 MB. If the
    #   JSON-formatted string representing the result set requires more than
    #   10 MB, the call returns an error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ExecuteStatementResponse AWS API Documentation
    #
    class ExecuteStatementResponse < Struct.new(
      :records,
      :column_metadata,
      :number_of_records_updated,
      :generated_fields,
      :formatted_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a value.
    #
    # @note Field is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Field is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Field corresponding to the set member.
    #
    # @!attribute [rw] is_null
    #   A NULL value.
    #   @return [Boolean]
    #
    # @!attribute [rw] boolean_value
    #   A value of Boolean data type.
    #   @return [Boolean]
    #
    # @!attribute [rw] long_value
    #   A value of long data type.
    #   @return [Integer]
    #
    # @!attribute [rw] double_value
    #   A value of double data type.
    #   @return [Float]
    #
    # @!attribute [rw] string_value
    #   A value of string data type.
    #   @return [String]
    #
    # @!attribute [rw] blob_value
    #   A value of BLOB data type.
    #   @return [String]
    #
    # @!attribute [rw] array_value
    #   An array of values.
    #   @return [Types::ArrayValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/Field AWS API Documentation
    #
    class Field < Struct.new(
      :is_null,
      :boolean_value,
      :long_value,
      :double_value,
      :string_value,
      :blob_value,
      :array_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IsNull < Field; end
      class BooleanValue < Field; end
      class LongValue < Field; end
      class DoubleValue < Field; end
      class StringValue < Field; end
      class BlobValue < Field; end
      class ArrayValue < Field; end
      class Unknown < Field; end
    end

    # There are insufficient privileges to make the call.
    #
    # @!attribute [rw] message
    #   The error message returned by this `ForbiddenException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error occurred.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Aws::EmptyStructure; end

    # The `resourceArn`, `secretArn`, or `transactionId` value can't be
    # found.
    #
    # @!attribute [rw] message
    #   The error message returned by this `NotFoundException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A record returned by a call.
    #
    # <note markdown="1"> This data structure is only used with the deprecated `ExecuteSql`
    # operation. Use the `BatchExecuteStatement` or `ExecuteStatement`
    # operation instead.
    #
    #  </note>
    #
    # @!attribute [rw] values
    #   The values returned in the record.
    #   @return [Array<Types::Value>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/Record AWS API Documentation
    #
    class Record < Struct.new(
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result set returned by a SQL statement.
    #
    # <note markdown="1"> This data structure is only used with the deprecated `ExecuteSql`
    # operation. Use the `BatchExecuteStatement` or `ExecuteStatement`
    # operation instead.
    #
    #  </note>
    #
    # @!attribute [rw] result_set_metadata
    #   The result-set metadata in the result set.
    #   @return [Types::ResultSetMetadata]
    #
    # @!attribute [rw] records
    #   The records in the result set.
    #   @return [Array<Types::Record>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ResultFrame AWS API Documentation
    #
    class ResultFrame < Struct.new(
      :result_set_metadata,
      :records)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata of the result set returned by a SQL statement.
    #
    # @!attribute [rw] column_count
    #   The number of columns in the result set.
    #   @return [Integer]
    #
    # @!attribute [rw] column_metadata
    #   The metadata of the columns in the result set.
    #   @return [Array<Types::ColumnMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ResultSetMetadata AWS API Documentation
    #
    class ResultSetMetadata < Struct.new(
      :column_count,
      :column_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options that control how the result set is returned.
    #
    # @!attribute [rw] decimal_return_type
    #   A value that indicates how a field of `DECIMAL` type is represented
    #   in the response. The value of `STRING`, the default, specifies that
    #   it is converted to a String value. The value of `DOUBLE_OR_LONG`
    #   specifies that it is converted to a Long value if its scale is 0, or
    #   to a Double value otherwise.
    #
    #   <note markdown="1"> Conversion to Double or Long can result in roundoff errors due to
    #   precision loss. We recommend converting to String, especially when
    #   working with currency values.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] long_return_type
    #   A value that indicates how a field of `LONG` type is represented.
    #   Allowed values are `LONG` and `STRING`. The default is `LONG`.
    #   Specify `STRING` if the length or precision of numeric values might
    #   cause truncation or rounding errors.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ResultSetOptions AWS API Documentation
    #
    class ResultSetOptions < Struct.new(
      :decimal_return_type,
      :long_return_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters represent the input of a request to perform a
    # rollback of a transaction.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The name or ARN of the secret that enables access to the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The identifier of the transaction to roll back.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/RollbackTransactionRequest AWS API Documentation
    #
    class RollbackTransactionRequest < Struct.new(
      :resource_arn,
      :secret_arn,
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response elements represent the output of a request to perform a
    # rollback of a transaction.
    #
    # @!attribute [rw] transaction_status
    #   The status of the rollback operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/RollbackTransactionResponse AWS API Documentation
    #
    class RollbackTransactionResponse < Struct.new(
      :transaction_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service specified by the `resourceArn` parameter is not available.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ServiceUnavailableError AWS API Documentation
    #
    class ServiceUnavailableError < Aws::EmptyStructure; end

    # A parameter used in a SQL statement.
    #
    # @!attribute [rw] name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the parameter.
    #   @return [Types::Field]
    #
    # @!attribute [rw] type_hint
    #   A hint that specifies the correct object type for data type mapping.
    #   Possible values are as follows:
    #
    #   * `DATE` - The corresponding `String` parameter value is sent as an
    #     object of `DATE` type to the database. The accepted format is
    #     `YYYY-MM-DD`.
    #
    #   * `DECIMAL` - The corresponding `String` parameter value is sent as
    #     an object of `DECIMAL` type to the database.
    #
    #   * `JSON` - The corresponding `String` parameter value is sent as an
    #     object of `JSON` type to the database.
    #
    #   * `TIME` - The corresponding `String` parameter value is sent as an
    #     object of `TIME` type to the database. The accepted format is
    #     `HH:MM:SS[.FFF]`.
    #
    #   * `TIMESTAMP` - The corresponding `String` parameter value is sent
    #     as an object of `TIMESTAMP` type to the database. The accepted
    #     format is `YYYY-MM-DD HH:MM:SS[.FFF]`.
    #
    #   * `UUID` - The corresponding `String` parameter value is sent as an
    #     object of `UUID` type to the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/SqlParameter AWS API Documentation
    #
    class SqlParameter < Struct.new(
      :name,
      :value,
      :type_hint)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a SQL statement.
    #
    #      <note> <p>This data structure is only used with the deprecated <code>ExecuteSql</code> operation. Use the <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> operation instead.</p> </note>
    #
    # @!attribute [rw] result_frame
    #   The result set of the SQL statement.
    #   @return [Types::ResultFrame]
    #
    # @!attribute [rw] number_of_records_updated
    #   The number of records updated by a SQL statement.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/SqlStatementResult AWS API Documentation
    #
    class SqlStatementResult < Struct.new(
      :result_frame,
      :number_of_records_updated)
      SENSITIVE = []
      include Aws::Structure
    end

    # The execution of the SQL statement timed out.
    #
    # @!attribute [rw] message
    #   The error message returned by this `StatementTimeoutException`
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] db_connection_id
    #   The database connection ID that executed the SQL statement.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/StatementTimeoutException AWS API Documentation
    #
    class StatementTimeoutException < Struct.new(
      :message,
      :db_connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure value returned by a call.
    #
    # <note markdown="1"> This data structure is only used with the deprecated `ExecuteSql`
    # operation. Use the `BatchExecuteStatement` or `ExecuteStatement`
    # operation instead.
    #
    #  </note>
    #
    # @!attribute [rw] attributes
    #   The attributes returned in the record.
    #   @return [Array<Types::Value>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/StructValue AWS API Documentation
    #
    class StructValue < Struct.new(
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response elements represent the results of an update.
    #
    # @!attribute [rw] generated_fields
    #   Values for fields generated during the request.
    #   @return [Array<Types::Field>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/UpdateResult AWS API Documentation
    #
    class UpdateResult < Struct.new(
      :generated_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the value of a column.
    #
    #      <note> <p>This data structure is only used with the deprecated <code>ExecuteSql</code> operation. Use the <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> operation instead.</p> </note>
    #
    # @note Value is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Value corresponding to the set member.
    #
    # @!attribute [rw] is_null
    #   A NULL value.
    #   @return [Boolean]
    #
    # @!attribute [rw] bit_value
    #   A value for a column of BIT data type.
    #   @return [Boolean]
    #
    # @!attribute [rw] big_int_value
    #   A value for a column of big integer data type.
    #   @return [Integer]
    #
    # @!attribute [rw] int_value
    #   A value for a column of integer data type.
    #   @return [Integer]
    #
    # @!attribute [rw] double_value
    #   A value for a column of double data type.
    #   @return [Float]
    #
    # @!attribute [rw] real_value
    #   A value for a column of real data type.
    #   @return [Float]
    #
    # @!attribute [rw] string_value
    #   A value for a column of string data type.
    #   @return [String]
    #
    # @!attribute [rw] blob_value
    #   A value for a column of BLOB data type.
    #   @return [String]
    #
    # @!attribute [rw] array_values
    #   An array of column values.
    #   @return [Array<Types::Value>]
    #
    # @!attribute [rw] struct_value
    #   A value for a column of STRUCT data type.
    #   @return [Types::StructValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/Value AWS API Documentation
    #
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
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

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
