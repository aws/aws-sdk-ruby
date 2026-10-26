# frozen_string_literal: true

# This is generated code!

module Aws::PartnerCentralBenefits
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::PartnerCentralBenefits::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::PartnerCentralBenefits::Errors::ServiceError
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

    # <p>Thrown when the caller does not have sufficient permissions to perform the requested operation.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PartnerCentralBenefits::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the access denial.</p>
      def message
        @data[:message]
      end
    end

    # <p>Thrown when the request conflicts with the current state of the resource, such as attempting to modify a resource that has been changed by another process.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PartnerCentralBenefits::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the conflict.</p>
      def message
        @data[:message]
      end
    end

    # <p>Thrown when an unexpected error occurs on the server side during request processing.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PartnerCentralBenefits::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the internal server error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Thrown when the requested resource cannot be found or does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PartnerCentralBenefits::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the resource not found error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Thrown when the request would exceed the service quotas or limits for the account.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PartnerCentralBenefits::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the service quota exceeded error.</p>
      def message
        @data[:message]
      end

      # <p>The identifier of the resource that would exceed the quota.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that would exceed the quota.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The code identifying the specific quota that would be exceeded.</p>
      def quota_code
        @data[:quota_code]
      end

      def retryable?
        true
      end
    end

    # <p>Thrown when the request rate exceeds the allowed limits and the request is being throttled.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PartnerCentralBenefits::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the throttling error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Thrown when the request contains invalid parameters or fails input validation requirements.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PartnerCentralBenefits::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the validation error.</p>
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
