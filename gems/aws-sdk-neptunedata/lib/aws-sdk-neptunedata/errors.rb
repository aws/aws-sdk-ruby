# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Neptunedata

  # When Neptunedata returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::Neptunedata::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all Neptunedata errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Neptunedata::Errors::ServiceError
  #       # rescues all Neptunedata API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
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

    extend Aws::Errors::DynamicErrors

    class AccessDeniedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::AccessDeniedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class BadRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::BadRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class BulkLoadIdNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::BulkLoadIdNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      def retryable?
        true
      end
    end

    class CancelledByUserException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::CancelledByUserException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class ClientTimeoutException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::ClientTimeoutException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      def retryable?
        true
      end
    end

    class ConcurrentModificationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::ConcurrentModificationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      def retryable?
        true
      end
    end

    class ConstraintViolationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::ConstraintViolationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      def retryable?
        true
      end
    end

    class ExpiredStreamException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::ExpiredStreamException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class FailureByQueryException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::FailureByQueryException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      def retryable?
        true
      end
    end

    class IllegalArgumentException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::IllegalArgumentException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class InternalFailureException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::InternalFailureException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class InvalidArgumentException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::InvalidArgumentException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class InvalidNumericDataException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::InvalidNumericDataException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class InvalidParameterException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::InvalidParameterException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class LoadUrlAccessDeniedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::LoadUrlAccessDeniedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class MLResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::MLResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class MalformedQueryException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::MalformedQueryException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class MemoryLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::MemoryLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      def retryable?
        true
      end
    end

    class MethodNotAllowedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::MethodNotAllowedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class MissingParameterException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::MissingParameterException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class ParsingException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::ParsingException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class PreconditionsFailedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::PreconditionsFailedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class QueryLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::QueryLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      def retryable?
        true
      end
    end

    class QueryLimitException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::QueryLimitException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class QueryTooLargeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::QueryTooLargeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class ReadOnlyViolationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::ReadOnlyViolationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class S3Exception < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::S3Exception] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      def retryable?
        true
      end
    end

    class ServerShutdownException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::ServerShutdownException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class StatisticsNotAvailableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::StatisticsNotAvailableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class StreamRecordsNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::StreamRecordsNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class ThrottlingException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::ThrottlingException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      def retryable?
        true
      end
    end

    class TimeLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::TimeLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      def retryable?
        true
      end
    end

    class TooManyRequestsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::TooManyRequestsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      def retryable?
        true
      end
    end

    class UnsupportedOperationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptunedata::Types::UnsupportedOperationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def detailed_message
        @data[:detailed_message]
      end

      # @return [String]
      def request_id
        @data[:request_id]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

  end
end
