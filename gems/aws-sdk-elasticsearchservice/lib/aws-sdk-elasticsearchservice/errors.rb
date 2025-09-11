# frozen_string_literal: true

# This is generated code!

module Aws::ElasticsearchService
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ElasticsearchService::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ElasticsearchService::Errors::ServiceError
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
  # * {BaseException}
  # * {ConflictException}
  # * {DisabledOperationException}
  # * {InternalException}
  # * {InvalidPaginationTokenException}
  # * {InvalidTypeException}
  # * {LimitExceededException}
  # * {ResourceAlreadyExistsException}
  # * {ResourceNotFoundException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>An error occurred because user does not have permissions to access the resource. Returns HTTP status code 403.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticsearchService::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An error occurred while processing the request.</p>
    class BaseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticsearchService::Types::BaseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An error occurred because the client attempts to remove a resource that is currently in use. Returns HTTP status code 409.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticsearchService::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An error occured because the client wanted to access a not supported operation. Gives http status code of 409.</p>
    class DisabledOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticsearchService::Types::DisabledOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request processing has failed because of an unknown error, exception or failure (the failure is internal to the service) . Gives http status code of 500.</p>
    class InternalException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticsearchService::Types::InternalException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request processing has failed because of invalid pagination token provided by customer. Returns an HTTP status code of 400. </p>
    class InvalidPaginationTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticsearchService::Types::InvalidPaginationTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception for trying to create or access sub-resource that is either invalid or not supported. Gives http status code of 409.</p>
    class InvalidTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticsearchService::Types::InvalidTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception for trying to create more than allowed resources or sub-resources. Gives http status code of 409.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticsearchService::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception for creating a resource that already exists. Gives http status code of 400.</p>
    class ResourceAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticsearchService::Types::ResourceAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception for accessing or deleting a resource that does not exist. Gives http status code of 400.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticsearchService::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception for missing / invalid input fields. Gives http status code of 400.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticsearchService::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end
  end
end
