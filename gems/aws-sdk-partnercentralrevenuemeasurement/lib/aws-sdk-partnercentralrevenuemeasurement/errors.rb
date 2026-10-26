# frozen_string_literal: true

# This is generated code!

module Aws::PartnerCentralRevenueMeasurement
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::PartnerCentralRevenueMeasurement::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::PartnerCentralRevenueMeasurement::Errors::ServiceError
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

    # <p>The request was denied due to insufficient permissions.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PartnerCentralRevenueMeasurement::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason for the access denial.</p>
      def reason
        @data[:reason]
      end
    end

    # <p>The request could not be completed due to a conflict with the current state of the resource.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PartnerCentralRevenueMeasurement::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason for the conflict.</p>
      def reason
        @data[:reason]
      end
    end

    # <p>An internal server error occurred. Retry your request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PartnerCentralRevenueMeasurement::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p>The specified resource was not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PartnerCentralRevenueMeasurement::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason the resource was not found.</p>
      def reason
        @data[:reason]
      end
    end

    # <p>The request would exceed a service quota limit.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PartnerCentralRevenueMeasurement::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason the service quota was exceeded.</p>
      def reason
        @data[:reason]
      end
    end

    # <p>The request was throttled due to too many requests. Retry your request.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PartnerCentralRevenueMeasurement::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The service code associated with the throttling error.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The quota code associated with the throttling error.</p>
      def quota_code
        @data[:quota_code]
      end

      def retryable?
        true
      end
    end

    # <p>The request failed validation due to invalid input parameters.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PartnerCentralRevenueMeasurement::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason for the validation failure.</p>
      def reason
        @data[:reason]
      end

      # <p>A list of fields that failed validation.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
