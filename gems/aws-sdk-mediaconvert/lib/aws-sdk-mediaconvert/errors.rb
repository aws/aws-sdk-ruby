# frozen_string_literal: true

# This is generated code!

module Aws::MediaConvert
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::MediaConvert::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::MediaConvert::Errors::ServiceError
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

    # The service can't process your request because of a problem in the request. Please check your request form and syntax.
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MediaConvert::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # The service couldn't complete your request because there is a conflict with the current state of the resource.
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MediaConvert::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # You don't have permissions for this action with the credentials you sent.
    class ForbiddenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MediaConvert::Types::ForbiddenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # The service encountered an unexpected condition and can't fulfill your request.
    class InternalServerErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MediaConvert::Types::InternalServerErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # The resource you requested doesn't exist.
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MediaConvert::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests.
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MediaConvert::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
