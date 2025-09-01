# frozen_string_literal: true

# This is generated code!

module Aws::NetworkFirewall
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::NetworkFirewall::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::NetworkFirewall::Errors::ServiceError
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
  # * {InsufficientCapacityException}
  # * {InternalServerError}
  # * {InvalidOperationException}
  # * {InvalidRequestException}
  # * {InvalidResourcePolicyException}
  # * {InvalidTokenException}
  # * {LimitExceededException}
  # * {LogDestinationPermissionException}
  # * {ResourceNotFoundException}
  # * {ResourceOwnerCheckException}
  # * {ThrottlingException}
  # * {UnsupportedOperationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Amazon Web Services doesn't currently have enough available capacity to fulfill your request. Try your
    #          request later. </p>
    class InsufficientCapacityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkFirewall::Types::InsufficientCapacityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request is valid, but Network Firewall couldn't perform the operation because of a
    #          system problem. Retry your request. </p>
    class InternalServerError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkFirewall::Types::InternalServerError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because it's not valid. For example, you might have tried to delete
    #          a rule group or firewall policy that's in use.</p>
    class InvalidOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkFirewall::Types::InvalidOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because of a problem with your request. Examples include: </p>
    #          <ul>
    #             <li>
    #                <p>You specified an unsupported parameter name or value.</p>
    #             </li>
    #             <li>
    #                <p>You tried to update a property with a value that isn't among the available
    #                types.</p>
    #             </li>
    #             <li>
    #                <p>Your request references an ARN that is malformed, or corresponds to a resource
    #                that isn't valid in the context of the request.</p>
    #             </li>
    #          </ul>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkFirewall::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The policy statement failed validation.</p>
    class InvalidResourcePolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkFirewall::Types::InvalidResourcePolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The token you provided is stale or isn't valid for the operation. </p>
    class InvalidTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkFirewall::Types::InvalidTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Unable to perform the operation because doing so would violate a limit setting. </p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkFirewall::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Unable to send logs to a configured logging destination. </p>
    class LogDestinationPermissionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkFirewall::Types::LogDestinationPermissionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Unable to locate a resource using the parameters that you provided.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkFirewall::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Unable to change the resource because your account doesn't own it. </p>
    class ResourceOwnerCheckException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkFirewall::Types::ResourceOwnerCheckException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Unable to process the request due to throttling limitations.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkFirewall::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation you requested isn't supported by Network Firewall. </p>
    class UnsupportedOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NetworkFirewall::Types::UnsupportedOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
