# frozen_string_literal: true

# This is generated code!

module Aws::BackupSearch
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::BackupSearch::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::BackupSearch::Errors::ServiceError
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

    # <p>You do not have sufficient access to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BackupSearch::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>User does not have sufficient access to perform this action.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception occurs when a conflict with a previous successful operation is detected. This generally occurs when the previous operation did not have time to propagate to the host serving the current request.</p> <p>A retry (with appropriate backoff logic) is the recommended response to this exception.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BackupSearch::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Updating or deleting a resource can cause an inconsistent state.</p>
      def message
        @data[:message]
      end

      # <p>Identifier of the resource affected.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Type of the resource affected.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>An internal server error occurred. Retry your request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BackupSearch::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Unexpected error during processing of request.</p>
      def message
        @data[:message]
      end

      # <p>Retry the call after number of seconds.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The resource was not found for this request.</p> <p>Confirm the resource information, such as the ARN or type is correct and exists, then retry the request.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BackupSearch::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Request references a resource which does not exist.</p>
      def message
        @data[:message]
      end

      # <p>Hypothetical identifier of the resource affected.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Hypothetical type of the resource affected.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request denied due to exceeding the quota limits permitted.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BackupSearch::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>This request was not successful due to a service quota exceeding limits.</p>
      def message
        @data[:message]
      end

      # <p>Identifier of the resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Type of resource.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>This is the code unique to the originating service with the quota.</p>
      def service_code
        @data[:service_code]
      end

      # <p>This is the code specific to the quota type.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BackupSearch::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Request was unsuccessful due to request throttling.</p>
      def message
        @data[:message]
      end

      # <p>This is the code unique to the originating service.</p>
      def service_code
        @data[:service_code]
      end

      # <p>This is the code unique to the originating service with the quota.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>Retry the call after number of seconds.</p>
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

    # <p>The input fails to satisfy the constraints specified by a service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BackupSearch::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The input fails to satisfy the constraints specified by an Amazon service.</p>
      def message
        @data[:message]
      end
    end
  end
end
