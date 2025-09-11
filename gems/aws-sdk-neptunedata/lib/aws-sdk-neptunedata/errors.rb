# frozen_string_literal: true

# This is generated code!

module Aws::Neptunedata
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Neptunedata::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Neptunedata::Errors::ServiceError
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
  # * {BulkLoadIdNotFoundException}
  # * {CancelledByUserException}
  # * {ClientTimeoutException}
  # * {ConcurrentModificationException}
  # * {ConstraintViolationException}
  # * {ExpiredStreamException}
  # * {FailureByQueryException}
  # * {IllegalArgumentException}
  # * {InternalFailureException}
  # * {InvalidArgumentException}
  # * {InvalidNumericDataException}
  # * {InvalidParameterException}
  # * {LoadUrlAccessDeniedException}
  # * {MLResourceNotFoundException}
  # * {MalformedQueryException}
  # * {MemoryLimitExceededException}
  # * {MethodNotAllowedException}
  # * {MissingParameterException}
  # * {ParsingException}
  # * {PreconditionsFailedException}
  # * {QueryLimitExceededException}
  # * {QueryLimitException}
  # * {QueryTooLargeException}
  # * {ReadOnlyViolationException}
  # * {S3Exception}
  # * {ServerShutdownException}
  # * {StatisticsNotAvailableException}
  # * {StreamRecordsNotFoundException}
  # * {ThrottlingException}
  # * {TimeLimitExceededException}
  # * {TooManyRequestsException}
  # * {UnsupportedOperationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Raised in case of an authentication or authorization failure.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when a request is submitted that cannot be processed.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the bad request.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when a specified bulk-load job ID cannot be found.</p>
    class BulkLoadIdNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::BulkLoadIdNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The bulk-load job ID that could not be found.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end

      def retryable?
        true
      end
    end

    # <p>Raised when a user cancelled a request.</p>
    class CancelledByUserException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::CancelledByUserException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when a request timed out in the client.</p>
    class ClientTimeoutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::ClientTimeoutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end

      def retryable?
        true
      end
    end

    # <p>Raised when a request attempts to modify data that is concurrently being modified by another process.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end

      def retryable?
        true
      end
    end

    # <p>Raised when a value in a request field did not satisfy required constraints.</p>
    class ConstraintViolationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::ConstraintViolationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end

      def retryable?
        true
      end
    end

    # <p>Raised when a request attempts to access an stream that has expired.</p>
    class ExpiredStreamException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::ExpiredStreamException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when a request fails.</p>
    class FailureByQueryException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::FailureByQueryException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end

      def retryable?
        true
      end
    end

    # <p>Raised when an argument in a request is not supported.</p>
    class IllegalArgumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::IllegalArgumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when the processing of the request failed unexpectedly.</p>
    class InternalFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::InternalFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when an argument in a request has an invalid value.</p>
    class InvalidArgumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::InvalidArgumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when invalid numerical data is encountered when servicing a request.</p>
    class InvalidNumericDataException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::InvalidNumericDataException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when a parameter value is not valid.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request that includes an invalid parameter.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when access is denied to a specified load URL.</p>
    class LoadUrlAccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::LoadUrlAccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when a specified machine-learning resource could not be found.</p>
    class MLResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::MLResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when a query is submitted that is syntactically incorrect or does not pass additional validation.</p>
    class MalformedQueryException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::MalformedQueryException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the malformed query request.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when a request fails because of insufficient memory resources. The request can be retried.</p>
    class MemoryLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::MemoryLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request that failed.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end

      def retryable?
        true
      end
    end

    # <p>Raised when the HTTP method used by a request is not supported by the endpoint being used.</p>
    class MethodNotAllowedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::MethodNotAllowedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when a required parameter is missing.</p>
    class MissingParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::MissingParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in which the parameter is missing.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when a parsing issue is encountered.</p>
    class ParsingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::ParsingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when a precondition for processing a request is not satisfied.</p>
    class PreconditionsFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::PreconditionsFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when the number of active queries exceeds what the server can process. The query in question can be retried when the system is less busy.</p>
    class QueryLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::QueryLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request which exceeded the limit.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end

      def retryable?
        true
      end
    end

    # <p>Raised when the size of a query exceeds the system limit.</p>
    class QueryLimitException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::QueryLimitException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request that exceeded the limit.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when the body of a query is too large.</p>
    class QueryTooLargeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::QueryTooLargeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request that is too large.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when a request attempts to write to a read-only resource.</p>
    class ReadOnlyViolationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::ReadOnlyViolationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in which the parameter is missing.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when there is a problem accessing Amazon S3.</p>
    class S3Exception < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::S3Exception] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end

      def retryable?
        true
      end
    end

    # <p>Raised when the server shuts down while processing a request.</p>
    class ServerShutdownException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::ServerShutdownException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when statistics needed to satisfy a request are not available.</p>
    class StatisticsNotAvailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::StatisticsNotAvailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when stream records requested by a query cannot be found.</p>
    class StreamRecordsNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::StreamRecordsNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end

    # <p>Raised when the rate of requests exceeds the maximum throughput. Requests can be retried after encountering this exception.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request that could not be processed for this reason.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end

      def retryable?
        true
      end
    end

    # <p>Raised when the an operation exceeds the time limit allowed for it.</p>
    class TimeLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::TimeLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request that could not be processed for this reason.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end

      def retryable?
        true
      end
    end

    # <p>Raised when the number of requests being processed exceeds the limit.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request that could not be processed for this reason.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end

      def retryable?
        true
      end
    end

    # <p>Raised when a request attempts to initiate an operation that is not supported.</p>
    class UnsupportedOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptunedata::Types::UnsupportedOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message describing the problem.</p>
      def detailed_message
        @data[:detailed_message]
      end

      # <p>The ID of the request in question.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The HTTP status code returned with the exception.</p>
      def code
        @data[:code]
      end
    end
  end
end
