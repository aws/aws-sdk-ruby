# frozen_string_literal: true

# This is generated code!

module Aws::MPA
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::MPA::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::MPA::Errors::ServiceError
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
  # * {ConflictException}
  # * {InternalServerException}
  # * {InvalidParameterException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {TooManyTagsException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have sufficient access to perform this action. Check your permissions, and try again.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MPA::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Message for the <code>AccessDeniedException</code> error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request cannot be completed because it conflicts with the current state of a resource.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MPA::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Message for the <code>ConflictException</code> error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The service encountered an internal error. Try your request again. If the problem persists, contact Amazon Web Services Support.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MPA::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Message for the <code>InternalServerException</code> error.</p>
      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p>The request contains an invalid parameter value.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MPA::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Message for the <code>InvalidParameterException</code> error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified resource doesn't exist. Check the resource ID, and try again.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MPA::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Message for the <code>ResourceNotFoundException</code> error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request exceeds the service quota for your account. Request a quota increase or reduce your request size.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MPA::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Message for the <code>ServiceQuotaExceededException</code> error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MPA::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Message for the <code>ThrottlingException</code> error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request exceeds the maximum number of tags allowed for this resource. Remove some tags, and try again.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MPA::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Message for the <code>TooManyTagsException</code> error.</p>
      def message
        @data[:message]
      end

      # <p>Name of the resource for the <code>TooManyTagsException</code> error.</p>
      def resource_name
        @data[:resource_name]
      end
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MPA::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Message for the <code>ValidationException</code> error.</p>
      def message
        @data[:message]
      end
    end
  end
end
