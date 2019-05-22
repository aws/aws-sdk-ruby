# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDSDataService
  module Types

    # Access denied exception
    #
    # @!attribute [rw] message
    #   Error message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Column value
    #
    # @!attribute [rw] array_values
    #   Arbitrarily nested arrays
    #   @return [Array<Types::Value>]
    #
    # @!attribute [rw] big_int_value
    #   Long value
    #   @return [Integer]
    #
    # @!attribute [rw] bit_value
    #   Bit value
    #   @return [Boolean]
    #
    # @!attribute [rw] blob_value
    #   Blob value
    #   @return [String]
    #
    # @!attribute [rw] double_value
    #   Double value
    #   @return [Float]
    #
    # @!attribute [rw] int_value
    #   Integer value
    #   @return [Integer]
    #
    # @!attribute [rw] is_null
    #   Is column null
    #   @return [Boolean]
    #
    # @!attribute [rw] real_value
    #   Float value
    #   @return [Float]
    #
    # @!attribute [rw] string_value
    #   String value
    #   @return [String]
    #
    # @!attribute [rw] struct_value
    #   Struct or UDT
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
      include Aws::Structure
    end

    # Result Frame
    #
    # @!attribute [rw] records
    #   ResultSet Metadata.
    #   @return [Array<Types::Record>]
    #
    # @!attribute [rw] result_set_metadata
    #   ResultSet Metadata.
    #   @return [Types::ResultSetMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ResultFrame AWS API Documentation
    #
    class ResultFrame < Struct.new(
      :records,
      :result_set_metadata)
      include Aws::Structure
    end

    # Execute SQL response
    #
    # @!attribute [rw] sql_statement_results
    #   Results returned by executing the sql statement(s)
    #   @return [Array<Types::SqlStatementResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ExecuteSqlResponse AWS API Documentation
    #
    class ExecuteSqlResponse < Struct.new(
      :sql_statement_results)
      include Aws::Structure
    end

    # SQL statement execution result
    #
    # @!attribute [rw] number_of_records_updated
    #   Number of rows updated.
    #   @return [Integer]
    #
    # @!attribute [rw] result_frame
    #   ResultFrame returned by executing the sql statement
    #   @return [Types::ResultFrame]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/SqlStatementResult AWS API Documentation
    #
    class SqlStatementResult < Struct.new(
      :number_of_records_updated,
      :result_frame)
      include Aws::Structure
    end

    # List of columns and their types.
    #
    # @!attribute [rw] column_count
    #   Number of columns
    #   @return [Integer]
    #
    # @!attribute [rw] column_metadata
    #   List of columns and their types
    #   @return [Array<Types::ColumnMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ResultSetMetadata AWS API Documentation
    #
    class ResultSetMetadata < Struct.new(
      :column_count,
      :column_metadata)
      include Aws::Structure
    end

    # Execute SQL Request
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
    #   ARN of the db credentials in AWS Secret Store or the friendly secret
    #   name
    #   @return [String]
    #
    # @!attribute [rw] database
    #   Target DB name
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_or_instance_arn
    #   ARN of the target db cluster or instance
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   Target Schema name
    #   @return [String]
    #
    # @!attribute [rw] sql_statements
    #   SQL statement(s) to be executed. Statements can be chained by using
    #   semicolons
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
      include Aws::Structure
    end

    # User Defined Type
    #
    # @!attribute [rw] attributes
    #   Struct or UDT
    #   @return [Array<Types::Value>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/StructValue AWS API Documentation
    #
    class StructValue < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # Invalid Request exception
    #
    # @!attribute [rw] message
    #   Error message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Column Metadata
    #
    # @!attribute [rw] array_base_column_type
    #   Homogenous array base SQL type from java.sql.Types.
    #   @return [Integer]
    #
    # @!attribute [rw] is_auto_increment
    #   Whether the designated column is automatically numbered
    #   @return [Boolean]
    #
    # @!attribute [rw] is_case_sensitive
    #   Whether values in the designated column's case matters
    #   @return [Boolean]
    #
    # @!attribute [rw] is_currency
    #   Whether values in the designated column is a cash value
    #   @return [Boolean]
    #
    # @!attribute [rw] is_signed
    #   Whether values in the designated column are signed numbers
    #   @return [Boolean]
    #
    # @!attribute [rw] label
    #   Usually specified by the SQL AS. If not specified, return column
    #   name.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the column.
    #   @return [String]
    #
    # @!attribute [rw] nullable
    #   Indicates the nullability of values in the designated column. One of
    #   columnNoNulls (0), columnNullable (1), columnNullableUnknown (2)
    #   @return [Integer]
    #
    # @!attribute [rw] precision
    #   Get the designated column's specified column size.For numeric data,
    #   this is the maximum precision. For character data, this is the
    #   length in characters. For datetime datatypes, this is the length in
    #   characters of the String representation (assuming the maximum
    #   allowed precision of the fractional seconds component). For binary
    #   data, this is the length in bytes. For the ROWID datatype, this is
    #   the length in bytes. 0 is returned for data types where the column
    #   size is not applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] scale
    #   Designated column's number of digits to right of the decimal point.
    #   0 is returned for data types where the scale is not applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] schema_name
    #   Designated column's table's schema
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   Designated column's table name
    #   @return [String]
    #
    # @!attribute [rw] type
    #   SQL type from java.sql.Types.
    #   @return [Integer]
    #
    # @!attribute [rw] type_name
    #   Database-specific type name.
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
      include Aws::Structure
    end

    # Row or Record
    #
    # @!attribute [rw] values
    #   Record
    #   @return [Array<Types::Value>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/Record AWS API Documentation
    #
    class Record < Struct.new(
      :values)
      include Aws::Structure
    end

  end
end
