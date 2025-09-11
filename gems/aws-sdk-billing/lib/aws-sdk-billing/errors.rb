# frozen_string_literal: true

# This is generated code!

module Aws::Billing
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Billing::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Billing::Errors::ServiceError
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

    # <p>You don't have sufficient access to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Billing::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request. </p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Billing::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The identifier for the service resource associated with the request. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p> The type of resource associated with the request. </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request processing failed because of an unknown error, exception, or failure. </p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Billing::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> The specified ARN in the request doesn't exist. </p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Billing::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> Value is a list of resource IDs that were not found. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p> Value is the type of resource that was not found. </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p> You've reached the limit of resources you can create, or exceeded the size of an individual resource. </p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Billing::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The ID of the resource. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p> The type of Amazon Web Services resource. </p>
      def resource_type
        @data[:resource_type]
      end

      # <p> The container for the <code>serviceCode</code>. </p>
      def service_code
        @data[:service_code]
      end

      # <p> The container for the <code>quotaCode</code>. </p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The request was denied due to request throttling. </p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Billing::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service. </p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Billing::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
      def reason
        @data[:reason]
      end

      # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
