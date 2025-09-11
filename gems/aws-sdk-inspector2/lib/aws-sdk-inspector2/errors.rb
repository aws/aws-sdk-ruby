# frozen_string_literal: true

# This is generated code!

module Aws::Inspector2
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Inspector2::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Inspector2::Errors::ServiceError
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
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have sufficient access to perform this action.</p>
    #          <p> For <code>Enable</code>, you receive this error if you attempt to use a feature in an
    #          unsupported Amazon Web Services Region. </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector2::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more tags submitted as part of the request is not valid.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector2::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A conflict occurred. This exception occurs when the same resource is being modified by
    #          concurrent requests.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector2::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # The ID of the conflicting resource.
      def resource_id
        @data[:resource_id]
      end

      # The type of the conflicting resource.
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request has failed due to an internal failure of the Amazon Inspector service.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector2::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds to wait before retrying the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The operation tried to access an invalid resource. Make sure the resource is specified
    #          correctly.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector2::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded your service quota. To perform the requested action, remove some of
    #          the relevant resources, or use Service Quotas to request a service quota increase.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector2::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource that exceeds a service quota.</p>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>The limit on the number of requests per second was exceeded.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector2::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds to wait before retrying the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end

      def throttling?
        true
      end
    end

    # <p>The request has failed validation due to missing required fields or having invalid
    #          inputs.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector2::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason for the validation failure.</p>
      def reason
        @data[:reason]
      end

      # <p>The fields that failed validation.</p>
      def fields
        @data[:fields]
      end
    end
  end
end
