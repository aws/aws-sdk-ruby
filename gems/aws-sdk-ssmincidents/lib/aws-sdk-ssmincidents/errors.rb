# frozen_string_literal: true

# This is generated code!

module Aws::SSMIncidents
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SSMIncidents::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SSMIncidents::Errors::ServiceError
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

    # <p>You don't have sufficient access to perform this operation.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMIncidents::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Updating or deleting a resource causes an inconsistent state.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMIncidents::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # The identifier of the requested resource
      def resource_identifier
        @data[:resource_identifier]
      end

      # The resource type
      def resource_type
        @data[:resource_type]
      end

      # If present in the output, the operation can be retried after this time
      def retry_after
        @data[:retry_after]
      end
    end

    # <p>The request processing has failed because of an unknown error, exception or
    #       failure.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMIncidents::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Request references a resource which doesn't exist. </p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMIncidents::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # The identifier for the requested resource
      def resource_identifier
        @data[:resource_identifier]
      end

      # The resource type
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMIncidents::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # The identifier for the requested resource
      def resource_identifier
        @data[:resource_identifier]
      end

      # The resource type
      def resource_type
        @data[:resource_type]
      end

      # Originating service code
      def service_code
        @data[:service_code]
      end

      # Originating quota code
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMIncidents::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # Originating service code
      def service_code
        @data[:service_code]
      end

      # Originating quota code
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services
    #       service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSMIncidents::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
