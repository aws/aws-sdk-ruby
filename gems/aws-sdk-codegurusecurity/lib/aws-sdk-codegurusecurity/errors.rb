# frozen_string_literal: true

# This is generated code!

module Aws::CodeGuruSecurity
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CodeGuruSecurity::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CodeGuruSecurity::Errors::ServiceError
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
      # @param [Aws::CodeGuruSecurity::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The identifier for the error.</p>
      def error_code
        @data[:error_code]
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>The identifier for the resource you don't have access to.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource you don't have access to.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The requested operation would cause a conflict with the current state of a service
    #       resource associated with the request. Resolve the conflict before retrying this
    #       request.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeGuruSecurity::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The identifier for the error.</p>
      def error_code
        @data[:error_code]
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>The identifier for the service resource associated with the request.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource associated with the request.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The server encountered an internal error and is unable to complete the request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeGuruSecurity::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The internal error encountered by the server.</p>
      def error
        @data[:error]
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p>The resource specified in the request was not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeGuruSecurity::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The identifier for the error.</p>
      def error_code
        @data[:error_code]
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>The identifier for the resource that was not found.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource that was not found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeGuruSecurity::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The identifier for the error.</p>
      def error_code
        @data[:error_code]
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>The identifier for the originating service.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The identifier for the originating quota.</p>
      def quota_code
        @data[:quota_code]
      end

      def retryable?
        true
      end

      def throttling?
        true
      end
    end

    # <p>The input fails to satisfy the specified constraints.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeGuruSecurity::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The identifier for the error.</p>
      def error_code
        @data[:error_code]
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>The reason the request failed validation.</p>
      def reason
        @data[:reason]
      end

      # <p>The field that caused the error, if applicable.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
