# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDSDataService
  module Types

    # Contains an array.
    #
    # @note When making an API call, you may pass ArrayValue
    #   data as a hash:
    #
    #       {
    #         array_values: [
    #           {
    #             array_values: {
    #               # recursive ArrayOfArray
    #             },
    #             boolean_values: [false],
    #             double_values: [1.0],
    #             long_values: [1],
    #             string_values: ["String"],
    #           },
    #         ],
    #         boolean_values: [false],
    #         double_values: [1.0],
    #         long_values: [1],
    #         string_values: ["String"],
    #       }
    #
    # @!attribute [rw] array_values
    #   An array of arrays.
    #   @return [Array<Types::ArrayValue>]
    #
    # @!attribute [rw] boolean_values
    #   An array of Boolean values.
    #   @return [Array<Boolean>]
    #
    # @!attribute [rw] double_values
    #   An array of integers.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] long_values
    #   An array of floating point numbers.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] string_values
    #   An array of strings.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ArrayValue AWS API Documentation
    #
    class ArrayValue < Struct.new(
      :array_values,
      :boolean_values,
      :double_values,
      :long_values,
      :string_values)
      SENSITIVE = []
      include Aws::Structure
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
    # @note When making an API call, you may pass BatchExecuteStatementRequest
    #   data as a hash:
    #
    #       {
    #         database: "DbName",
    #         parameter_sets: [
    #           [
    #             {
    #               name: "ParameterName",
    #               type_hint: "DATE", # accepts DATE, DECIMAL, TIME, TIMESTAMP
    #               value: {
    #                 array_value: {
    #                   array_values: [
    #                     {
    #                       # recursive ArrayValue
    #                     },
    #                   ],
    #                   boolean_values: [false],
    #                   double_values: [1.0],
    #                   long_values: [1],
    #                   string_values: ["String"],
    #                 },
    #                 blob_value: "data",
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 is_null: false,
    #                 long_value: 1,
    #                 string_value: "String",
    #               },
    #             },
    #           ],
    #         ],
    #         resource_arn: "Arn", # required
    #         schema: "DbName",
    #         secret_arn: "Arn", # required
    #         sql: "SqlStatement", # required
    #         transaction_id: "Id",
    #       }
    #
    # @!attribute [rw] database
    #   The name of the database.
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
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The name of the database schema.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The name or ARN of the secret that enables access to the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] sql
    #   The SQL statement to run.
    #   @return [String]
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
      :database,
      :parameter_sets,
      :resource_arn,
      :schema,
      :secret_arn,
      :sql,
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
    # @note When making an API call, you may pass BeginTransactionRequest
    #   data as a hash:
    #
    #       {
    #         database: "DbName",
    #         resource_arn: "Arn", # required
    #         schema: "DbName",
    #         secret_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] database
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The name of the database schema.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The name or ARN of the secret that enables access to the DB cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/BeginTransactionRequest AWS API Documentation
    #
    class BeginTransactionRequest < Struct.new(
      :database,
      :resource_arn,
      :schema,
      :secret_arn)
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
    # @!attribute [rw] array_base_column_type
    #   The type of the column.
    #   @return [Integer]
    #
    # @!attribute [rw] is_auto_increment
    #   A value that indicates whether the column increments automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_case_sensitive
    #   A value that indicates whether the column is case-sensitive.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_currency
    #   A value that indicates whether the column contains currency values.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_signed
    #   A value that indicates whether an integer column is signed.
    #   @return [Boolean]
    #
    # @!attribute [rw] label
    #   The label for the column.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the column.
    #   @return [String]
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
    # @!attribute [rw] schema_name
    #   The name of the schema that owns the table that includes the column.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table that includes the column.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ColumnMetadata AWS API Documentation
    #
    class ColumnMetadata < Struct.new(
      :array_base_column_type,
      :is_auto_increment,
      :is_case_sensitive,
      :is_currency,
      :is_signed,
      :label,
      :name,
      :nullable,
      :precision,
      :scale,
      :schema_name,
      :table_name,
      :type,
      :type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters represent the input of a commit transaction
    # request.
    #
    # @note When making an API call, you may pass CommitTransactionRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         secret_arn: "Arn", # required
    #         transaction_id: "Id", # required
    #       }
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
    # @note When making an API call, you may pass ExecuteSqlRequest
    #   data as a hash:
    #
    #       {
    #         aws_secret_store_arn: "Arn", # required
    #         database: "DbName",
    #         db_cluster_or_instance_arn: "Arn", # required
    #         schema: "DbName",
    #         sql_statements: "SqlStatement", # required
    #       }
    #
    # @!attribute [rw] aws_secret_store_arn
    #   The Amazon Resource Name (ARN) of the secret that enables access to
    #   the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_or_instance_arn
    #   The ARN of the Aurora Serverless DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The name of the database schema.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ExecuteSqlRequest AWS API Documentation
    #
    class ExecuteSqlRequest < Struct.new(
      :aws_secret_store_arn,
      :database,
      :db_cluster_or_instance_arn,
      :schema,
      :sql_statements)
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
    # @note When making an API call, you may pass ExecuteStatementRequest
    #   data as a hash:
    #
    #       {
    #         continue_after_timeout: false,
    #         database: "DbName",
    #         include_result_metadata: false,
    #         parameters: [
    #           {
    #             name: "ParameterName",
    #             type_hint: "DATE", # accepts DATE, DECIMAL, TIME, TIMESTAMP
    #             value: {
    #               array_value: {
    #                 array_values: [
    #                   {
    #                     # recursive ArrayValue
    #                   },
    #                 ],
    #                 boolean_values: [false],
    #                 double_values: [1.0],
    #                 long_values: [1],
    #                 string_values: ["String"],
    #               },
    #               blob_value: "data",
    #               boolean_value: false,
    #               double_value: 1.0,
    #               is_null: false,
    #               long_value: 1,
    #               string_value: "String",
    #             },
    #           },
    #         ],
    #         resource_arn: "Arn", # required
    #         result_set_options: {
    #           decimal_return_type: "DOUBLE_OR_LONG", # accepts DOUBLE_OR_LONG, STRING
    #         },
    #         schema: "DbName",
    #         secret_arn: "Arn", # required
    #         sql: "SqlStatement", # required
    #         transaction_id: "Id",
    #       }
    #
    # @!attribute [rw] continue_after_timeout
    #   A value that indicates whether to continue running the statement
    #   after the call times out. By default, the statement stops running
    #   when the call times out.
    #
    #   For DDL statements, we recommend continuing to run the statement
    #   after the call times out. When a DDL statement terminates before it
    #   is finished running, it can result in errors and possibly corrupted
    #   data structures.
    #   @return [Boolean]
    #
    # @!attribute [rw] database
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] include_result_metadata
    #   A value that indicates whether to include metadata in the results.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   The parameters for the SQL statement.
    #
    #   <note markdown="1"> Array parameters are not supported.
    #
    #    </note>
    #   @return [Array<Types::SqlParameter>]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] result_set_options
    #   Options that control how the result set is returned.
    #   @return [Types::ResultSetOptions]
    #
    # @!attribute [rw] schema
    #   The name of the database schema.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The name or ARN of the secret that enables access to the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] sql
    #   The SQL statement to run.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ExecuteStatementRequest AWS API Documentation
    #
    class ExecuteStatementRequest < Struct.new(
      :continue_after_timeout,
      :database,
      :include_result_metadata,
      :parameters,
      :resource_arn,
      :result_set_options,
      :schema,
      :secret_arn,
      :sql,
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response elements represent the output of a request to run a SQL
    # statement against a database.
    #
    # @!attribute [rw] column_metadata
    #   Metadata for the columns included in the results.
    #   @return [Array<Types::ColumnMetadata>]
    #
    # @!attribute [rw] generated_fields
    #   Values for fields generated during the request.
    #
    #        <note> <p>The <code>generatedFields</code> data isn't supported by Aurora PostgreSQL. To get the values of generated fields, use the <code>RETURNING</code> clause. For more information, see <a href="https://www.postgresql.org/docs/10/dml-returning.html">Returning Data From Modified Rows</a> in the PostgreSQL documentation.</p> </note>
    #   @return [Array<Types::Field>]
    #
    # @!attribute [rw] number_of_records_updated
    #   The number of records updated by the request.
    #   @return [Integer]
    #
    # @!attribute [rw] records
    #   The records returned by the SQL statement.
    #   @return [Array<Array<Types::Field>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ExecuteStatementResponse AWS API Documentation
    #
    class ExecuteStatementResponse < Struct.new(
      :column_metadata,
      :generated_fields,
      :number_of_records_updated,
      :records)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a value.
    #
    # @note When making an API call, you may pass Field
    #   data as a hash:
    #
    #       {
    #         array_value: {
    #           array_values: [
    #             {
    #               # recursive ArrayValue
    #             },
    #           ],
    #           boolean_values: [false],
    #           double_values: [1.0],
    #           long_values: [1],
    #           string_values: ["String"],
    #         },
    #         blob_value: "data",
    #         boolean_value: false,
    #         double_value: 1.0,
    #         is_null: false,
    #         long_value: 1,
    #         string_value: "String",
    #       }
    #
    # @!attribute [rw] array_value
    #   An array of values.
    #   @return [Types::ArrayValue]
    #
    # @!attribute [rw] blob_value
    #   A value of BLOB data type.
    #   @return [String]
    #
    # @!attribute [rw] boolean_value
    #   A value of Boolean data type.
    #   @return [Boolean]
    #
    # @!attribute [rw] double_value
    #   A value of double data type.
    #   @return [Float]
    #
    # @!attribute [rw] is_null
    #   A NULL value.
    #   @return [Boolean]
    #
    # @!attribute [rw] long_value
    #   A value of long data type.
    #   @return [Integer]
    #
    # @!attribute [rw] string_value
    #   A value of string data type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/Field AWS API Documentation
    #
    class Field < Struct.new(
      :array_value,
      :blob_value,
      :boolean_value,
      :double_value,
      :is_null,
      :long_value,
      :string_value)
      SENSITIVE = []
      include Aws::Structure
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
    # @!attribute [rw] records
    #   The records in the result set.
    #   @return [Array<Types::Record>]
    #
    # @!attribute [rw] result_set_metadata
    #   The result-set metadata in the result set.
    #   @return [Types::ResultSetMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ResultFrame AWS API Documentation
    #
    class ResultFrame < Struct.new(
      :records,
      :result_set_metadata)
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
    # @note When making an API call, you may pass ResultSetOptions
    #   data as a hash:
    #
    #       {
    #         decimal_return_type: "DOUBLE_OR_LONG", # accepts DOUBLE_OR_LONG, STRING
    #       }
    #
    # @!attribute [rw] decimal_return_type
    #   A value that indicates how a field of `DECIMAL` type is represented
    #   in the response. The value of `STRING`, the default, specifies that
    #   it is converted to a String value. The value of `DOUBLE_OR_LONG`
    #   specifies that it is converted to a Long value if its scale is 0, or
    #   to a Double value otherwise.
    #
    #   Conversion to Double or Long can result in roundoff errors due to
    #   precision loss. We recommend converting to String, especially when
    #   working with currency values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ResultSetOptions AWS API Documentation
    #
    class ResultSetOptions < Struct.new(
      :decimal_return_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters represent the input of a request to perform a
    # rollback of a transaction.
    #
    # @note When making an API call, you may pass RollbackTransactionRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         secret_arn: "Arn", # required
    #         transaction_id: "Id", # required
    #       }
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
    # @note When making an API call, you may pass SqlParameter
    #   data as a hash:
    #
    #       {
    #         name: "ParameterName",
    #         type_hint: "DATE", # accepts DATE, DECIMAL, TIME, TIMESTAMP
    #         value: {
    #           array_value: {
    #             array_values: [
    #               {
    #                 # recursive ArrayValue
    #               },
    #             ],
    #             boolean_values: [false],
    #             double_values: [1.0],
    #             long_values: [1],
    #             string_values: ["String"],
    #           },
    #           blob_value: "data",
    #           boolean_value: false,
    #           double_value: 1.0,
    #           is_null: false,
    #           long_value: 1,
    #           string_value: "String",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] type_hint
    #   A hint that specifies the correct object type for data type mapping.
    #
    #   **Values:**
    #
    #   * `DECIMAL` - The corresponding `String` parameter value is sent as
    #     an object of `DECIMAL` type to the database.
    #
    #   * `TIMESTAMP` - The corresponding `String` parameter value is sent
    #     as an object of `TIMESTAMP` type to the database. The accepted
    #     format is `YYYY-MM-DD HH:MM:SS[.FFF]`.
    #
    #   * `TIME` - The corresponding `String` parameter value is sent as an
    #     object of `TIME` type to the database. The accepted format is
    #     `HH:MM:SS[.FFF]`.
    #
    #   * `DATE` - The corresponding `String` parameter value is sent as an
    #     object of `DATE` type to the database. The accepted format is
    #     `YYYY-MM-DD`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the parameter.
    #   @return [Types::Field]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/SqlParameter AWS API Documentation
    #
    class SqlParameter < Struct.new(
      :name,
      :type_hint,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a SQL statement.
    #
    #      <important> <p>This data type is deprecated.</p> </important>
    #
    # @!attribute [rw] number_of_records_updated
    #   The number of records updated by a SQL statement.
    #   @return [Integer]
    #
    # @!attribute [rw] result_frame
    #   The result set of the SQL statement.
    #   @return [Types::ResultFrame]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/SqlStatementResult AWS API Documentation
    #
    class SqlStatementResult < Struct.new(
      :number_of_records_updated,
      :result_frame)
      SENSITIVE = []
      include Aws::Structure
    end

    # The execution of the SQL statement timed out.
    #
    # @!attribute [rw] db_connection_id
    #   The database connection ID that executed the SQL statement.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The error message returned by this `StatementTimeoutException`
    #   error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/StatementTimeoutException AWS API Documentation
    #
    class StatementTimeoutException < Struct.new(
      :db_connection_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure value returned by a call.
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
    #      <important> <p>This data type is deprecated.</p> </important>
    #
    # @!attribute [rw] array_values
    #   An array of column values.
    #   @return [Array<Types::Value>]
    #
    # @!attribute [rw] big_int_value
    #   A value for a column of big integer data type.
    #   @return [Integer]
    #
    # @!attribute [rw] bit_value
    #   A value for a column of BIT data type.
    #   @return [Boolean]
    #
    # @!attribute [rw] blob_value
    #   A value for a column of BLOB data type.
    #   @return [String]
    #
    # @!attribute [rw] double_value
    #   A value for a column of double data type.
    #   @return [Float]
    #
    # @!attribute [rw] int_value
    #   A value for a column of integer data type.
    #   @return [Integer]
    #
    # @!attribute [rw] is_null
    #   A NULL value.
    #   @return [Boolean]
    #
    # @!attribute [rw] real_value
    #   A value for a column of real data type.
    #   @return [Float]
    #
    # @!attribute [rw] string_value
    #   A value for a column of string data type.
    #   @return [String]
    #
    # @!attribute [rw] struct_value
    #   A value for a column of STRUCT data type.
    #   @return [Types::StructValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/Value AWS API Documentation
    #
    class Value < Struct.new(
      :array_values,
      :big_int_value,
      :bit_value,
      :blob_value,
      :double_value,
      :int_value,
      :is_null,
      :real_value,
      :string_value,
      :struct_value)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
