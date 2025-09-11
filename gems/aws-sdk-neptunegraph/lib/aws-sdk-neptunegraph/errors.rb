# frozen_string_literal: true

# This is generated code!

module Aws::NeptuneGraph
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::NeptuneGraph::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::NeptuneGraph::Errors::ServiceError
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
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {UnprocessableException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Raised in case of an authentication or authorization failure.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NeptuneGraph::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Raised when a conflict is encountered.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NeptuneGraph::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end

      # <p>The reason for the conflict exception.</p>
      def reason
        @data[:reason]
      end
    end

    # <p>A failure occurred on the server.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NeptuneGraph::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p>A specified resource could not be located.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NeptuneGraph::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>A service quota was exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NeptuneGraph::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that exceeded quota.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that exceeded quota. Ex: Graph, Snapshot</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The service code that exceeded quota.</p>
      def service_code
        @data[:service_code]
      end

      # <p>Service quota code of the resource for which quota was exceeded.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The exception was interrupted by throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NeptuneGraph::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the problem.</p>
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

    # <p>Request cannot be processed due to known reasons. Eg. partition full.</p>
    class UnprocessableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NeptuneGraph::Types::UnprocessableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason for the unprocessable exception.</p>
      def reason
        @data[:reason]
      end
    end

    # <p>A resource could not be validated.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::NeptuneGraph::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end

      # <p>The reason that the resource could not be validated.</p>
      def reason
        @data[:reason]
      end
    end
  end
end
