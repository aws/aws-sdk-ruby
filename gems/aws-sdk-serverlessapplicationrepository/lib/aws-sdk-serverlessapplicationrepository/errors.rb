# frozen_string_literal: true

# This is generated code!

module Aws::ServerlessApplicationRepository
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ServerlessApplicationRepository::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ServerlessApplicationRepository::Errors::ServiceError
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
  # * {ForbiddenException}
  # * {InternalServerErrorException}
  # * {NotFoundException}
  # * {TooManyRequestsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>One of the parameters in the request is invalid.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServerlessApplicationRepository::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>400</p>
      def error_code
        @data[:error_code]
      end

      # <p>One of the parameters in the request is invalid.</p>
      def message
        @data[:message]
      end
    end

    # <p>The resource already exists.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServerlessApplicationRepository::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>409</p>
      def error_code
        @data[:error_code]
      end

      # <p>The resource already exists.</p>
      def message
        @data[:message]
      end
    end

    # <p>The client is not authenticated.</p>
    class ForbiddenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServerlessApplicationRepository::Types::ForbiddenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>403</p>
      def error_code
        @data[:error_code]
      end

      # <p>The client is not authenticated.</p>
      def message
        @data[:message]
      end
    end

    # <p>The AWS Serverless Application Repository service encountered an internal error.</p>
    class InternalServerErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServerlessApplicationRepository::Types::InternalServerErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>500</p>
      def error_code
        @data[:error_code]
      end

      # <p>The AWS Serverless Application Repository service encountered an internal error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServerlessApplicationRepository::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>404</p>
      def error_code
        @data[:error_code]
      end

      # <p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>
      def message
        @data[:message]
      end
    end

    # <p>The client is sending more than the allowed number of requests per unit of time.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServerlessApplicationRepository::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>429</p>
      def error_code
        @data[:error_code]
      end

      # <p>The client is sending more than the allowed number of requests per unit of time.</p>
      def message
        @data[:message]
      end
    end
  end
end
