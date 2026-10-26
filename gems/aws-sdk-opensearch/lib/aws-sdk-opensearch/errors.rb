# frozen_string_literal: true

# This is generated code!

module Aws::OpenSearch
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::OpenSearch::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::OpenSearch::Errors::ServiceError
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
  # * {DependencyFailureException}
  # * {DisabledOperationException}
  # * {InternalException}
  # * {InvalidPaginationTokenException}
  # * {InvalidTypeException}
  # * {LimitExceededException}
  # * {ResourceAlreadyExistsException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {SlotNotAvailableException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>An error occurred because you don't have permissions to access the resource.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearch::Types::AccessDeniedException] data
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
      # @param [Aws::OpenSearch::Types::BaseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An error occurred because the client attempts to remove a resource that is currently in use.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearch::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception for when a failure in one of the dependencies results in the service being unable to fetch details about the resource.</p>
    class DependencyFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearch::Types::DependencyFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An error occured because the client wanted to access an unsupported operation.</p>
    class DisabledOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearch::Types::DisabledOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Request processing failed because of an unknown error, exception, or internal failure.</p>
    class InternalException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearch::Types::InternalException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Request processing failed because you provided an invalid pagination token.</p>
    class InvalidPaginationTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearch::Types::InvalidPaginationTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception for trying to create or access a sub-resource that's either invalid or not supported.</p>
    class InvalidTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearch::Types::InvalidTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception for trying to create more than the allowed number of resources or sub-resources.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearch::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception for creating a resource that already exists.</p>
    class ResourceAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearch::Types::ResourceAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception for accessing or deleting a resource that doesn't exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearch::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception for when a request would cause a service quota to be exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearch::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception for attempting to schedule a domain action during an unavailable time slot.</p>
    class SlotNotAvailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearch::Types::SlotNotAvailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Alternate time slots during which OpenSearch Service has available capacity to schedule a domain action.</p>
      def slot_suggestions
        @data[:slot_suggestions]
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request was denied due to request throttling. Reduce the frequency of your requests and try again.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearch::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception for accessing or deleting a resource that doesn't exist.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpenSearch::Types::ValidationException] data
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
