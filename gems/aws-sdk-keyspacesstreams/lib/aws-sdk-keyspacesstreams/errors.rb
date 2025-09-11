# frozen_string_literal: true

# This is generated code!

module Aws::KeyspacesStreams
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::KeyspacesStreams::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::KeyspacesStreams::Errors::ServiceError
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
  # * {ResourceNotFoundException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You don't have sufficient access permissions to perform this operation. </p> <p>This exception occurs when your IAM user or role lacks the required permissions to access the Amazon Keyspaces resource or perform the requested action. Check your IAM policies and ensure they grant the necessary permissions.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KeyspacesStreams::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>You don't have sufficient permissions to perform this action.</p>
      def message
        @data[:message]
      end
    end

    # <p>The Amazon Keyspaces service encountered an unexpected error while processing the request. </p> <p>This internal server error is not related to your request parameters. Retry your request after a brief delay. If the issue persists, contact Amazon Web Services Support with details of your request to help identify and resolve the problem.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KeyspacesStreams::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The service encountered an internal error. Try your request again.</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested resource doesn't exist or could not be found. </p> <p>This exception occurs when you attempt to access a keyspace, table, stream, or other Amazon Keyspaces resource that doesn't exist or that has been deleted. Verify that the resource identifier is correct and that the resource exists in your account.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KeyspacesStreams::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The requested resource wasn't found. Verify that the resource exists and try again.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request rate is too high and exceeds the service's throughput limits. </p> <p>This exception occurs when you send too many requests in a short period of time. Implement exponential backoff in your retry strategy to handle this exception. Reducing your request frequency or distributing requests more evenly can help avoid throughput exceptions.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KeyspacesStreams::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The request was denied due to request throttling. Reduce the frequency of requests and try again.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request validation failed because one or more input parameters failed validation. </p> <p>This exception occurs when there are syntax errors in the request, field constraints are violated, or required parameters are missing. To help you fix the issue, the exception message provides details about which parameter failed and why.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KeyspacesStreams::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The input fails to satisfy the constraints specified by the service. Check the error details and modify your request.</p>
      def message
        @data[:message]
      end

      # <p>An error occurred validating your request. See the error message for details.</p>
      def error_code
        @data[:error_code]
      end
    end
  end
end
