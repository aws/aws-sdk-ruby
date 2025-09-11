# frozen_string_literal: true

# This is generated code!

module Aws::Notifications
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Notifications::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Notifications::Errors::ServiceError
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

    # <p>User does not have sufficient access to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Notifications::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Notifications::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The resource ID that prompted the conflict error.</p>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>Unexpected error during processing of request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Notifications::Types::InternalServerException] data
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

    # <p>Request references a resource which does not exist. </p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Notifications::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource that wasn't found.</p>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Notifications::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The type of the resource that exceeds the service quota.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The ID of the resource that exceeds the service quota.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The code for the service quota exceeded in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The code for the service quota in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>Request was denied due to request throttling. </p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Notifications::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Identifies the service being throttled.</p>
      def service_code
        @data[:service_code]
      end

      # <p>Identifies the quota that is being throttled.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The number of seconds a client should wait before retrying the request.</p>
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

    # <p>This exception is thrown when the notification event fails validation.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Notifications::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason why your input is considered invalid.</p>
      def reason
        @data[:reason]
      end

      # <p>The list of input fields that are invalid.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
