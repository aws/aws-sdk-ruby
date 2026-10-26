# frozen_string_literal: true

# This is generated code!

module Aws::RDSData
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::RDSData::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::RDSData::Errors::ServiceError
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
  # * {AccessDeniedException}
  # * {BadRequestException}
  # * {DatabaseErrorException}
  # * {DatabaseNotFoundException}
  # * {DatabaseResumingException}
  # * {DatabaseUnavailableException}
  # * {ForbiddenException}
  # * {HttpEndpointNotEnabledException}
  # * {InternalServerErrorException}
  # * {InvalidResourceStateException}
  # * {InvalidSecretException}
  # * {NotFoundException}
  # * {SecretsErrorException}
  # * {ServiceUnavailableError}
  # * {StatementTimeoutException}
  # * {TransactionNotFoundException}
  # * {UnsupportedResultException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You don't have sufficient access to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There is an error in the call or in a SQL statement. This exception is deprecated.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message returned by this <code>BadRequestException</code> error.</p>
      def message
        @data[:message]
      end
    end

    # <p>There was an error in processing the SQL statement.</p>
    class DatabaseErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::DatabaseErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The DB cluster doesn't have a DB instance.</p>
    class DatabaseNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::DatabaseNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A request was cancelled because the Aurora Serverless DB instance was paused. The Data API request automatically resumes the DB instance. Wait a few seconds and try again.</p>
    class DatabaseResumingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::DatabaseResumingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The writer instance in the DB cluster isn't available.</p>
    class DatabaseUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::DatabaseUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>There are insufficient privileges to make the call.</p>
    class ForbiddenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::ForbiddenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message returned by this <code>ForbiddenException</code> error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The HTTP endpoint for using RDS Data API isn't enabled for the DB cluster.</p>
    class HttpEndpointNotEnabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::HttpEndpointNotEnabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An internal error occurred.</p>
    class InternalServerErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::InternalServerErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>The resource is in an invalid state.</p>
    class InvalidResourceStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::InvalidResourceStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The Secrets Manager secret used with the request isn't valid.</p>
    class InvalidSecretException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::InvalidSecretException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>resourceArn</code>, <code>secretArn</code>, or <code>transactionId</code> value can't be found.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message returned by this <code>NotFoundException</code> error.</p>
      def message
        @data[:message]
      end
    end

    # <p>There was a problem with the Secrets Manager secret used with the request, caused by one of the following conditions:</p> <ul> <li> <p>RDS Data API timed out retrieving the secret.</p> </li> <li> <p>The secret provided wasn't found.</p> </li> <li> <p>The secret couldn't be decrypted.</p> </li> </ul>
    class SecretsErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::SecretsErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The service specified by the <code>resourceArn</code> parameter isn't available.</p>
    class ServiceUnavailableError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::ServiceUnavailableError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>The execution of the SQL statement timed out.</p>
    class StatementTimeoutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::StatementTimeoutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message returned by this <code>StatementTimeoutException</code> error.</p>
      def message
        @data[:message]
      end

      # <p>The database connection ID that executed the SQL statement.</p>
      def db_connection_id
        @data[:db_connection_id]
      end
    end

    # <p>The transaction ID wasn't found.</p>
    class TransactionNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::TransactionNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There was a problem with the result because of one of the following conditions:</p> <ul> <li> <p>It contained an unsupported data type.</p> </li> <li> <p>It contained a multidimensional array.</p> </li> <li> <p>The size was too large.</p> </li> </ul>
    class UnsupportedResultException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDSData::Types::UnsupportedResultException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
