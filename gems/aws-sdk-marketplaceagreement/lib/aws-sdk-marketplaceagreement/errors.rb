# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceAgreement
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::MarketplaceAgreement::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::MarketplaceAgreement::Errors::ServiceError
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
      # @param [Aws::MarketplaceAgreement::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The unique identifier for the error.</p>
      def request_id
        @data[:request_id]
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>The reason for the access denied exception.</p>
      def reason
        @data[:reason]
      end
    end

    # <p>Request was denied due to a resource conflict.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceAgreement::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The unique identifier for the error.</p>
      def request_id
        @data[:request_id]
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>The unique identifier of the resource involved in the conflict.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource involved in the conflict.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>Unexpected error during processing of request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceAgreement::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The unique identifier for the error.</p>
      def request_id
        @data[:request_id]
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Request references a resource which does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceAgreement::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The unique identifier for the error.</p>
      def request_id
        @data[:request_id]
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>The unique identifier for the resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>Request exceeded the maximum allowed limit (quota) for a specific resource or API operation.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceAgreement::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The unique identifier for the error.</p>
      def request_id
        @data[:request_id]
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>The code of the quota that was exceeded.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The code of the service whose quota was exceeded.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The type of the resource that exceeded the quota.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The unique identifier of the resource that exceeded the quota.</p>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>Request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceAgreement::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The unique identifier for the error.</p>
      def request_id
        @data[:request_id]
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceAgreement::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The unique identifier associated with the error.</p>
      def request_id
        @data[:request_id]
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>The reason associated with the error.</p>
      def reason
        @data[:reason]
      end

      # <p>The fields associated with the error.</p>
      def fields
        @data[:fields]
      end
    end
  end
end
