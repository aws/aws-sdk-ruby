# frozen_string_literal: true

# This is generated code!

module Aws::OpenSearchServerless
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::OpenSearchServerless::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::OpenSearchServerless::Errors::ServiceError
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
  # * {ConflictException}
  # * {InternalServerException}
  # * {OcuLimitExceededException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>When creating a resource, thrown when a resource with the same name already exists or
    #             is being created. When deleting a resource, thrown when the resource is not in the
    #             ACTIVE or FAILED state.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearchServerless::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Thrown when an error internal to the service occurs while processing a request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearchServerless::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Thrown when the collection you're attempting to create results in a number of search
    #             or indexing OCUs that exceeds the account limit. </p>
    class OcuLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearchServerless::Types::OcuLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # Description of the error.
      def message
        @data[:message]
      end
    end

    # <p>Thrown when accessing or deleting a resource that does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearchServerless::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Thrown when you attempt to create more resources than the service allows based on
    #             service quotas.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearchServerless::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # Description of the error.
      def message
        @data[:message]
      end

      # Identifier of the resource affected.
      def resource_id
        @data[:resource_id]
      end

      # Type of the resource affected.
      def resource_type
        @data[:resource_type]
      end

      # Service Quotas requirement to identify originating service.
      def service_code
        @data[:service_code]
      end

      # Service Quotas requirement to identify originating quota.
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>Thrown when the HTTP request contains invalid input or is missing required
    #             input.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearchServerless::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
