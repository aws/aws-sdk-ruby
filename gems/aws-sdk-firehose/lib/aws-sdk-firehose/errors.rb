# frozen_string_literal: true

# This is generated code!

module Aws::Firehose
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Firehose::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Firehose::Errors::ServiceError
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
  # * {ConcurrentModificationException}
  # * {InvalidArgumentException}
  # * {InvalidKMSResourceException}
  # * {InvalidSourceException}
  # * {LimitExceededException}
  # * {ResourceInUseException}
  # * {ResourceNotFoundException}
  # * {ServiceUnavailableException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Another modification has already happened. Fetch <code>VersionId</code> again and use
    #          it to update the destination.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Firehose::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified input parameter has a value that is not valid.</p>
    class InvalidArgumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Firehose::Types::InvalidArgumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Firehose throws this exception when an attempt to put records or to start
    #          or stop Firehose stream encryption fails. This happens when the KMS service throws one of
    #          the following exception types: <code>AccessDeniedException</code>,
    #             <code>InvalidStateException</code>, <code>DisabledException</code>, or
    #             <code>NotFoundException</code>.</p>
    class InvalidKMSResourceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Firehose::Types::InvalidKMSResourceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Only requests from CloudWatch Logs are supported when CloudWatch Logs decompression is enabled.</p>
    class InvalidSourceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Firehose::Types::InvalidSourceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end

    # <p>You have already reached the limit for a requested resource.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Firehose::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The resource is already in use and not available for this operation.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Firehose::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified resource could not be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Firehose::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The service is unavailable. Back off and retry the operation. If you continue to see
    #          the exception, throughput limits for the Firehose stream may have been exceeded. For more
    #          information about limits and how to request an increase, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon Firehose
    #          Limits</a>.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Firehose::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end
  end
end
