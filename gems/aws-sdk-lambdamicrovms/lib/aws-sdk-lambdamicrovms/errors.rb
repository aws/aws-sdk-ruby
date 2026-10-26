# frozen_string_literal: true

# This is generated code!

module Aws::LambdaMicrovms
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::LambdaMicrovms::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::LambdaMicrovms::Errors::ServiceError
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
  # * {InsufficientCapacityException}
  # * {InternalServerException}
  # * {InvalidParameterValueException}
  # * {ResourceConflictException}
  # * {ResourceNotFoundException}
  # * {ServiceException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {TooManyRequestsException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have sufficient access to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaMicrovms::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request could not be completed due to a conflict with the current state of the resource.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaMicrovms::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that caused the conflict.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that caused the conflict.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>There is insufficient capacity to fulfill the request. Retry the request later.</p>
    class InsufficientCapacityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaMicrovms::Types::InsufficientCapacityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An internal server error occurred. Retry the request later.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaMicrovms::Types::InternalServerException] data
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

    # <p>One of the parameters in the request is not valid.</p>
    class InvalidParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaMicrovms::Types::InvalidParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource already exists, or another operation is in progress.</p>
    class ResourceConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaMicrovms::Types::ResourceConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaMicrovms::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The type of the resource that was not found.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The identifier of the resource that was not found.</p>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>The AWS Lambda MicroVMs service encountered an internal error.</p>
    class ServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaMicrovms::Types::ServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded a service quota for Lambda MicroVMs.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaMicrovms::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that exceeded the quota.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that exceeded the quota.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The service code of the exceeded service quota.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The quota code of the exceeded service quota.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The request was denied due to request throttling. Retry the request later.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaMicrovms::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The service code of the throttled service quota.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The quota code of the throttled service quota.</p>
      def quota_code
        @data[:quota_code]
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

    # <p>The request throughput limit was exceeded. Retry the request later.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaMicrovms::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The input does not satisfy the constraints specified by the service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaMicrovms::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
