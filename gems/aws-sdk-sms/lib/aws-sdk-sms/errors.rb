# frozen_string_literal: true

# This is generated code!

module Aws::SMS
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SMS::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SMS::Errors::ServiceError
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
  # * {DryRunOperationException}
  # * {InternalError}
  # * {InvalidParameterException}
  # * {MissingRequiredParameterException}
  # * {NoConnectorsAvailableException}
  # * {OperationNotPermittedException}
  # * {ReplicationJobAlreadyExistsException}
  # * {ReplicationJobNotFoundException}
  # * {ReplicationRunLimitExceededException}
  # * {ServerCannotBeReplicatedException}
  # * {TemporarilyUnavailableException}
  # * {UnauthorizedOperationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The user has the required permissions, so the request would have succeeded, 
    #             but a dry run was performed.</p>
    class DryRunOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SMS::Types::DryRunOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An internal error occurred.</p>
    class InternalError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SMS::Types::InternalError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A specified parameter is not valid.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SMS::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A required parameter is missing.</p>
    class MissingRequiredParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SMS::Types::MissingRequiredParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There are no connectors available.</p>
    class NoConnectorsAvailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SMS::Types::NoConnectorsAvailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This operation is not allowed.</p>
    class OperationNotPermittedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SMS::Types::OperationNotPermittedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified replication job already exists.</p>
    class ReplicationJobAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SMS::Types::ReplicationJobAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified replication job does not exist.</p>
    class ReplicationJobNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SMS::Types::ReplicationJobNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the number of on-demand replication runs you can request in a
    #             24-hour period.</p>
    class ReplicationRunLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SMS::Types::ReplicationRunLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified server cannot be replicated.</p>
    class ServerCannotBeReplicatedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SMS::Types::ServerCannotBeReplicatedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The service is temporarily unavailable.</p>
    class TemporarilyUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SMS::Types::TemporarilyUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>You lack permissions needed to perform this operation. Check your IAM policies,
    #             and ensure that you are using the correct access keys.</p>
    class UnauthorizedOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SMS::Types::UnauthorizedOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
