# frozen_string_literal: true

# This is generated code!

module Aws::RedshiftData
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::RedshiftData::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::RedshiftData::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {ActiveSessionsExceededException}
  # * {ActiveStatementsExceededException}
  # * {BatchExecuteStatementException}
  # * {DatabaseConnectionException}
  # * {ExecuteStatementException}
  # * {InternalServerException}
  # * {QueryTimeoutException}
  # * {ResourceNotFoundException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The Amazon Redshift Data API operation failed because the maximum number of active sessions exceeded.</p>
    class ActiveSessionsExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RedshiftData::Types::ActiveSessionsExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of active statements exceeds the limit.</p>
    class ActiveStatementsExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RedshiftData::Types::ActiveStatementsExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An SQL statement encountered an environmental error while running.</p>
    class BatchExecuteStatementException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RedshiftData::Types::BatchExecuteStatementException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>Statement identifier of the exception.</p>
      def statement_id
        @data[:statement_id]
      end
    end

    # <p>Connection to a database failed.</p>
    class DatabaseConnectionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RedshiftData::Types::DatabaseConnectionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The SQL statement encountered an environmental error while running.</p>
    class ExecuteStatementException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RedshiftData::Types::ExecuteStatementException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end

      # <p>Statement identifier of the exception.</p>
      def statement_id
        @data[:statement_id]
      end
    end

    # <p>The Amazon Redshift Data API operation failed due to invalid input. </p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RedshiftData::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The Amazon Redshift Data API operation failed due to timeout.</p>
    class QueryTimeoutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RedshiftData::Types::QueryTimeoutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The Amazon Redshift Data API operation failed due to a missing resource. </p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RedshiftData::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end

      # <p>Resource identifier associated with the exception.</p>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>The Amazon Redshift Data API operation failed due to invalid input. </p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RedshiftData::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end
    end
  end
end
