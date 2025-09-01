# frozen_string_literal: true

# This is generated code!

module Aws::Athena
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Athena::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Athena::Errors::ServiceError
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
  # * {MetadataException}
  # * {ResourceNotFoundException}
  # * {SessionAlreadyExistsException}
  # * {TooManyRequestsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Indicates a platform issue, which may be due to a transient condition or
    #             outage.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Athena::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that something is wrong with the input to the request. For example, a
    #             required parameter may be missing or out of range.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Athena::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def athena_error_code
        @data[:athena_error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>An exception that Athena received when it called a custom metastore.
    #             Occurs if the error is not caused by user input (<code>InvalidRequestException</code>)
    #             or from the Athena platform (<code>InternalServerException</code>). For
    #             example, if a user-created Lambda function is missing permissions, the
    #                 Lambda
    #             <code>4XX</code> exception is returned in a <code>MetadataException</code>.</p>
    class MetadataException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Athena::Types::MetadataException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A resource, such as a workgroup, was not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Athena::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The name of the Amazon resource.</p>
      def resource_name
        @data[:resource_name]
      end
    end

    # <p>The specified session already exists.</p>
    class SessionAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Athena::Types::SessionAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the request was throttled.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Athena::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def reason
        @data[:reason]
      end
    end
  end
end
