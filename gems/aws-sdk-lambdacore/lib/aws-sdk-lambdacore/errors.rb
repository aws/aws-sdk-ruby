# frozen_string_literal: true

# This is generated code!

module Aws::LambdaCore
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::LambdaCore::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::LambdaCore::Errors::ServiceError
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
  # * {InvalidParameterValueException}
  # * {NetworkConnectorLimitExceededException}
  # * {ResourceConflictException}
  # * {ResourceNotFoundException}
  # * {ServiceException}
  # * {TooManyRequestsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>One of the parameters in the request is not valid. Check the error message for details about which parameter failed validation.</p>
    class InvalidParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaCore::Types::InvalidParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would exceed a network connector limit. For <code>CreateNetworkConnector</code>, the account has reached the maximum number of network connectors allowed. For <code>UpdateNetworkConnector</code>, the connector has reached the maximum number of versions allowed.</p>
    class NetworkConnectorLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaCore::Types::NetworkConnectorLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      # <p>The account has reached the maximum number of network connectors allowed.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request could not be completed due to a conflict with the current state of the resource. For example, attempting to update a connector that is not in <code>ACTIVE</code> state.</p>
    class ResourceConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaCore::Types::ResourceConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified network connector does not exist. Verify the identifier (ID, name, or ARN) and Region.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaCore::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>An internal service error occurred. Retry the request with exponential backoff.</p>
    class ServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaCore::Types::ServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was throttled due to exceeding the allowed request rate. Retry the request after a brief wait using exponential backoff.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LambdaCore::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The number of seconds to wait before retrying the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      def message
        @data[:message]
      end

      # <p>The reason for the throttling.</p>
      def reason
        @data[:reason]
      end
    end
  end
end
