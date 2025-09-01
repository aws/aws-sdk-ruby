# frozen_string_literal: true

# This is generated code!

module Aws::SSMContacts
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SSMContacts::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SSMContacts::Errors::ServiceError
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
  # * {DataEncryptionException}
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

    # <p>You don't have sufficient access to perform this operation.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMContacts::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Updating or deleting a resource causes an inconsistent state.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMContacts::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # Identifier of the resource in use
      def resource_id
        @data[:resource_id]
      end

      # Type of the resource in use
      def resource_type
        @data[:resource_type]
      end

      # List of dependent entities containing information on relation type and resourceArns linked to the resource in use
      def dependent_entities
        @data[:dependent_entities]
      end
    end

    # <p>The operation failed to due an encryption key error.</p>
    class DataEncryptionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMContacts::Types::DataEncryptionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Unexpected error occurred while processing the request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMContacts::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # Advice to clients on when the call can be safely retried
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>Request references a resource that doesn't exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMContacts::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # Hypothetical resource identifier that was not found
      def resource_id
        @data[:resource_id]
      end

      # Hypothetical resource type that was not found
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMContacts::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # Identifier of the resource affected
      def resource_id
        @data[:resource_id]
      end

      # Type of the resource affected
      def resource_type
        @data[:resource_type]
      end

      # Service Quotas requirement to identify originating service
      def quota_code
        @data[:quota_code]
      end

      # Service Quotas requirement to identify originating quota
      def service_code
        @data[:service_code]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMContacts::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # Service Quotas requirement to identify originating service
      def quota_code
        @data[:quota_code]
      end

      # Service Quotas requirement to identify originating quota
      def service_code
        @data[:service_code]
      end

      # Advice to clients on when the call can be safely retried
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services
    #          service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMContacts::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # Reason the request failed validation
      def reason
        @data[:reason]
      end

      # The fields that caused the error
      def fields
        @data[:fields]
      end
    end
  end
end
