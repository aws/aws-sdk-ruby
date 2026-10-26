# frozen_string_literal: true

# This is generated code!

module Aws::Deadline
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Deadline::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Deadline::Errors::ServiceError
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
  # * {InternalServerErrorException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You don't have permission to perform the action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Deadline::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Information about the resources in use when the exception was thrown.</p>
      def context
        @data[:context]
      end
    end

    # <p>Your request has conflicting operations. This can occur if you're trying to perform more than one operation on the same resource at the same time.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Deadline::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>A description of the error.</p>
      def reason
        @data[:reason]
      end

      # <p>The identifier of the resource in use.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource in use.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>Information about the resources in use when the exception was thrown.</p>
      def context
        @data[:context]
      end
    end

    # <p>Deadline Cloud can't process your request right now. Try again later.</p>
    class InternalServerErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Deadline::Types::InternalServerErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds a client should wait before retrying the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The requested resource can't be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Deadline::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that couldn't be found.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that couldn't be found.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>Information about the resources in use when the exception was thrown.</p>
      def context
        @data[:context]
      end
    end

    # <p>You exceeded your service quota. Service quotas, also referred to as limits, are the maximum number of service resources or operations for your Amazon Web Services account.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Deadline::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>A string that describes the reason the quota was exceeded.</p>
      def reason
        @data[:reason]
      end

      # <p>The type of the affected resource</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>Identifies the service that exceeded the quota.</p>
      def service_code
        @data[:service_code]
      end

      # <p>Identifies the quota that has been exceeded.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The identifier of the affected resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Information about the resources in use when the exception was thrown.</p>
      def context
        @data[:context]
      end
    end

    # <p>Your request exceeded a request rate quota.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Deadline::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Identifies the service that is being throttled.</p>
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

      # <p>Information about the resources in use when the exception was thrown.</p>
      def context
        @data[:context]
      end

      def retryable?
        true
      end

      def throttling?
        true
      end
    end

    # <p>The request isn't valid. This can occur if your request contains malformed JSON or unsupported characters.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Deadline::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason that the request failed validation.</p>
      def reason
        @data[:reason]
      end

      # <p>A list of fields that failed validation.</p>
      def field_list
        @data[:field_list]
      end

      # <p>Information about the resources in use when the exception was thrown.</p>
      def context
        @data[:context]
      end
    end
  end
end
