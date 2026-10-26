# frozen_string_literal: true

# This is generated code!

module Aws::EventBridgeV2
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::EventBridgeV2::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::EventBridgeV2::Errors::ServiceError
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
  # * {ConcurrentModificationException}
  # * {ConflictException}
  # * {IdempotentParameterMismatchException}
  # * {InternalException}
  # * {InvalidInputException}
  # * {InvalidStateException}
  # * {LimitExceededException}
  # * {PolicyLengthExceededException}
  # * {PublicPolicyException}
  # * {ResourceAlreadyExistsException}
  # * {ResourceInUseException}
  # * {ResourceNotFoundException}
  # * {SchemaRegistryUnavailableException}
  # * {ThrottlingException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # The caller does not have the permissions required to perform the operation.
    # This error is also returned when the operation cannot use the AWS KMS key for
    # the event bus.
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # Another change to the resource is already in progress. Retry the request.
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::ConcurrentModificationException] data
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

    # A client-supplied precondition (e.g. ExpectedRevisionId on a resource-policy
    # write) did not match the current state of the resource. Retrying the same
    # request will fail again; re-read the resource and re-evaluate before retrying.
    #
    # A conditional request is not retry-safe on its own. If an earlier attempt
    # committed but its response never reached the caller, retrying fails with this
    # error, which is indistinguishable from another writer having won. Compare the
    # resource's current contents with what the request intended: a successful
    # attempt stores a revision ID the caller never saw, so the revision alone
    # cannot tell the two apart, but matching contents mean the change took effect.
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # The request reuses the client token of an earlier request with different
    # parameters. Use a new client token, or resend the earlier request unchanged.
    class IdempotentParameterMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::IdempotentParameterMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # The request failed because of an internal service error. Retry the request.
    class InternalException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::InternalException] data
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

    # A request parameter is missing or not valid.
    class InvalidInputException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::InvalidInputException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # The resource is not in a state that allows the operation. For example, an
    # event bus that is still being created cannot accept events.
    class InvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::InvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # The request would exceed a service quota for the account.
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # The policy document is larger than the account's resource policy size quota, or
    # larger than the service maximum.
    class PolicyLengthExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::PolicyLengthExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # The policy was rejected because it would grant public access to the event bus.
    # A statement grants public access when its principal is a wildcard and no
    # condition limits the callers to specific AWS accounts or principals. To fix
    # it, replace the wildcard principal with specific principals, or add a
    # condition that limits the callers to specific AWS accounts. Conditions on
    # event content (events:source, events:detail-type, events:Metadata/*) do not
    # identify the caller and do not make a wildcard principal non-public. Returned
    # only for the "default" policy; the "AWS_RAM" policy is composed by AWS
    # Resource Access Manager and never grants public access.
    class PublicPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::PublicPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # A resource with the same name already exists.
    class ResourceAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::ResourceAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # The resource is in use and cannot be deleted. For example, an event bus with
    # subscribers or event sources cannot be deleted until they are deleted.
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # The resource does not exist.
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # The configured schema registry could not be reached. Retry the request.
    class SchemaRegistryUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::SchemaRegistryUnavailableException] data
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

    # The request was throttled because it exceeds a request rate limit. Retry the
    # request with backoff.
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EventBridgeV2::Types::ThrottlingException] data
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
  end
end
