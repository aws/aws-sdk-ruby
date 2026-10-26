# frozen_string_literal: true

# This is generated code!

module Aws::Account
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Account::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Account::Errors::ServiceError
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
  # * {ResourceNotFoundException}
  # * {ResourceUnavailableException}
  # * {TooManyRequestsException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The operation failed because the calling identity doesn't have the minimum required permissions.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Account::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The value populated to the <code>x-amzn-ErrorType</code> response header by API Gateway.</p>
      def error_type
        @data[:error_type]
      end
    end

    # <p>The request could not be processed because of a conflict in the current status of the resource. For example, this happens if you try to enable a Region that is currently being disabled (in a status of DISABLING) or if you try to change an account’s root user email to an email address which is already in use.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Account::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The value populated to the <code>x-amzn-ErrorType</code> response header by API Gateway.</p>
      def error_type
        @data[:error_type]
      end
    end

    # <p>The operation failed because of an error internal to Amazon Web Services. Try your operation again later.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Account::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The value populated to the <code>x-amzn-ErrorType</code> response header by API Gateway.</p>
      def error_type
        @data[:error_type]
      end

      def retryable?
        true
      end
    end

    # <p>The operation failed because it specified a resource that can't be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Account::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The value populated to the <code>x-amzn-ErrorType</code> response header by API Gateway.</p>
      def error_type
        @data[:error_type]
      end
    end

    # <p>The operation failed because it specified a resource that is not currently available.</p>
    class ResourceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Account::Types::ResourceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The value populated to the <code>x-amzn-ErrorType</code> response header by API Gateway.</p>
      def error_type
        @data[:error_type]
      end
    end

    # <p>The operation failed because it was called too frequently and exceeded a throttle limit.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Account::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The value populated to the <code>x-amzn-ErrorType</code> response header by API Gateway.</p>
      def error_type
        @data[:error_type]
      end

      def retryable?
        true
      end

      def throttling?
        true
      end
    end

    # <p>The operation failed because one of the input parameters was invalid.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Account::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that informs you about what was invalid about the request.</p>
      def message
        @data[:message]
      end

      # <p>The reason that validation failed.</p>
      def reason
        @data[:reason]
      end

      # <p>The field where the invalid entry was detected.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
