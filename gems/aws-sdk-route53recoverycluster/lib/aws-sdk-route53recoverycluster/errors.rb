# frozen_string_literal: true

# This is generated code!

module Aws::Route53RecoveryCluster
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Route53RecoveryCluster::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Route53RecoveryCluster::Errors::ServiceError
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
  # * {EndpointTemporarilyUnavailableException}
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ServiceLimitExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You don't have sufficient permissions to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53RecoveryCluster::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There was a conflict with this request. Try again.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53RecoveryCluster::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # Description of the ConflictException error
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
    end

    # <p>The cluster endpoint isn't available. Try another cluster endpoint.</p>
    class EndpointTemporarilyUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53RecoveryCluster::Types::EndpointTemporarilyUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There was an unexpected error during processing of the request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53RecoveryCluster::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The request references a routing control or control panel that was not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53RecoveryCluster::Types::ResourceNotFoundException] data
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

    # <p>The request can't update that many routing control states at the same time. Try again with fewer routing control states.</p>
    class ServiceLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53RecoveryCluster::Types::ServiceLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The resource identifier of the limit that was exceeded.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type of the limit that was exceeded.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The code of the limit that was exceeded.</p>
      def limit_code
        @data[:limit_code]
      end

      # <p>The service code of the limit that was exceeded.</p>
      def service_code
        @data[:service_code]
      end
    end

    # <p>The request was denied because of request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53RecoveryCluster::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>There was a validation error on the request.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53RecoveryCluster::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def reason
        @data[:reason]
      end

      def fields
        @data[:fields]
      end
    end
  end
end
