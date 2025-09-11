# frozen_string_literal: true

# This is generated code!

module Aws::GuardDuty
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::GuardDuty::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::GuardDuty::Errors::ServiceError
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
  # * {ConflictException}
  # * {InternalServerErrorException}
  # * {ResourceNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>An access denied exception object.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GuardDuty::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message.</p>
      def message
        @data[:message]
      end

      # <p>The error type.</p>
      def type
        @data[:type]
      end
    end

    # <p>A bad request exception object.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GuardDuty::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message.</p>
      def message
        @data[:message]
      end

      # <p>The error type.</p>
      def type
        @data[:type]
      end
    end

    # <p>A request conflict exception object.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GuardDuty::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message.</p>
      def message
        @data[:message]
      end

      # <p>The error type.</p>
      def type
        @data[:type]
      end
    end

    # <p>An internal server error exception object.</p>
    class InternalServerErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GuardDuty::Types::InternalServerErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message.</p>
      def message
        @data[:message]
      end

      # <p>The error type.</p>
      def type
        @data[:type]
      end
    end

    # <p>The requested resource can't be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GuardDuty::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message.</p>
      def message
        @data[:message]
      end

      # <p>The error type.</p>
      def type
        @data[:type]
      end
    end
  end
end
