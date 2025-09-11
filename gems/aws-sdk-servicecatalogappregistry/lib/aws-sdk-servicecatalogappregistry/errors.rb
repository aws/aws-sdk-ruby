# frozen_string_literal: true

# This is generated code!

module Aws::ServiceCatalogAppRegistry
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ServiceCatalogAppRegistry::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ServiceCatalogAppRegistry::Errors::ServiceError
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
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>There was a conflict when processing the request (for example, a resource with the given
    #       name already exists within the account).</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceCatalogAppRegistry::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The service is experiencing internal problems.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceCatalogAppRegistry::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceCatalogAppRegistry::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #       The maximum number 
    #       of resources per account 
    #       has been reached.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceCatalogAppRegistry::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #       The maximum number 
    #       of API requests 
    #       has been exceeded.
    #     </p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceCatalogAppRegistry::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message associated with the Throttling exception.</p>
      def message
        @data[:message]
      end

      # <p>The originating service code.</p>
      def service_code
        @data[:service_code]
      end
    end

    # <p>The request has invalid or missing parameters.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceCatalogAppRegistry::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
