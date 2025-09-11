# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationDiscoveryService
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ApplicationDiscoveryService::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ApplicationDiscoveryService::Errors::ServiceError
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
  # * {AuthorizationErrorException}
  # * {ConflictErrorException}
  # * {HomeRegionNotSetException}
  # * {InvalidParameterException}
  # * {InvalidParameterValueException}
  # * {LimitExceededException}
  # * {OperationNotPermittedException}
  # * {ResourceInUseException}
  # * {ResourceNotFoundException}
  # * {ServerInternalErrorException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The user does not have permission to perform the action. Check the IAM
    #       policy associated with this user.</p>
    class AuthorizationErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationDiscoveryService::Types::AuthorizationErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Conflict error.</p>
    class ConflictErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationDiscoveryService::Types::ConflictErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The home Region is not set. Set the home Region to continue.</p>
    class HomeRegionNotSetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationDiscoveryService::Types::HomeRegionNotSetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more parameters are not valid. Verify the parameters and try again.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationDiscoveryService::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The value of one or more parameters are either invalid or out of range. Verify the
    #       parameter values and try again.</p>
    class InvalidParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationDiscoveryService::Types::InvalidParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #       The limit of 200 configuration IDs per request has been exceeded.
    #     </p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationDiscoveryService::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This operation is not permitted.</p>
    class OperationNotPermittedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationDiscoveryService::Types::OperationNotPermittedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This issue occurs when the same <code>clientRequestToken</code> is used with the
    #         <code>StartImportTask</code> action, but with different parameters. For example, you use the
    #       same request token but have two different import URLs, you can encounter this issue. If the
    #       import tasks are meant to be different, use a different <code>clientRequestToken</code>, and
    #       try again.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationDiscoveryService::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified configuration ID was not located. Verify the configuration ID and try
    #       again.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationDiscoveryService::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The server experienced an internal error. Try again.</p>
    class ServerInternalErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationDiscoveryService::Types::ServerInternalErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
