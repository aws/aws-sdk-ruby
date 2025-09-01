# frozen_string_literal: true

# This is generated code!

module Aws::GlobalAccelerator
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::GlobalAccelerator::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::GlobalAccelerator::Errors::ServiceError
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
  # * {AcceleratorNotDisabledException}
  # * {AcceleratorNotFoundException}
  # * {AccessDeniedException}
  # * {AssociatedEndpointGroupFoundException}
  # * {AssociatedListenerFoundException}
  # * {AttachmentNotFoundException}
  # * {ByoipCidrNotFoundException}
  # * {ConflictException}
  # * {EndpointAlreadyExistsException}
  # * {EndpointGroupAlreadyExistsException}
  # * {EndpointGroupNotFoundException}
  # * {EndpointNotFoundException}
  # * {IncorrectCidrStateException}
  # * {InternalServiceErrorException}
  # * {InvalidArgumentException}
  # * {InvalidNextTokenException}
  # * {InvalidPortRangeException}
  # * {LimitExceededException}
  # * {ListenerNotFoundException}
  # * {TransactionInProgressException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The accelerator that you specified could not be disabled.</p>
    class AcceleratorNotDisabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::AcceleratorNotDisabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The accelerator that you specified doesn't exist.</p>
    class AcceleratorNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::AcceleratorNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You don't have access permission.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The listener that you specified has an endpoint group associated with it. You must remove all dependent resources
    # 			from a listener before you can delete it.</p>
    class AssociatedEndpointGroupFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::AssociatedEndpointGroupFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The accelerator that you specified has a listener associated with it. You must remove all dependent resources from an
    # 			accelerator before you can delete it.</p>
    class AssociatedListenerFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::AssociatedListenerFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>No cross-account attachment was found.</p>
    class AttachmentNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::AttachmentNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The CIDR that you specified was not found or is incorrect.</p>
    class ByoipCidrNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::ByoipCidrNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't use both of those options.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The endpoint that you specified doesn't exist.</p>
    class EndpointAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::EndpointAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The endpoint group that you specified already exists.</p>
    class EndpointGroupAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::EndpointGroupAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The endpoint group that you specified doesn't exist.</p>
    class EndpointGroupNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::EndpointGroupNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The endpoint that you specified doesn't exist.</p>
    class EndpointNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::EndpointNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The CIDR that you specified is not valid for this action. For example, the state of the CIDR might be
    # 		incorrect for this action.</p>
    class IncorrectCidrStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::IncorrectCidrStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There was an internal error for Global Accelerator.</p>
    class InternalServiceErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::InternalServiceErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An argument that you specified is invalid.</p>
    class InvalidArgumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::InvalidArgumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There isn't another item to return.</p>
    class InvalidNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::InvalidNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The port numbers that you specified are not valid numbers or are not unique for this accelerator.</p>
    class InvalidPortRangeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::InvalidPortRangeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Processing your request would cause you to exceed an Global Accelerator limit.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The listener that you specified doesn't exist.</p>
    class ListenerNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::ListenerNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There's already a transaction in progress. Another transaction can't be processed.</p>
    class TransactionInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GlobalAccelerator::Types::TransactionInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
