# frozen_string_literal: true

# This is generated code!

module Aws::DLM
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::DLM::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DLM::Errors::ServiceError
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
  # * {InternalServerException}
  # * {InvalidRequestException}
  # * {LimitExceededException}
  # * {ResourceNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The service failed in an unexpected way.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DLM::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>Bad request. The request is missing required parameters or has invalid
    # 			parameters.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DLM::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>The request omitted one or more required parameters.</p>
      def required_parameters
        @data[:required_parameters]
      end

      # <p>The request included parameters that cannot be provided together.</p>
      def mutually_exclusive_parameters
        @data[:mutually_exclusive_parameters]
      end
    end

    # <p>The request failed because a limit was exceeded.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DLM::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>Value is the type of resource for which a limit was exceeded.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>A requested resource was not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DLM::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>Value is the type of resource that was not found.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>Value is a list of resource IDs that were not found.</p>
      def resource_ids
        @data[:resource_ids]
      end
    end
  end
end
