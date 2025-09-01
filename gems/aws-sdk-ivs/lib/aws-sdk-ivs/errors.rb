# frozen_string_literal: true

# This is generated code!

module Aws::Ivs
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Ivs::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Ivs::Errors::ServiceError
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
  # * {ChannelNotBroadcasting}
  # * {ConflictException}
  # * {InternalServerException}
  # * {PendingVerification}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {StreamUnavailable}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p/>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Ivs::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>User does not have sufficient access to perform this action.</p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class ChannelNotBroadcasting < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Ivs::Types::ChannelNotBroadcasting] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The stream is offline for the given channel ARN.</p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Ivs::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Updating or deleting a resource can cause an inconsistent state.</p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Ivs::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Unexpected error during processing of request.</p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class PendingVerification < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Ivs::Types::PendingVerification] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Your account is pending verification. </p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Ivs::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Request references a resource which does not exist.</p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Ivs::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Request would cause a service quota to be exceeded.</p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class StreamUnavailable < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Ivs::Types::StreamUnavailable] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The stream is temporarily unavailable.</p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Ivs::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Request was denied due to request throttling.</p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Ivs::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
      def exception_message
        @data[:exception_message]
      end
    end
  end
end
