# frozen_string_literal: true

# This is generated code!

module Aws::PcaConnectorScep
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::PcaConnectorScep::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::PcaConnectorScep::Errors::ServiceError
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
  # * {BadRequestException}
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

    # <p>You can receive this error if you attempt to perform an operation and you don't have
    #       the required permissions. This can be caused by insufficient permissions in policies
    #       attached to your Amazon Web Services Identity and Access Management (IAM) principal. It can also happen
    #       because of restrictions in place from an Amazon Web Services Organizations service control policy (SCP)
    #       that affects your Amazon Web Services account.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorScep::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request is malformed or contains an error such as an invalid parameter value or a missing required parameter.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorScep::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>This request can't be completed for one of the following reasons because the requested
    #       resource was being concurrently modified by another request.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorScep::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the Amazon Web Services resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type, which can be either <code>Connector</code> or <code>Challenge</code>.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request processing has failed because of an unknown error, exception or failure with
    #       an internal server.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorScep::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p>The operation tried to access a nonexistent resource. The resource might be incorrectly specified, or it might have a status other than <code>ACTIVE</code>.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorScep::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the Amazon Web Services resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type, which can be either <code>Connector</code> or <code>Challenge</code>.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorScep::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The resource type, which can be either <code>Connector</code> or <code>Challenge</code>.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>Identifies the originating service.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The quota identifier.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The limit on the number of requests per second was exceeded.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorScep::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def retryable?
        true
      end

      def throttling?
        true
      end
    end

    # <p>An input validation error occurred. For example, invalid characters in a name tag, or an invalid pagination token.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorScep::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The reason for the validation error, if available. The service doesn't return a reason for every validation exception.</p>
      def reason
        @data[:reason]
      end
    end
  end
end
