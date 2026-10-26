# frozen_string_literal: true

# This is generated code!

module Aws::DevOpsAgent
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::DevOpsAgent::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DevOpsAgent::Errors::ServiceError
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
  # * {ConflictException}
  # * {ContentSizeExceededException}
  # * {IdentityCenterServiceException}
  # * {InternalServerException}
  # * {InvalidParameterException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Access to the requested resource is denied due to insufficient permissions.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsAgent::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Detailed error message describing why access was denied.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request conflicts with the current state of the resource.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsAgent::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Detailed error message describing the conflict.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the content size exceeds the allowed limit.</p>
    class ContentSizeExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsAgent::Types::ContentSizeExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Calls to the customer Identity Center have failed</p>
    class IdentityCenterServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsAgent::Types::IdentityCenterServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Detailed error message describing why the call fails</p>
      def message
        @data[:message]
      end

      # <p>The Idc error code</p>
      def underlying_error_code
        @data[:underlying_error_code]
      end
    end

    # <p>This exception is thrown when an unexpected error occurs in the processing of a request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsAgent::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p>One or more parameters provided in the request are invalid.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsAgent::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Detailed error message describing which parameter is invalid and why.</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested resource could not be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsAgent::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Detailed error message describing which resource was not found.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request would exceed the service quota limit.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsAgent::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Detailed error message describing which quota was exceeded.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request was throttled due to too many requests. Please slow down and try again.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsAgent::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Detailed error message describing the throttling condition.</p>
      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsAgent::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A summary of the validation failure.</p>
      def message
        @data[:message]
      end

      # <p>A list of specific failures encountered while validating the input. A member can appear in this list more than once if it failed to satisfy multiple constraints.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
