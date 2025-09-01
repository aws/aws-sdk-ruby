# frozen_string_literal: true

# This is generated code!

module Aws::Pinpoint
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Pinpoint::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Pinpoint::Errors::ServiceError
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
  # * {MethodNotAllowedException}
  # * {NotFoundException}
  # * {PayloadTooLargeException}
  # * {TooManyRequestsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Provides information about an API request or response.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Pinpoint::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message that's returned from the API.</p>
      def message
        @data[:message]
      end

      # <p>The unique identifier for the request or response.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>Provides information about an API request or response.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Pinpoint::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message that's returned from the API.</p>
      def message
        @data[:message]
      end

      # <p>The unique identifier for the request or response.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>Provides information about an API request or response.</p>
    class ForbiddenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Pinpoint::Types::ForbiddenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message that's returned from the API.</p>
      def message
        @data[:message]
      end

      # <p>The unique identifier for the request or response.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>Provides information about an API request or response.</p>
    class InternalServerErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Pinpoint::Types::InternalServerErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message that's returned from the API.</p>
      def message
        @data[:message]
      end

      # <p>The unique identifier for the request or response.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>Provides information about an API request or response.</p>
    class MethodNotAllowedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Pinpoint::Types::MethodNotAllowedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message that's returned from the API.</p>
      def message
        @data[:message]
      end

      # <p>The unique identifier for the request or response.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>Provides information about an API request or response.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Pinpoint::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message that's returned from the API.</p>
      def message
        @data[:message]
      end

      # <p>The unique identifier for the request or response.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>Provides information about an API request or response.</p>
    class PayloadTooLargeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Pinpoint::Types::PayloadTooLargeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message that's returned from the API.</p>
      def message
        @data[:message]
      end

      # <p>The unique identifier for the request or response.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>Provides information about an API request or response.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Pinpoint::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message that's returned from the API.</p>
      def message
        @data[:message]
      end

      # <p>The unique identifier for the request or response.</p>
      def request_id
        @data[:request_id]
      end
    end
  end
end
