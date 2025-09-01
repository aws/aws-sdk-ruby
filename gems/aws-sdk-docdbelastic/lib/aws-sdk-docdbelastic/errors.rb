# frozen_string_literal: true

# This is generated code!

module Aws::DocDBElastic
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::DocDBElastic::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DocDBElastic::Errors::ServiceError
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

    # <p>An exception that occurs when there are not sufficient permissions to perform an action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DocDBElastic::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>An error message explaining why access was denied.</p>
      def message
        @data[:message]
      end
    end

    # <p>There was an access conflict.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DocDBElastic::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource where there was an access conflict.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource where there was an access conflict.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>There was an internal server error.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DocDBElastic::Types::InternalServerException] data
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

    # <p>The specified resource could not be located.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DocDBElastic::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>An error message describing the failure.</p>
      def message
        @data[:message]
      end

      # <p>The ID of the resource that could not be located.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that could not be found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The service quota for the action was exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DocDBElastic::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>ThrottlingException will be thrown when request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DocDBElastic::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds to wait before retrying the operation.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>A structure defining a validation exception.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DocDBElastic::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>An error message describing the validation exception.</p>
      def message
        @data[:message]
      end

      # <p>The reason why the validation exception occurred (one of <code>unknownOperation</code>,
      #       <code>cannotParse</code>, <code>fieldValidationFailed</code>, or <code>other</code>).</p>
      def reason
        @data[:reason]
      end

      # <p>A list of the fields in which the validation exception occurred.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
