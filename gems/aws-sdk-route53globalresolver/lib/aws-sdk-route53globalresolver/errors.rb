# frozen_string_literal: true

# This is generated code!

module Aws::Route53GlobalResolver
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Route53GlobalResolver::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Route53GlobalResolver::Errors::ServiceError
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

    # <p>You don't have permission to perform this operation. Check your IAM permissions and try again.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53GlobalResolver::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request conflicts with the current state of the resource. This can occur when trying to modify a resource that is not in a valid state for the requested operation.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53GlobalResolver::Types::ConflictException] data
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

    # <p>An internal server error occurred. Try again later.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53GlobalResolver::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Number of seconds in which the caller can retry the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The specified resource was not found. Verify the resource ID and try again.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53GlobalResolver::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The unique ID of the resource referenced in the failed request.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type of the resource referenced in the failed request.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request would exceed one or more service quotas. Check your current usage and quotas, then try again.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53GlobalResolver::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The unique ID of the resource referenced in the failed request.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type of the resource referenced in the failed request.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The code for the Amazon Web Services service that owns the quota.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The quota code recognized by the Amazon Web Services Service Quotas service.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The request was throttled due to too many requests. Wait a moment and try again.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53GlobalResolver::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The code for the Amazon Web Services service that owns the quota.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The quota code recognized by the Amazon Web Services Service Quotas service.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>Number of seconds in which the caller can retry the request.</p>
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

    # <p>The input parameters are invalid. Check the parameter values and try again.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53GlobalResolver::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Reason the request failed validation.</p>
      def reason
        @data[:reason]
      end

      # <p>The list of fields that aren't valid.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
