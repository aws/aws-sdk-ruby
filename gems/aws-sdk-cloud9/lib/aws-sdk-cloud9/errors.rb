# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Cloud9

  # When Cloud9 returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::Cloud9::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all Cloud9 errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Cloud9::Errors::ServiceError
  #       # rescues all Cloud9 API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {BadRequestException}
  # * {ConcurrentAccessException}
  # * {ConflictException}
  # * {ForbiddenException}
  # * {InternalServerErrorException}
  # * {LimitExceededException}
  # * {NotFoundException}
  # * {TooManyRequestsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class BadRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Cloud9::Types::BadRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ConcurrentAccessException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Cloud9::Types::ConcurrentAccessException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ConflictException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Cloud9::Types::ConflictException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ForbiddenException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Cloud9::Types::ForbiddenException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InternalServerErrorException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Cloud9::Types::InternalServerErrorException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class LimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Cloud9::Types::LimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Cloud9::Types::NotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyRequestsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Cloud9::Types::TooManyRequestsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
