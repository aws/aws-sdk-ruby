# frozen_string_literal: true

# This is generated code!

module Aws::RAM
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::RAM::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::RAM::Errors::ServiceError
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
  # * {IdempotentParameterMismatchException}
  # * {InvalidClientTokenException}
  # * {InvalidMaxResultsException}
  # * {InvalidNextTokenException}
  # * {InvalidParameterException}
  # * {InvalidPolicyException}
  # * {InvalidResourceTypeException}
  # * {InvalidStateTransitionException}
  # * {MalformedArnException}
  # * {MalformedPolicyTemplateException}
  # * {MissingRequiredParameterException}
  # * {OperationNotPermittedException}
  # * {PermissionAlreadyExistsException}
  # * {PermissionLimitExceededException}
  # * {PermissionVersionsLimitExceededException}
  # * {ResourceArnNotFoundException}
  # * {ResourceShareInvitationAlreadyAcceptedException}
  # * {ResourceShareInvitationAlreadyRejectedException}
  # * {ResourceShareInvitationArnNotFoundException}
  # * {ResourceShareInvitationExpiredException}
  # * {ResourceShareLimitExceededException}
  # * {ServerInternalException}
  # * {ServiceUnavailableException}
  # * {TagLimitExceededException}
  # * {TagPolicyViolationException}
  # * {ThrottlingException}
  # * {UnknownResourceException}
  # * {UnmatchedPolicyPermissionException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The operation failed because the client token input parameter matched one that was
    #             used with a previous call to the operation, but at least one of the other input
    #             parameters is different from the previous call.</p>
    class IdempotentParameterMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::IdempotentParameterMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the specified client token isn't valid.</p>
    class InvalidClientTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::InvalidClientTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the specified value for <code>MaxResults</code> isn't
    #             valid.</p>
    class InvalidMaxResultsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::InvalidMaxResultsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the specified value for <code>NextToken</code> isn't
    #             valid. You must specify a value you received in the <code>NextToken</code> response of a
    #             previous call to this operation.</p>
    class InvalidNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::InvalidNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because a parameter you specified isn't valid.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because a policy you specified isn't valid.</p>
    class InvalidPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::InvalidPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the specified resource type isn't valid.</p>
    class InvalidResourceTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::InvalidResourceTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the requested operation isn't valid for the resource
    #             share in its current state.</p>
    class InvalidStateTransitionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::InvalidStateTransitionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the specified <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> has a format that isn't
    #             valid.</p>
    class MalformedArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::MalformedArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the policy template that you provided isn't valid.</p>
    class MalformedPolicyTemplateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::MalformedPolicyTemplateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because a required input parameter is missing.</p>
    class MissingRequiredParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::MissingRequiredParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the requested operation isn't permitted.</p>
    class OperationNotPermittedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::OperationNotPermittedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because a permission with the specified name already exists in
    #             the requested Amazon Web Services Region. Choose a different name.</p>
    class PermissionAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::PermissionAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because it would exceed the maximum number of permissions you can
    #             create in each Amazon Web Services Region. To view the limits for your Amazon Web Services account, see the <a href="https://console.aws.amazon.com/servicequotas/home/services/ram/quotas">RAM page in the
    #                 Service Quotas console</a>.</p>
    class PermissionLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::PermissionLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because it would exceed the limit for the number of versions you
    #             can have for a permission. To view the limits for your Amazon Web Services account, see the <a href="https://console.aws.amazon.com/servicequotas/home/services/ram/quotas">RAM page in the
    #                 Service Quotas console</a>.</p>
    class PermissionVersionsLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::PermissionVersionsLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the specified <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> was not found.</p>
    class ResourceArnNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::ResourceArnNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the specified invitation was already accepted.</p>
    class ResourceShareInvitationAlreadyAcceptedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::ResourceShareInvitationAlreadyAcceptedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the specified invitation was already rejected.</p>
    class ResourceShareInvitationAlreadyRejectedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::ResourceShareInvitationAlreadyRejectedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the specified <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> for an invitation was not
    #             found.</p>
    class ResourceShareInvitationArnNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::ResourceShareInvitationArnNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the specified invitation is past its expiration date and
    #             time.</p>
    class ResourceShareInvitationExpiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::ResourceShareInvitationExpiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because it would exceed the limit for resource shares for your account. You
    #             can associate up to 100 resources per call. To view the limits for your Amazon Web Services account,
    #             see the <a href="https://console.aws.amazon.com/servicequotas/home/services/ram/quotas">RAM page in
    #                 the Service Quotas console</a>.</p>
    class ResourceShareLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::ResourceShareLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the service could not respond to the request due to an
    #             internal problem. Try again later.</p>
    class ServerInternalException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::ServerInternalException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the service isn't available. Try again later.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because it would exceed the limit for tags for your
    #             Amazon Web Services account.</p>
    class TagLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::TagLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because the specified tag key is a reserved word and can't be
    #             used.</p>
    class TagPolicyViolationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::TagPolicyViolationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because it exceeded the rate at which you are allowed to perform
    #             this operation. Please try again later.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because a specified resource couldn't be found.</p>
    class UnknownResourceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::UnknownResourceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There isn't an existing managed permission defined in RAM that has the same IAM permissions as
    #             the resource-based policy attached to the resource. You should first run <a>PromotePermissionCreatedFromPolicy</a> to create that managed permission.</p>
    class UnmatchedPolicyPermissionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RAM::Types::UnmatchedPolicyPermissionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
