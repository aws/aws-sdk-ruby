# frozen_string_literal: true

# This is generated code!

module Aws::EndUserMessaging
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::EndUserMessaging::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::EndUserMessaging::Errors::ServiceError
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

    # <p>You do not have sufficient access to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EndUserMessaging::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request conflicts with the current state of the resource.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EndUserMessaging::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that the request conflicts with.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that the request conflicts with.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>An unexpected error occurred during the processing of the request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EndUserMessaging::Types::InternalServerException] data
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

    # <p>The request references a resource that does not exist. Verify that the resource identifier is correct and try your request again.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EndUserMessaging::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that could not be found.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that could not be found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request would exceed a service quota for your account.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EndUserMessaging::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was denied because it exceeded the allowed request rate.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EndUserMessaging::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
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

    # A standard error for input validation failures.
    # This should be thrown by services when a member of the input structure
    # falls outside of the modeled or documented constraints.
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EndUserMessaging::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # A summary of the validation failure.
      def message
        @data[:message]
      end

      # A list of specific failures encountered while validating the input.
      # A member can appear in this list more than once if it failed to satisfy multiple constraints.
      def field_list
        @data[:field_list]
      end
    end
  end
end
