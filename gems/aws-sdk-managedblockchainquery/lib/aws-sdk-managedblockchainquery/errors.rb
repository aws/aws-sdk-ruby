# frozen_string_literal: true

# This is generated code!

module Aws::ManagedBlockchainQuery
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ManagedBlockchainQuery::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ManagedBlockchainQuery::Errors::ServiceError
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

    # <p>The Amazon Web Services account doesn’t have access to this resource. </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ManagedBlockchainQuery::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The container for the exception message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request processing has failed because of an internal error in the service.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ManagedBlockchainQuery::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The container for the exception message.</p>
      def message
        @data[:message]
      end

      # <p>Specifies the <code>retryAfterSeconds</code> value.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The resource was not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ManagedBlockchainQuery::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The container for the exception message.</p>
      def message
        @data[:message]
      end

      # <p>The <code>resourceId</code> of the resource that caused the exception.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The <code>resourceType</code> of the resource that caused the exception.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The service quota has been exceeded for this resource.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ManagedBlockchainQuery::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The container for the exception message.</p>
      def message
        @data[:message]
      end

      # <p>The <code>resourceId</code> of the resource that caused the exception.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The <code>resourceType</code> of the resource that caused the exception.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The container for the <code>serviceCode</code>.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The container for the <code>quotaCode</code>.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The request or operation couldn't be performed because a service is throttling 
    #       requests. The most common source of throttling errors is when you create resources 
    #       that exceed your service limit for this resource type. Request a limit increase or 
    #       delete unused resources, if possible.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ManagedBlockchainQuery::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The container for the exception message.</p>
      def message
        @data[:message]
      end

      # <p>The container for the <code>serviceCode</code>.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The container for the <code>quotaCode</code>.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The container of the <code>retryAfterSeconds</code> value.</p>
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

    # <p>The resource passed is invalid.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ManagedBlockchainQuery::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The container for the exception message.</p>
      def message
        @data[:message]
      end

      # <p>The container for the reason for the exception</p>
      def reason
        @data[:reason]
      end

      # <p>The container for the <code>fieldList</code> of the exception.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
