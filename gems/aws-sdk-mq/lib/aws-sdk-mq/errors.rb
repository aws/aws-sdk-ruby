# frozen_string_literal: true

# This is generated code!

module Aws::Mq
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Mq::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Mq::Errors::ServiceError
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
  # * {UnauthorizedException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Returns information about an error.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Mq::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The attribute which caused the error.</p>
      def error_attribute
        @data[:error_attribute]
      end

      # <p>The explanation of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Mq::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The attribute which caused the error.</p>
      def error_attribute
        @data[:error_attribute]
      end

      # <p>The explanation of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class ForbiddenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Mq::Types::ForbiddenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The attribute which caused the error.</p>
      def error_attribute
        @data[:error_attribute]
      end

      # <p>The explanation of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class InternalServerErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Mq::Types::InternalServerErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The attribute which caused the error.</p>
      def error_attribute
        @data[:error_attribute]
      end

      # <p>The explanation of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Mq::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The attribute which caused the error.</p>
      def error_attribute
        @data[:error_attribute]
      end

      # <p>The explanation of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class UnauthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Mq::Types::UnauthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The attribute which caused the error.</p>
      def error_attribute
        @data[:error_attribute]
      end

      # <p>The explanation of the error.</p>
      def message
        @data[:message]
      end
    end
  end
end
