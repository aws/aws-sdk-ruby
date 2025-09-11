# frozen_string_literal: true

# This is generated code!

module Aws::InspectorScan
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::InspectorScan::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::InspectorScan::Errors::ServiceError
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
  # * {InternalServerException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have sufficient access to perform this action.
    #   </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::InspectorScan::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.
    #    
    #   </p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::InspectorScan::Types::InternalServerException] data
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

      # <p>The number of seconds to wait before retrying the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The request was denied due to request throttling.
    #    
    #   </p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::InspectorScan::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds to wait before retrying the request.</p>
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

    # <p>The request has failed validation due to missing required fields or having invalid inputs.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::InspectorScan::Types::ValidationException] data
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

      # <p>The fields that failed validation.</p>
      def fields
        @data[:fields]
      end
    end
  end
end
