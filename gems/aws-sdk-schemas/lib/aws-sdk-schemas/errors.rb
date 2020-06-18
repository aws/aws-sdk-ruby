# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Schemas

  # When Schemas returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::Schemas::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all Schemas errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Schemas::Errors::ServiceError
  #       # rescues all Schemas API errors
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

    extend Aws::Errors::DynamicErrors

    class BadRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Schemas::Types::BadRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ConflictException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Schemas::Types::ConflictException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ForbiddenException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Schemas::Types::ForbiddenException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class GoneException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Schemas::Types::GoneException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InternalServerErrorException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Schemas::Types::InternalServerErrorException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Schemas::Types::NotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class PreconditionFailedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Schemas::Types::PreconditionFailedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ServiceUnavailableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Schemas::Types::ServiceUnavailableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TooManyRequestsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Schemas::Types::TooManyRequestsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class UnauthorizedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Schemas::Types::UnauthorizedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

  end
end
