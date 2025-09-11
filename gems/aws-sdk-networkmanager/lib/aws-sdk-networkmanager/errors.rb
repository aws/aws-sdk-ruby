# frozen_string_literal: true

# This is generated code!

module Aws::NetworkManager
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::NetworkManager::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::NetworkManager::Errors::ServiceError
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
  # * {CoreNetworkPolicyException}
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
      # @param [Aws::NetworkManager::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There was a conflict processing the request. Updating or deleting the resource can
    #             cause an inconsistent state.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkManager::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>Describes a core network policy exception.</p>
    class CoreNetworkPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkManager::Types::CoreNetworkPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Describes a core network policy exception.</p>
      def errors
        @data[:errors]
      end
    end

    # <p>The request has failed due to an internal error.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkManager::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Indicates when to retry the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The specified resource could not be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkManager::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The specified resource could not be found.</p>
      def context
        @data[:context]
      end
    end

    # <p>A service limit was exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkManager::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message.</p>
      def message
        @data[:message]
      end

      # <p>The ID of the resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The limit code.</p>
      def limit_code
        @data[:limit_code]
      end

      # <p>The service code.</p>
      def service_code
        @data[:service_code]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkManager::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Indicates when to retry the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The input fails to satisfy the constraints.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkManager::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason for the error.</p>
      def reason
        @data[:reason]
      end

      # <p>The fields that caused the error, if applicable.</p>
      def fields
        @data[:fields]
      end
    end
  end
end
