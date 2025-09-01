# frozen_string_literal: true

# This is generated code!

module Aws::CloudControl
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CloudControl::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudControl::Errors::ServiceError
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
  # * {AlreadyExistsException}
  # * {ClientTokenConflictException}
  # * {ConcurrentModificationException}
  # * {ConcurrentOperationException}
  # * {GeneralServiceException}
  # * {HandlerFailureException}
  # * {HandlerInternalFailureException}
  # * {InvalidCredentialsException}
  # * {InvalidRequestException}
  # * {NetworkFailureException}
  # * {NotStabilizedException}
  # * {NotUpdatableException}
  # * {PrivateTypeException}
  # * {RequestTokenNotFoundException}
  # * {ResourceConflictException}
  # * {ResourceNotFoundException}
  # * {ServiceInternalErrorException}
  # * {ServiceLimitExceededException}
  # * {ThrottlingException}
  # * {TypeNotFoundException}
  # * {UnsupportedActionException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The resource with the name requested already exists.</p>
    class AlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::AlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified client token has already been used in another resource request.</p>
    #          <p>It's best practice for client tokens to be unique for each resource operation request.
    #       However, client token expire after 36 hours.</p>
    class ClientTokenConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::ClientTokenConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource is currently being modified by another operation.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Another resource operation is currently being performed on this resource.</p>
    class ConcurrentOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::ConcurrentOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource handler has returned that the downstream service generated an error that
    #       doesn't map to any other handler error code.</p>
    class GeneralServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::GeneralServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource handler has failed without a returning a more specific error code. This can
    #       include timeouts.</p>
    class HandlerFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::HandlerFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource handler has returned that an unexpected error occurred within the resource
    #       handler.</p>
    class HandlerInternalFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::HandlerInternalFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource handler has returned that the credentials provided by the user are
    #       invalid.</p>
    class InvalidCredentialsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::InvalidCredentialsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource handler has returned that invalid input from the user has generated a generic
    #       exception.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource handler has returned that the request couldn't be completed due to networking
    #       issues, such as a failure to receive a response from the server.</p>
    class NetworkFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::NetworkFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource handler has returned that the downstream resource failed to complete all of
    #       its ready-state checks.</p>
    class NotStabilizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::NotStabilizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more properties included in this resource operation are defined as create-only, and
    #       therefore can't be updated.</p>
    class NotUpdatableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::NotUpdatableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Cloud Control API hasn't received a valid response from the resource handler, due to a configuration
    #       error. This includes issues such as the resource handler returning an invalid response, or
    #       timing out.</p>
    class PrivateTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::PrivateTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A resource operation with the specified request token can't be found.</p>
    class RequestTokenNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::RequestTokenNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource is temporarily unavailable to be acted upon. For example, if the resource is
    #       currently undergoing an operation and can't be acted upon until that operation is
    #       finished.</p>
    class ResourceConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::ResourceConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A resource with the specified identifier can't be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource handler has returned that the downstream service returned an internal error,
    #       typically with a <code>5XX HTTP</code> status code.</p>
    class ServiceInternalErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::ServiceInternalErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource handler has returned that a non-transient resource limit was reached on the
    #       service side.</p>
    class ServiceLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::ServiceLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified extension doesn't exist in the CloudFormation registry.</p>
    class TypeNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::TypeNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource doesn't support this resource operation.</p>
    class UnsupportedActionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudControl::Types::UnsupportedActionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
