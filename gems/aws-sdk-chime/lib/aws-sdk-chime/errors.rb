# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Chime

  # When Chime returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::Chime::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all Chime errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Chime::Errors::ServiceError
  #       # rescues all Chime API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AccessDeniedException}
  # * {BadRequestException}
  # * {ConflictException}
  # * {ForbiddenException}
  # * {NotFoundException}
  # * {ResourceLimitExceededException}
  # * {ServiceFailureException}
  # * {ServiceUnavailableException}
  # * {ThrottledClientException}
  # * {UnauthorizedClientException}
  # * {UnprocessableEntityException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class AccessDeniedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chime::Types::AccessDeniedException] data
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

    class BadRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chime::Types::BadRequestException] data
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
      # @param [Aws::Chime::Types::ConflictException] data
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
      # @param [Aws::Chime::Types::ForbiddenException] data
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
      # @param [Aws::Chime::Types::NotFoundException] data
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

    class ResourceLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chime::Types::ResourceLimitExceededException] data
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

    class ServiceFailureException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chime::Types::ServiceFailureException] data
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
      # @param [Aws::Chime::Types::ServiceUnavailableException] data
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

    class ThrottledClientException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chime::Types::ThrottledClientException] data
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

    class UnauthorizedClientException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chime::Types::UnauthorizedClientException] data
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

    class UnprocessableEntityException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Chime::Types::UnprocessableEntityException] data
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
