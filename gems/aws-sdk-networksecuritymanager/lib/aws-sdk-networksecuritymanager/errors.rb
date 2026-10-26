# frozen_string_literal: true

# This is generated code!

module Aws::NetworkSecurityManager
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::NetworkSecurityManager::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::NetworkSecurityManager::Errors::ServiceError
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
  # * {ServiceUnavailableException}
  # * {TagPolicyViolationException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have sufficient permissions to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkSecurityManager::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request conflicts with the current state of the resource. For example, the resource was modified concurrently, or it is in a state that does not allow the requested operation.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkSecurityManager::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource that is in conflict with the request.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that is in conflict with the request.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request processing failed because of an internal error in the service. This is a retryable error.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkSecurityManager::Types::InternalServerException] data
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

    # <p>The specified resource was not found. Verify that the resource identifier is correct and that the resource exists, then try your request again.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkSecurityManager::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource that could not be found.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that could not be found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request would exceed a service quota.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkSecurityManager::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The code that identifies the service quota that was exceeded.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The code for the AWS service that owns the quota that was exceeded.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The ID of the resource associated with the quota that was exceeded.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource associated with the quota that was exceeded.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The service is temporarily unavailable. This is a retryable error.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkSecurityManager::Types::ServiceUnavailableException] data
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

    # <p>The request violates a tag policy that is in effect for the account or organization.</p>
    class TagPolicyViolationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkSecurityManager::Types::TagPolicyViolationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was denied because of request throttling. Reduce your request rate and try again.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkSecurityManager::Types::ThrottlingException] data
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

    # <p>The request failed validation. For details, see the <code>reason</code> and <code>fieldList</code> members of the response.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkSecurityManager::Types::ValidationException] data
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

      # <p>The list of request fields that failed validation, if any.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
