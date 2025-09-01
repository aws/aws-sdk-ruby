# frozen_string_literal: true

# This is generated code!

module Aws::QLDBSession
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::QLDBSession::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::QLDBSession::Errors::ServiceError
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
  # * {BadRequestException}
  # * {CapacityExceededException}
  # * {InvalidSessionException}
  # * {LimitExceededException}
  # * {OccConflictException}
  # * {RateExceededException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Returned if the request is malformed or contains an error such as an invalid parameter
    #          value or a missing required parameter.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QLDBSession::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>Returned when the request exceeds the processing capacity of the ledger.</p>
    class CapacityExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QLDBSession::Types::CapacityExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the session doesn't exist anymore because it timed out or expired.</p>
    class InvalidSessionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QLDBSession::Types::InvalidSessionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>Returned if a resource limit such as number of active sessions is exceeded.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QLDBSession::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned when a transaction cannot be written to the journal due to a failure in the
    #          verification phase of <i>optimistic concurrency control</i> (OCC).</p>
    class OccConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QLDBSession::Types::OccConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned when the rate of requests exceeds the allowed throughput.</p>
    class RateExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QLDBSession::Types::RateExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
