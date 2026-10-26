# frozen_string_literal: true

# This is generated code!

module Aws::ObservabilityAdmin
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ObservabilityAdmin::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ObservabilityAdmin::Errors::ServiceError
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
  # * {InternalServerException}
  # * {InvalidStateException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {TooManyRequestsException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p> Indicates you don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access management for Amazon Web Services resources</a> in the IAM user guide. </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ObservabilityAdmin::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The name of the exception. </p>
      def amzn_error_type
        @data[:amzn_error_type]
      end
    end

    # <p> The requested operation conflicts with the current state of the specified resource or with another request. </p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ObservabilityAdmin::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The identifier of the resource which is in conflict with the requested operation. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p> The type of the resource which is in conflict with the requested operation. </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p> Indicates the request has failed to process because of an unknown server error, exception, or failure. </p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ObservabilityAdmin::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The name of the exception. </p>
      def amzn_error_type
        @data[:amzn_error_type]
      end

      # <p>The number of seconds to wait before retrying the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p> The requested operation cannot be completed on the specified resource in the current state. </p>
    class InvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ObservabilityAdmin::Types::InvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> The specified resource (such as a telemetry rule) could not be found. </p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ObservabilityAdmin::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The identifier of the resource which could not be found. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p> The type of the resource which could not be found. </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p> The requested operation would exceed the allowed quota for the specified resource type. </p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ObservabilityAdmin::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The identifier of the resource which exceeds the service quota. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p> The type of the resource which exceeds the service quota. </p>
      def resource_type
        @data[:resource_type]
      end

      # <p> The code for the service of the exceeded quota. </p>
      def service_code
        @data[:service_code]
      end

      # <p> The code for the exceeded service quota. </p>
      def quota_code
        @data[:quota_code]
      end

      # <p> The name of the exception. </p>
      def amzn_error_type
        @data[:amzn_error_type]
      end
    end

    # <p> The request throughput limit was exceeded. </p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ObservabilityAdmin::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> Indicates input validation failed. Check your request parameters and retry the request. </p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ObservabilityAdmin::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The errors in the input which caused the exception. </p>
      def errors
        @data[:errors]
      end
    end
  end
end
