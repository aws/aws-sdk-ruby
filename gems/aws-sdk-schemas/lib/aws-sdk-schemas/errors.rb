# frozen_string_literal: true

# This is generated code!

module Aws::Schemas
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Schemas::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Schemas::Errors::ServiceError
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
  # * {GoneException}
  # * {InternalServerErrorException}
  # * {NotFoundException}
  # * {PreconditionFailedException}
  # * {ServiceUnavailableException}
  # * {TooManyRequestsException}
  # * {UnauthorizedException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # Error class for BadRequestException.
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Schemas::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code.</p>
      def code
        @data[:code]
      end

      # <p>The message string of the error output.</p>
      def message
        @data[:message]
      end
    end

    # Error class for ConflictException.
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Schemas::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code.</p>
      def code
        @data[:code]
      end

      # <p>The message string of the error output.</p>
      def message
        @data[:message]
      end
    end

    # Error class for ForbiddenException.
    class ForbiddenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Schemas::Types::ForbiddenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code.</p>
      def code
        @data[:code]
      end

      # <p>The message string of the error output.</p>
      def message
        @data[:message]
      end
    end

    # Error class for GoneException.
    class GoneException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Schemas::Types::GoneException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code.</p>
      def code
        @data[:code]
      end

      # <p>The message string of the error output.</p>
      def message
        @data[:message]
      end
    end

    # Error class for InternalServerErrorException.
    class InternalServerErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Schemas::Types::InternalServerErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code.</p>
      def code
        @data[:code]
      end

      # <p>The message string of the error output.</p>
      def message
        @data[:message]
      end
    end

    # Error class for NotFoundException.
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Schemas::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code.</p>
      def code
        @data[:code]
      end

      # <p>The message string of the error output.</p>
      def message
        @data[:message]
      end
    end

    # Error class for PreconditionFailedException.
    class PreconditionFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Schemas::Types::PreconditionFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code.</p>
      def code
        @data[:code]
      end

      # <p>The message string of the error output.</p>
      def message
        @data[:message]
      end
    end

    # Error class for ServiceUnavailableException.
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Schemas::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code.</p>
      def code
        @data[:code]
      end

      # <p>The message string of the error output.</p>
      def message
        @data[:message]
      end
    end

    # Error class for TooManyRequestsException.
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Schemas::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code.</p>
      def code
        @data[:code]
      end

      # <p>The message string of the error output.</p>
      def message
        @data[:message]
      end
    end

    # Error class for UnauthorizedException.
    class UnauthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Schemas::Types::UnauthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code.</p>
      def code
        @data[:code]
      end

      # <p>The message string of the error output.</p>
      def message
        @data[:message]
      end
    end
  end
end
