# frozen_string_literal: true

# This is generated code!

module Aws::APIGateway
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::APIGateway::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::APIGateway::Errors::ServiceError
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
  # * {ConflictException}
  # * {LimitExceededException}
  # * {NotFoundException}
  # * {ServiceUnavailableException}
  # * {TooManyRequestsException}
  # * {UnauthorizedException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The submitted request is not valid, for example, the input is incomplete or incorrect. See the accompanying error message for details.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::APIGateway::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request configuration has conflicts. For details, see the accompanying error message.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::APIGateway::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request exceeded the rate limit. Retry after the specified time period.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::APIGateway::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested resource is not found. Make sure that the request URI is correct.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::APIGateway::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested service is not available. For details see the accompanying error message. Retry after the specified time period.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::APIGateway::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def message
        @data[:message]
      end
    end

    # <p>The request has reached its throttling limit. Retry after the specified time period.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::APIGateway::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def message
        @data[:message]
      end
    end

    # <p>The request is denied because the caller has insufficient permissions.</p>
    class UnauthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::APIGateway::Types::UnauthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
