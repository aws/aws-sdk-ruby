# frozen_string_literal: true

# This is generated code!

module Aws::DSQL
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::DSQL::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DSQL::Errors::ServiceError
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
      # @param [Aws::DSQL::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The submitted action has conflicts.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DSQL::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Resource Id</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Resource Type</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DSQL::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Retry after seconds.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The resource could not be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DSQL::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The resource ID could not be found.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type could not be found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The service limit was exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DSQL::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The service exception for exceeding a quota.</p>
      def message
        @data[:message]
      end

      # <p>The resource ID exceeds a quota.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type exceeds a quota.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The request exceeds a service quota.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The service exceeds a quota.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DSQL::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that the request was denied due to request throttling.</p>
      def message
        @data[:message]
      end

      # <p>The request exceeds a service quota.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The request exceeds a request rate quota.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The request exceeds a request rate quota. Retry after seconds.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end

      def throttling?
        true
      end
    end

    # <p>The input failed to satisfy the constraints specified by an Amazon Web Services service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DSQL::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason for the validation exception.</p>
      def reason
        @data[:reason]
      end

      # <p>A list of fields that didn't validate.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
