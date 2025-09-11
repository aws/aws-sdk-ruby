# frozen_string_literal: true

# This is generated code!

module Aws::KinesisVideoMedia
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::KinesisVideoMedia::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::KinesisVideoMedia::Errors::ServiceError
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
  # * {ClientLimitExceededException}
  # * {ConnectionLimitExceededException}
  # * {InvalidArgumentException}
  # * {InvalidEndpointException}
  # * {NotAuthorizedException}
  # * {ResourceNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of
    #       allowed client calls. Try making the call later.</p>
    class ClientLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoMedia::Types::ClientLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of
    #       allowed client connections.</p>
    class ConnectionLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoMedia::Types::ConnectionLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The value for this input parameter is invalid.</p>
    class InvalidArgumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoMedia::Types::InvalidArgumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> Status Code: 400, Caller used wrong endpoint to write data to a stream. On receiving
    #       such an exception, the user must call <code>GetDataEndpoint</code> with
    #         <code>AccessMode</code> set to "READ" and use the endpoint Kinesis Video returns in the next
    #         <code>GetMedia</code> call. </p>
    class InvalidEndpointException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoMedia::Types::InvalidEndpointException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Status Code: 403, The caller is not authorized to perform an operation on the given
    #       stream, or the token has expired.</p>
    class NotAuthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoMedia::Types::NotAuthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Status Code: 404, The stream with the given name does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoMedia::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
