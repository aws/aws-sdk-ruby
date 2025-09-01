# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKVoice
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ChimeSDKVoice::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ChimeSDKVoice::Errors::ServiceError
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
  # * {ForbiddenException}
  # * {GoneException}
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
    extend Smithy::Client::DynamicErrors

    # <p>You don't have the permissions needed to run this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKVoice::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The input parameters don't match the service's restrictions.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKVoice::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Multiple instances of the same request were made simultaneously.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKVoice::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The client is permanently forbidden from making the request.</p>
    class ForbiddenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKVoice::Types::ForbiddenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Access to the target resource is no longer available at the origin server. This condition is likely to be permanent.</p>
    class GoneException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKVoice::Types::GoneException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested resource couldn't be found.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKVoice::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The request exceeds the resource limit.</p>
    class ResourceLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKVoice::Types::ResourceLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The service encountered an unexpected error.</p>
    class ServiceFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKVoice::Types::ServiceFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The service is currently unavailable.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKVoice::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of customer requests exceeds the request rate limit.</p>
    class ThrottledClientException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKVoice::Types::ThrottledClientException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The client isn't authorized to request a resource.</p>
    class UnauthorizedClientException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKVoice::Types::UnauthorizedClientException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end

    # <p>A well-formed request couldn't be followed due to semantic errors.</p>
    class UnprocessableEntityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKVoice::Types::UnprocessableEntityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end
  end
end
