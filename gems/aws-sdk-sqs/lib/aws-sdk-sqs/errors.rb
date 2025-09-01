# frozen_string_literal: true

# This is generated code!

module Aws::SQS
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SQS::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SQS::Errors::ServiceError
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
  # * {BatchEntryIdsNotDistinct}
  # * {BatchRequestTooLong}
  # * {EmptyBatchRequest}
  # * {InvalidAddress}
  # * {InvalidAttributeName}
  # * {InvalidAttributeValue}
  # * {InvalidBatchEntryId}
  # * {InvalidIdFormat}
  # * {InvalidMessageContents}
  # * {InvalidSecurity}
  # * {KmsAccessDenied}
  # * {KmsDisabled}
  # * {KmsInvalidKeyUsage}
  # * {KmsInvalidState}
  # * {KmsNotFound}
  # * {KmsOptInRequired}
  # * {KmsThrottled}
  # * {MessageNotInflight}
  # * {OverLimit}
  # * {PurgeQueueInProgress}
  # * {QueueDeletedRecently}
  # * {QueueDoesNotExist}
  # * {QueueNameExists}
  # * {ReceiptHandleIsInvalid}
  # * {RequestThrottled}
  # * {ResourceNotFoundException}
  # * {TooManyEntriesInBatchRequest}
  # * {UnsupportedOperation}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Two or more batch entries in the request have the same <code>Id</code>.</p>
    class BatchEntryIdsNotDistinct < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::BatchEntryIdsNotDistinct] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The length of all the messages put together is more than the limit.</p>
    class BatchRequestTooLong < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::BatchRequestTooLong] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The batch request doesn't contain any entries.</p>
    class EmptyBatchRequest < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::EmptyBatchRequest] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified ID is invalid.</p>
    class InvalidAddress < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::InvalidAddress] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified attribute doesn't exist.</p>
    class InvalidAttributeName < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::InvalidAttributeName] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A queue attribute value is invalid.</p>
    class InvalidAttributeValue < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::InvalidAttributeValue] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>Id</code> of a batch entry in a batch request doesn't abide by the
    #             specification.</p>
    class InvalidBatchEntryId < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::InvalidBatchEntryId] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified receipt handle isn't valid for the current version.</p>
    class InvalidIdFormat < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::InvalidIdFormat] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>The message contains characters outside the allowed set.</p>
    class InvalidMessageContents < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::InvalidMessageContents] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was not made over HTTPS or did not use SigV4 for signing.</p>
    class InvalidSecurity < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::InvalidSecurity] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The caller doesn't have the required KMS access.</p>
    class KmsAccessDenied < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::KmsAccessDenied] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class KmsDisabled < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::KmsDisabled] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected for one of the following reasons:</p>
    #          <ul>
    #             <li>
    #                <p>The KeyUsage value of the KMS key is incompatible with the API
    #                     operation.</p>
    #             </li>
    #             <li>
    #                <p>The encryption algorithm or signing algorithm specified for the operation is
    #                     incompatible with the type of key material in the KMS key (KeySpec).</p>
    #             </li>
    #          </ul>
    class KmsInvalidKeyUsage < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::KmsInvalidKeyUsage] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the state of the specified resource is not valid for
    #             this request.</p>
    class KmsInvalidState < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::KmsInvalidState] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified entity or resource could not be found.
    #         </p>
    class KmsNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::KmsNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified key policy isn't syntactically or
    #             semantically correct.</p>
    class KmsOptInRequired < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::KmsOptInRequired] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Amazon Web Services KMS throttles requests for the following conditions.</p>
    class KmsThrottled < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::KmsThrottled] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified message isn't in flight.</p>
    class MessageNotInflight < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::MessageNotInflight] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>The specified action violates a limit. For example, <code>ReceiveMessage</code>
    #             returns this error if the maximum number of in flight messages is reached and
    #                 <code>AddPermission</code> returns this error if the maximum number of permissions
    #             for the queue is reached.</p>
    class OverLimit < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::OverLimit] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the specified queue previously received a <code>PurgeQueue</code>
    #             request within the last 60 seconds (the time it can take to delete the messages in the
    #             queue).</p>
    class PurgeQueueInProgress < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::PurgeQueueInProgress] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You must wait 60 seconds after deleting a queue before you can create another queue
    #             with the same name.</p>
    class QueueDeletedRecently < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::QueueDeletedRecently] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Ensure that the <code>QueueUrl</code> is correct and that the queue has not been
    #             deleted.</p>
    class QueueDoesNotExist < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::QueueDoesNotExist] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A queue with this name already exists. Amazon SQS returns this error only if the request
    #             includes attributes whose values differ from those of the existing queue.</p>
    class QueueNameExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::QueueNameExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified receipt handle isn't valid.</p>
    class ReceiptHandleIsInvalid < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::ReceiptHandleIsInvalid] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    #          <ul>
    #             <li>
    #                <p>Exceeds the permitted request rate for the queue or for the recipient of the
    #                     request.</p>
    #             </li>
    #             <li>
    #                <p>Ensure that the request rate is within the Amazon SQS limits for
    #                     sending messages. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-quotas.html#quotas-requests">Amazon SQS quotas</a> in the <i>Amazon SQS
    #                         Developer Guide</i>.</p>
    #             </li>
    #          </ul>
    class RequestThrottled < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::RequestThrottled] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more specified resources don't exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The batch request contains more entries than permissible. For Amazon SQS, the
    #             maximum number of entries you can include in a single <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_SendMessageBatch.html">SendMessageBatch</a>, <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_DeleteMessageBatch.html">DeleteMessageBatch</a>, or <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_ChangeMessageVisibilityBatch.html">ChangeMessageVisibilityBatch</a> request is 10.</p>
    class TooManyEntriesInBatchRequest < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::TooManyEntriesInBatchRequest] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Error code 400. Unsupported operation.</p>
    class UnsupportedOperation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SQS::Types::UnsupportedOperation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
