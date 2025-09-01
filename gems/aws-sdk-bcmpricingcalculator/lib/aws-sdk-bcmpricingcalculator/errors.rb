# frozen_string_literal: true

# This is generated code!

module Aws::BCMPricingCalculator
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::BCMPricingCalculator::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::BCMPricingCalculator::Errors::ServiceError
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
  # * {DataUnavailableException}
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

    # <p> You do not have sufficient access to perform this action. </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BCMPricingCalculator::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p> The request could not be processed because of conflict in the current state of the resource. </p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BCMPricingCalculator::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p> The identifier of the resource that was not found. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p> The type of the resource that was not found. </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p> The requested data is currently unavailable. </p>
    class DataUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BCMPricingCalculator::Types::DataUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p> An internal error has occurred. Retry your request, but if the problem persists, contact Amazon Web Services support. </p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BCMPricingCalculator::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p> An internal error has occurred. Retry your request, but if the problem persists, contact Amazon Web Services support. </p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p> The specified resource was not found. </p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BCMPricingCalculator::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p> The identifier of the resource that was not found. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p> The type of the resource that was not found. </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p> The request would cause you to exceed your service quota. </p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BCMPricingCalculator::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p> The identifier of the resource that exceeded quota. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p> The type of the resource that exceeded quota. </p>
      def resource_type
        @data[:resource_type]
      end

      # <p> The service code that exceeded quota. </p>
      def service_code
        @data[:service_code]
      end

      # <p> The quota code that was exceeded. </p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p> The request was denied due to request throttling. </p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BCMPricingCalculator::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The service code that exceeded the throttling limit.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The quota code that exceeded the throttling limit.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The service code that exceeded the throttling limit. Retry your request, but if the problem persists, contact Amazon Web Services support.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p> The input provided fails to satisfy the constraints specified by an Amazon Web Services service. </p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BCMPricingCalculator::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p> The reason for the validation exception. </p>
      def reason
        @data[:reason]
      end

      # <p> The list of fields that are invalid. </p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
