# frozen_string_literal: true

# This is generated code!

module Aws::M2
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::M2::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::M2::Errors::ServiceError
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
  # * {ExecutionTimeoutException}
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ServiceUnavailableException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The account or role doesn't have the right permissions to make the request.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::M2::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The parameters provided in the request conflict with existing resources.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::M2::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the conflicting resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the conflicting resource.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p> Failed to connect to server, or didn’t receive response within expected time period.</p>
    class ExecutionTimeoutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::M2::Types::ExecutionTimeoutException] data
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

    # <p>An unexpected error occurred during the processing of the request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::M2::Types::InternalServerException] data
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

    # <p>The specified resource was not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::M2::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the missing resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the missing resource.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>One or more quotas for Amazon Web Services Mainframe Modernization exceeds the limit.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::M2::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource that is exceeding the quota limit.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource that is exceeding the quota limit for Amazon Web Services Mainframe Modernization.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>A code that identifies the service that the exceeded quota belongs to.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The identifier of the exceeded quota.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>Server cannot process the request at the moment.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::M2::Types::ServiceUnavailableException] data
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

    # <p>The number of requests made exceeds the limit.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::M2::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the service that the throttled request was made to.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The identifier of the throttled request.</p>
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

    # <p>One or more parameters provided in the request is not valid.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::M2::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason why it failed service validation.</p>
      def reason
        @data[:reason]
      end

      # <p>The list of fields that failed service validation.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
