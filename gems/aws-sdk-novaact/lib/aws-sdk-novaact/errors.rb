# frozen_string_literal: true

# This is generated code!

module Aws::NovaAct
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::NovaAct::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::NovaAct::Errors::ServiceError
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
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You don't have sufficient permissions to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NovaAct::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>You don't have sufficient permissions to perform this action. Verify your IAM permissions and try again.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request could not be completed due to a conflict with the current state of the resource.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NovaAct::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The requested operation conflicts with the current state of the resource.</p>
      def message
        @data[:message]
      end

      # <p>The identifier of the resource that caused the conflict.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource that caused the conflict.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>An internal server error occurred. Please try again later.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NovaAct::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The service encountered an internal error. Try again later.</p>
      def message
        @data[:message]
      end

      # <p>The number of seconds to wait before retrying the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      # <p>The reason for the internal server error.</p>
      def reason
        @data[:reason]
      end

      def retryable?
        true
      end
    end

    # <p>The requested resource was not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NovaAct::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The specified resource was not found.</p>
      def message
        @data[:message]
      end

      # <p>The identifier of the resource that wasn't found.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource that wasn't found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request would exceed a service quota limit.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NovaAct::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The request would exceed one or more service quotas for your account.</p>
      def message
        @data[:message]
      end

      # <p>The identifier of the resource that exceeded the quota.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource that exceeded the quota.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The service code for the quota that was exceeded.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The code for the specific quota that was exceeded.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The request was throttled due to too many requests. Please try again later.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NovaAct::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The request was denied due to request throttling.</p>
      def message
        @data[:message]
      end

      # <p>The service code where throttling occurred.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The quota code related to the throttling.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The number of seconds to wait before retrying the throttled request.</p>
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

    # <p>The input parameters for the request are invalid.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NovaAct::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The input fails to satisfy the constraints specified by the service.</p>
      def message
        @data[:message]
      end

      # <p>The reason for the validation failure.</p>
      def reason
        @data[:reason]
      end

      # <p>The list of fields that failed validation.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
