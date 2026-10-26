# frozen_string_literal: true

# This is generated code!

module Aws::Kinesis
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Kinesis::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Kinesis::Errors::ServiceError
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
  # * {DryRunOperationException}
  # * {ExpiredIteratorException}
  # * {ExpiredNextTokenException}
  # * {InternalFailureException}
  # * {InvalidArgumentException}
  # * {KMSAccessDeniedException}
  # * {KMSDisabledException}
  # * {KMSInvalidStateException}
  # * {KMSNotFoundException}
  # * {KMSOptInRequired}
  # * {KMSThrottlingException}
  # * {LimitExceededException}
  # * {ProvisionedThroughputExceededException}
  # * {ResourceInUseException}
  # * {ResourceNotFoundException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Specifies that you do not have the permissions required to perform this
    #             operation.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the DryRun parameter was specified.</p>
    class DryRunOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::DryRunOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided iterator exceeds the maximum age allowed.</p>
    class ExpiredIteratorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::ExpiredIteratorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The pagination token passed to the operation is expired.</p>
    class ExpiredNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::ExpiredNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The processing of the request failed because of an unknown error, exception, or
    #             failure.</p>
    class InternalFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::InternalFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A specified parameter exceeds its restrictions, is not supported, or can't be used.
    #             For more information, see the returned message.</p>
    class InvalidArgumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::InvalidArgumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The ciphertext references a key that doesn't exist or that you don't have access
    #             to.</p>
    class KMSAccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::KMSAccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified customer master key (CMK) isn't
    #             enabled.</p>
    class KMSDisabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::KMSDisabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the state of the specified resource isn't valid for
    #             this request. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a
    #                 Customer Master Key</a> in the <i>Amazon Web Services Key Management
    #                 Service Developer Guide</i>.</p>
    class KMSInvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::KMSInvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified entity or resource can't be
    #             found.</p>
    class KMSNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::KMSNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The Amazon Web Services access key ID needs a subscription for the service.</p>
    class KMSOptInRequired < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::KMSOptInRequired] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request was denied due to request throttling. For more information about
    #             throttling, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#requests-per-second">Limits</a> in
    #             the <i>Amazon Web Services Key Management Service Developer
    #             Guide</i>.</p>
    class KMSThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::KMSThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested resource exceeds the maximum number allowed, or the number of concurrent
    #             stream requests exceeds the maximum number allowed. </p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request rate for the stream is too high, or the requested data is too large for
    #             the available throughput. Reduce the frequency or size of your requests. For more
    #             information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the
    #                 <i>Amazon Kinesis Data Streams Developer Guide</i>, and <a href="https://docs.aws.amazon.com/general/latest/gr/api-retries.html">Error Retries and
    #                 Exponential Backoff in Amazon Web Services</a> in the <i>Amazon Web Services General Reference</i>.</p>
    class ProvisionedThroughputExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::ProvisionedThroughputExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The resource is not available for this operation. For successful operation, the
    #             resource must be in the <code>ACTIVE</code> state.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested resource could not be found. The stream might not be specified
    #             correctly.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message that provides information about the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Specifies that you tried to invoke this API for a data stream with the on-demand
    #             capacity mode. This API is only supported for data streams with the provisioned capacity
    #             mode. </p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kinesis::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
