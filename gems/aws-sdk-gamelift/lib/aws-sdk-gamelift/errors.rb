# frozen_string_literal: true

# This is generated code!

module Aws::GameLift
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::GameLift::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::GameLift::Errors::ServiceError
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
  # * {ConflictException}
  # * {FleetCapacityExceededException}
  # * {GameSessionFullException}
  # * {IdempotentParameterMismatchException}
  # * {InternalServiceException}
  # * {InvalidFleetStatusException}
  # * {InvalidGameSessionStatusException}
  # * {InvalidRequestException}
  # * {LimitExceededException}
  # * {NotFoundException}
  # * {NotReadyException}
  # * {OutOfCapacityException}
  # * {TaggingFailedException}
  # * {TerminalRoutingStrategyException}
  # * {UnauthorizedException}
  # * {UnsupportedRegionException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The requested operation would cause a conflict with the current state of a service
    #             resource associated with the request. Resolve the conflict before retrying this
    #             request.</p>
    #          <p></p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified fleet has no available instances to fulfill a
    #                 <code>CreateGameSession</code> request. Clients can retry such requests immediately
    #             or after a waiting period.</p>
    class FleetCapacityExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::FleetCapacityExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The game instance is currently full and cannot allow the requested player(s) to join.
    #             Clients can retry such requests immediately or after a waiting period.</p>
    class GameSessionFullException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::GameSessionFullException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A game session with this custom ID string already exists in this fleet. Resolve this
    #             conflict before retrying this request.</p>
    class IdempotentParameterMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::IdempotentParameterMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The service encountered an unrecoverable internal failure while processing the
    #             request. Clients can retry such requests immediately or after a waiting period.</p>
    class InternalServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::InternalServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested operation would cause a conflict with the current state of a resource
    #             associated with the request and/or the fleet. Resolve the conflict before
    #             retrying.</p>
    class InvalidFleetStatusException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::InvalidFleetStatusException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested operation would cause a conflict with the current state of a resource
    #             associated with the request and/or the game instance. Resolve the conflict before
    #             retrying.</p>
    class InvalidGameSessionStatusException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::InvalidGameSessionStatusException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more parameter values in the request are invalid. Correct the invalid parameter
    #             values before retrying.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested operation would cause the resource to exceed the allowed service limit.
    #             Resolve the issue before retrying.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested resource was not found. The resource was either not created yet or deleted.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> The operation failed because Amazon GameLift Servers has not yet finished validating this compute. We
    #             recommend attempting 8 to 10 retries over 3 to 5 minutes with <a href="http://aws.amazon.com/blogs/https:/aws.amazon.com/blogs/architecture/exponential-backoff-and-jitter/">exponential
    #                 backoffs and jitter</a>. </p>
    class NotReadyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::NotReadyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified game server group has no available game servers to fulfill a
    #                 <code>ClaimGameServer</code> request. Clients can retry such requests immediately or
    #             after a waiting period.</p>
    class OutOfCapacityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::OutOfCapacityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested tagging operation did not succeed. This may be due to invalid tag format
    #             or the maximum tag limit may have been exceeded. Resolve the issue before
    #             retrying.</p>
    class TaggingFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::TaggingFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The service is unable to resolve the routing for a particular alias because it has a
    #             terminal <code>RoutingStrategy</code> associated with it. The message returned in this
    #             exception is the message defined in the routing strategy itself. Such requests should
    #             only be retried if the routing strategy for the specified alias is modified. </p>
    class TerminalRoutingStrategyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::TerminalRoutingStrategyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The client failed authentication. Clients should not retry such requests.</p>
    class UnauthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::UnauthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested operation is not supported in the Region specified.</p>
    class UnsupportedRegionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GameLift::Types::UnsupportedRegionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
