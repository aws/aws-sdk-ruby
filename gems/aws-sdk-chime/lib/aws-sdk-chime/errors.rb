# frozen_string_literal: true

# This is generated code!

module Aws::Chime
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Chime::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Chime::Errors::ServiceError
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

    # <p>You don't have permissions to perform the requested operation.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chime::Types::AccessDeniedException] data
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
      # @param [Aws::Chime::Types::BadRequestException] data
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

    # <p>The request could not be processed because of conflict in the current state of the
    #          resource.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chime::Types::ConflictException] data
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
      # @param [Aws::Chime::Types::ForbiddenException] data
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

    # <p>One or more of the resources in the request does not exist in the system.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chime::Types::NotFoundException] data
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
      # @param [Aws::Chime::Types::ResourceLimitExceededException] data
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
      # @param [Aws::Chime::Types::ServiceFailureException] data
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
      # @param [Aws::Chime::Types::ServiceUnavailableException] data
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

    # <p>The client exceeded its request rate limit.</p>
    class ThrottledClientException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chime::Types::ThrottledClientException] data
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

    # <p>The client is not currently authorized to make the request.</p>
    class UnauthorizedClientException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chime::Types::UnauthorizedClientException] data
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

    # <p>The request was well-formed but was unable to be followed due to semantic errors.</p>
    class UnprocessableEntityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Chime::Types::UnprocessableEntityException] data
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
