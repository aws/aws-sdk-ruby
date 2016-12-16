# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SQS
  module Types

    #
    # @note When making an API call, you may pass AddPermissionRequest
    #   data as a hash:
    #
    #       {
    #         queue_url: "String", # required
    #         label: "String", # required
    #         aws_account_ids: ["String"], # required
    #         actions: ["String"], # required
    #       }
    #
    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to take action on.
    #
    #   Queue URLs are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The unique identification of the permission you're setting (e.g.,
    #   `AliceSendMessage`). Constraints: Maximum 80 characters;
    #   alphanumeric characters, hyphens (-), and underscores (\_) are
    #   allowed.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_ids
    #   The AWS account number of the [principal][1] who will be given
    #   permission. The principal must have an AWS account, but does not
    #   need to be signed up for Amazon SQS. For information about locating
    #   the AWS account identification, see [Your AWS Identifiers][2] in the
    #   *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P
    #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AWSCredentials.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] actions
    #   The action the client wants to allow for the specified principal.
    #   The following are valid values: `* | SendMessage | ReceiveMessage |
    #   DeleteMessage | ChangeMessageVisibility | GetQueueAttributes |
    #   GetQueueUrl`. For more information about these actions, see
    #   [Understanding Permissions][1] in the *Amazon SQS Developer Guide*.
    #
    #   Specifying `SendMessage`, `DeleteMessage`, or
    #   `ChangeMessageVisibility` for the `ActionName.n` also grants
    #   permissions for the corresponding batch versions of those actions:
    #   `SendMessageBatch`, `DeleteMessageBatch`, and
    #   `ChangeMessageVisibilityBatch`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html#PermissionTypes
    #   @return [Array<String>]
    #
    class AddPermissionRequest < Struct.new(
      :queue_url,
      :label,
      :aws_account_ids,
      :actions)
      include Aws::Structure
    end

    # This is used in the responses of batch API to give a detailed
    # description of the result of an action on each entry in the request.
    #
    # @!attribute [rw] id
    #   The id of an entry in a batch request.
    #   @return [String]
    #
    # @!attribute [rw] sender_fault
    #   Whether the error happened due to the sender's fault.
    #   @return [Boolean]
    #
    # @!attribute [rw] code
    #   An error code representing why the action failed on this entry.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message explaining why the action failed on this entry.
    #   @return [String]
    #
    class BatchResultErrorEntry < Struct.new(
      :id,
      :sender_fault,
      :code,
      :message)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass ChangeMessageVisibilityBatchRequest
    #   data as a hash:
    #
    #       {
    #         queue_url: "String", # required
    #         entries: [ # required
    #           {
    #             id: "String", # required
    #             receipt_handle: "String", # required
    #             visibility_timeout: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to take action on.
    #
    #   Queue URLs are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   A list of receipt handles of the messages for which the visibility
    #   timeout must be changed.
    #   @return [Array<Types::ChangeMessageVisibilityBatchRequestEntry>]
    #
    class ChangeMessageVisibilityBatchRequest < Struct.new(
      :queue_url,
      :entries)
      include Aws::Structure
    end

    # Encloses a receipt handle and an entry id for each message in
    # ChangeMessageVisibilityBatch.
    #
    # All of the following parameters are list parameters that must be
    # prefixed with `ChangeMessageVisibilityBatchRequestEntry.n`, where `n`
    # is an integer value starting with 1. For example, a parameter list for
    # this action might look like this:
    #
    # `&amp;ChangeMessageVisibilityBatchRequestEntry.1.Id=change_visibility_msg_2`
    #
    # `&amp;ChangeMessageVisibilityBatchRequestEntry.1.ReceiptHandle=<replaceable>Your_Receipt_Handle</replaceable>`
    #
    # `&amp;ChangeMessageVisibilityBatchRequestEntry.1.VisibilityTimeout=45`
    #
    # @note When making an API call, you may pass ChangeMessageVisibilityBatchRequestEntry
    #   data as a hash:
    #
    #       {
    #         id: "String", # required
    #         receipt_handle: "String", # required
    #         visibility_timeout: 1,
    #       }
    #
    # @!attribute [rw] id
    #   An identifier for this particular receipt handle. This is used to
    #   communicate the result. Note that the `Id`s of a batch request need
    #   to be unique within the request.
    #   @return [String]
    #
    # @!attribute [rw] receipt_handle
    #   A receipt handle.
    #   @return [String]
    #
    # @!attribute [rw] visibility_timeout
    #   The new value (in seconds) for the message's visibility timeout.
    #   @return [Integer]
    #
    class ChangeMessageVisibilityBatchRequestEntry < Struct.new(
      :id,
      :receipt_handle,
      :visibility_timeout)
      include Aws::Structure
    end

    # For each message in the batch, the response contains a
    # ChangeMessageVisibilityBatchResultEntry tag if the message succeeds or
    # a BatchResultErrorEntry tag if the message fails.
    #
    # @!attribute [rw] successful
    #   A list of ChangeMessageVisibilityBatchResultEntry items.
    #   @return [Array<Types::ChangeMessageVisibilityBatchResultEntry>]
    #
    # @!attribute [rw] failed
    #   A list of BatchResultErrorEntry items.
    #   @return [Array<Types::BatchResultErrorEntry>]
    #
    class ChangeMessageVisibilityBatchResult < Struct.new(
      :successful,
      :failed)
      include Aws::Structure
    end

    # Encloses the id of an entry in ChangeMessageVisibilityBatch.
    #
    # @!attribute [rw] id
    #   Represents a message whose visibility timeout has been changed
    #   successfully.
    #   @return [String]
    #
    class ChangeMessageVisibilityBatchResultEntry < Struct.new(
      :id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ChangeMessageVisibilityRequest
    #   data as a hash:
    #
    #       {
    #         queue_url: "String", # required
    #         receipt_handle: "String", # required
    #         visibility_timeout: 1, # required
    #       }
    #
    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to take action on.
    #
    #   Queue URLs are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] receipt_handle
    #   The receipt handle associated with the message whose visibility
    #   timeout should be changed. This parameter is returned by the
    #   ReceiveMessage action.
    #   @return [String]
    #
    # @!attribute [rw] visibility_timeout
    #   The new value (in seconds - from 0 to 43200 - maximum 12 hours) for
    #   the message's visibility timeout.
    #   @return [Integer]
    #
    class ChangeMessageVisibilityRequest < Struct.new(
      :queue_url,
      :receipt_handle,
      :visibility_timeout)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass CreateQueueRequest
    #   data as a hash:
    #
    #       {
    #         queue_name: "String", # required
    #         attributes: {
    #           "All" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] queue_name
    #   The name of the new queue. The following limits apply to this name:
    #
    #   * A queue name can have up to 80 characters.
    #
    #   * The following are accepted: alphanumeric chatacters, hyphens
    #     (`-`), and underscores (`_`).
    #
    #   * A FIFO queue name must end with the `.fifo` suffix.
    #
    #   Queue names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A map of attributes with their corresponding values.
    #
    #   The following lists the names, descriptions, and values of the
    #   special request parameters that the `CreateQueue` action uses:
    #
    #   * `DelaySeconds` - The number of seconds for which the delivery of
    #     all messages in the queue is delayed. An integer from 0 to 900 (15
    #     minutes). The default is 0 (zero).
    #
    #   * `MaximumMessageSize` - The limit of how many bytes a message can
    #     contain before Amazon SQS rejects it. An integer from 1,024 bytes
    #     (1 KiB) up to 262,144 bytes (256 KiB). The default is 262,144 (256
    #     KiB).
    #
    #   * `MessageRetentionPeriod` - The number of seconds for which Amazon
    #     SQS retains a message. An integer representing seconds, from 60 (1
    #     minute) to 120,9600 (14 days). The default is 345,600 (4 days).
    #
    #   * `Policy` - The queue's policy. A valid AWS policy. For more
    #     information about policy structure, see [Overview of AWS IAM
    #     Policies][1] in the *Amazon IAM User Guide*.
    #
    #   * `ReceiveMessageWaitTimeSeconds` - The number of seconds for which
    #     a ReceiveMessage action will wait for a message to arrive. An
    #     integer from 0 to 20 (seconds). The default is 0.
    #
    #   * `RedrivePolicy` - The parameters for the dead letter queue
    #     functionality of the source queue. For more information about the
    #     redrive policy and dead letter queues, see [Using Amazon SQS Dead
    #     Letter Queues][2] in the *Amazon SQS Developer Guide*.
    #
    #     <note markdown="1"> The dead letter queue of a FIFO queue must also be a FIFO queue.
    #     Similarly, the dead letter queue of a standard queue must also be
    #     a standard queue.
    #
    #      </note>
    #
    #   * `VisibilityTimeout` - The visibility timeout for the queue. An
    #     integer from 0 to 43200 (12 hours). The default is 30. For more
    #     information about the visibility timeout, see [Visibility
    #     Timeout][3] in the *Amazon SQS Developer Guide*.
    #
    #   The following attributes apply only to [FIFO (first-in-first-out)
    #   queues][4]\:
    #
    #   * `FifoQueue` - Designates a queue as FIFO. You can provide this
    #     attribute only during queue creation; you can't change it for an
    #     existing queue. When you set this attribute, you must provide a
    #     `MessageGroupId` explicitly.
    #
    #     For more information, see [FIFO Queue Logic][5] in the *Amazon SQS
    #     Developer Guide*.
    #
    #   * `ContentBasedDeduplication` - Enables content-based deduplication.
    #     For more information, see [Exactly-Once Processing][6] in the
    #     *Amazon SQS Developer Guide*.
    #
    #     * Every message must have a unique `MessageDeduplicationId`,
    #
    #       * You may provide a `MessageDeduplicationId` explicitly.
    #
    #       * If you aren't able to provide a `MessageDeduplicationId` and
    #         you enable `ContentBasedDeduplication` for your queue, Amazon
    #         SQS uses a SHA-256 hash to generate the
    #         `MessageDeduplicationId` using the body of the message (but
    #         not the attributes of the message).
    #
    #       * If you don't provide a `MessageDeduplicationId` and the queue
    #         doesn't have `ContentBasedDeduplication` set, the action
    #         fails with an error.
    #
    #       * If the queue has `ContentBasedDeduplication` set, your
    #         `MessageDeduplicationId` overrides the generated one.
    #
    #     * When `ContentBasedDeduplication` is in effect, messages with
    #       identical content sent within the deduplication interval are
    #       treated as duplicates and only one copy of the message is
    #       delivered.
    #
    #     * You can also use `ContentBasedDeduplication` for messages with
    #       identical content to be treated as duplicates.
    #
    #     * If you send one message with `ContentBasedDeduplication` enabled
    #       and then another message with a `MessageDeduplicationId` that is
    #       the same as the one generated for the first
    #       `MessageDeduplicationId`, the two messages are treated as
    #       duplicates and only one copy of the message is delivered.
    #
    #   Any other valid special request parameters that are specified (such
    #   as `ApproximateNumberOfMessages`,
    #   `ApproximateNumberOfMessagesDelayed`,
    #   `ApproximateNumberOfMessagesNotVisible`, `CreatedTimestamp`,
    #   `LastModifiedTimestamp`, and `QueueArn`) will be ignored.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html
    #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
    #   [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    #   [4]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html
    #   [5]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic
    #   [6]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing
    #   @return [Hash<String,String>]
    #
    class CreateQueueRequest < Struct.new(
      :queue_name,
      :attributes)
      include Aws::Structure
    end

    # Returns the QueueUrl element of the created queue.
    #
    # @!attribute [rw] queue_url
    #   The URL for the created Amazon SQS queue.
    #   @return [String]
    #
    class CreateQueueResult < Struct.new(
      :queue_url)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass DeleteMessageBatchRequest
    #   data as a hash:
    #
    #       {
    #         queue_url: "String", # required
    #         entries: [ # required
    #           {
    #             id: "String", # required
    #             receipt_handle: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to take action on.
    #
    #   Queue URLs are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   A list of receipt handles for the messages to be deleted.
    #   @return [Array<Types::DeleteMessageBatchRequestEntry>]
    #
    class DeleteMessageBatchRequest < Struct.new(
      :queue_url,
      :entries)
      include Aws::Structure
    end

    # Encloses a receipt handle and an identifier for it.
    #
    # @note When making an API call, you may pass DeleteMessageBatchRequestEntry
    #   data as a hash:
    #
    #       {
    #         id: "String", # required
    #         receipt_handle: "String", # required
    #       }
    #
    # @!attribute [rw] id
    #   An identifier for this particular receipt handle. This is used to
    #   communicate the result. Note that the `Id`s of a batch request need
    #   to be unique within the request.
    #   @return [String]
    #
    # @!attribute [rw] receipt_handle
    #   A receipt handle.
    #   @return [String]
    #
    class DeleteMessageBatchRequestEntry < Struct.new(
      :id,
      :receipt_handle)
      include Aws::Structure
    end

    # For each message in the batch, the response contains a
    # DeleteMessageBatchResultEntry tag if the message is deleted or a
    # BatchResultErrorEntry tag if the message can't be deleted.
    #
    # @!attribute [rw] successful
    #   A list of DeleteMessageBatchResultEntry items.
    #   @return [Array<Types::DeleteMessageBatchResultEntry>]
    #
    # @!attribute [rw] failed
    #   A list of BatchResultErrorEntry items.
    #   @return [Array<Types::BatchResultErrorEntry>]
    #
    class DeleteMessageBatchResult < Struct.new(
      :successful,
      :failed)
      include Aws::Structure
    end

    # Encloses the id an entry in DeleteMessageBatch.
    #
    # @!attribute [rw] id
    #   Represents a successfully deleted message.
    #   @return [String]
    #
    class DeleteMessageBatchResultEntry < Struct.new(
      :id)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass DeleteMessageRequest
    #   data as a hash:
    #
    #       {
    #         queue_url: "String", # required
    #         receipt_handle: "String", # required
    #       }
    #
    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to take action on.
    #
    #   Queue URLs are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] receipt_handle
    #   The receipt handle associated with the message to delete.
    #   @return [String]
    #
    class DeleteMessageRequest < Struct.new(
      :queue_url,
      :receipt_handle)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass DeleteQueueRequest
    #   data as a hash:
    #
    #       {
    #         queue_url: "String", # required
    #       }
    #
    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to take action on.
    #
    #   Queue URLs are case-sensitive.
    #   @return [String]
    #
    class DeleteQueueRequest < Struct.new(
      :queue_url)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass GetQueueAttributesRequest
    #   data as a hash:
    #
    #       {
    #         queue_url: "String", # required
    #         attribute_names: ["All"], # accepts All, Policy, VisibilityTimeout, MaximumMessageSize, MessageRetentionPeriod, ApproximateNumberOfMessages, ApproximateNumberOfMessagesNotVisible, CreatedTimestamp, LastModifiedTimestamp, QueueArn, ApproximateNumberOfMessagesDelayed, DelaySeconds, ReceiveMessageWaitTimeSeconds, RedrivePolicy, FifoQueue, ContentBasedDeduplication
    #       }
    #
    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to take action on.
    #
    #   Queue URLs are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] attribute_names
    #   A list of attributes for which to retrieve information.
    #
    #   <note markdown="1"> Going forward, new attributes might be added. If you are writing
    #   code that calls this action, we recommend that you structure your
    #   code so that it can handle new attributes gracefully.
    #
    #    </note>
    #
    #   The following attributes are supported:
    #
    #   * `All` - Returns all values.
    #
    #   * `ApproximateNumberOfMessages` - Returns the approximate number of
    #     visible messages in a queue. For more information, see [Resources
    #     Required to Process Messages][1] in the *Amazon SQS Developer
    #     Guide*.
    #
    #   * `ApproximateNumberOfMessagesDelayed` - Returns the approximate
    #     number of messages that are waiting to be added to the queue.
    #
    #   * `ApproximateNumberOfMessagesNotVisible` - Returns the approximate
    #     number of messages that have not timed-out and are not deleted.
    #     For more information, see [Resources Required to Process
    #     Messages][1] in the *Amazon SQS Developer Guide*.
    #
    #   * `CreatedTimestamp` - Returns the time when the queue was created
    #     in seconds (epoch time).
    #
    #   * `DelaySeconds` - Returns the default delay on the queue in
    #     seconds.
    #
    #   * `LastModifiedTimestamp` - Returns the time when the queue was last
    #     changed in seconds (epoch time).
    #
    #   * `MaximumMessageSize` - Returns the limit of how many bytes a
    #     message can contain before Amazon SQS rejects it.
    #
    #   * `MessageRetentionPeriod` - Returns the number of seconds for which
    #     Amazon SQS retains a message.
    #
    #   * `Policy` - Returns the policy of the queue.
    #
    #   * `QueueArn` - Returns the Amazon resource name (ARN) of the queue.
    #
    #   * `ReceiveMessageWaitTimeSeconds` - Returns the number of seconds
    #     for which ReceiveMessage call will wait for a message to arrive.
    #
    #   * `RedrivePolicy` - Returns the parameters for dead letter queue
    #     functionality of the source queue. For more information about the
    #     redrive policy and dead letter queues, see [Using Amazon SQS Dead
    #     Letter Queues][2] in the *Amazon SQS Developer Guide*.
    #
    #   * `VisibilityTimeout` - Returns the visibility timeout for the
    #     queue. For more information about the visibility timeout, see
    #     [Visibility Timeout][3] in the *Amazon SQS Developer Guide*.
    #
    #   The following attributes apply only to [FIFO (first-in-first-out)
    #   queues][4]\:
    #
    #   * `FifoQueue` - Returns whether the queue is FIFO. For more
    #     information, see [FIFO Queue Logic][5] in the *Amazon SQS
    #     Developer Guide*.
    #
    #   * `ContentBasedDeduplication` - Returns whether content-based
    #     deduplication is enabled for the queue. For more information, see
    #     [Exactly-Once Processing][6] in the *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-resources-required-process-messages.html
    #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
    #   [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    #   [4]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html
    #   [5]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic
    #   [6]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing
    #   @return [Array<String>]
    #
    class GetQueueAttributesRequest < Struct.new(
      :queue_url,
      :attribute_names)
      include Aws::Structure
    end

    # A list of returned queue attributes.
    #
    # @!attribute [rw] attributes
    #   A map of attributes to the respective values.
    #   @return [Hash<String,String>]
    #
    class GetQueueAttributesResult < Struct.new(
      :attributes)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass GetQueueUrlRequest
    #   data as a hash:
    #
    #       {
    #         queue_name: "String", # required
    #         queue_owner_aws_account_id: "String",
    #       }
    #
    # @!attribute [rw] queue_name
    #   The name of the queue whose URL must be fetched. Maximum 80
    #   characters; alphanumeric characters, hyphens (-), and underscores
    #   (\_) are allowed.
    #
    #   Queue names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] queue_owner_aws_account_id
    #   The AWS account ID of the account that created the queue.
    #   @return [String]
    #
    class GetQueueUrlRequest < Struct.new(
      :queue_name,
      :queue_owner_aws_account_id)
      include Aws::Structure
    end

    # For more information, see [Responses][1] in the *Amazon SQS Developer
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/UnderstandingResponses.html
    #
    # @!attribute [rw] queue_url
    #   The URL for the queue.
    #   @return [String]
    #
    class GetQueueUrlResult < Struct.new(
      :queue_url)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass ListDeadLetterSourceQueuesRequest
    #   data as a hash:
    #
    #       {
    #         queue_url: "String", # required
    #       }
    #
    # @!attribute [rw] queue_url
    #   The queue URL of a dead letter queue.
    #
    #   Queue URLs are case-sensitive.
    #   @return [String]
    #
    class ListDeadLetterSourceQueuesRequest < Struct.new(
      :queue_url)
      include Aws::Structure
    end

    # A list of your dead letter source queues.
    #
    # @!attribute [rw] queue_urls
    #   A list of source queue URLs that have the RedrivePolicy queue
    #   attribute configured with a dead letter queue.
    #   @return [Array<String>]
    #
    class ListDeadLetterSourceQueuesResult < Struct.new(
      :queue_urls)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass ListQueuesRequest
    #   data as a hash:
    #
    #       {
    #         queue_name_prefix: "String",
    #       }
    #
    # @!attribute [rw] queue_name_prefix
    #   A string to use for filtering the list results. Only those queues
    #   whose name begins with the specified string are returned.
    #
    #   Queue names are case-sensitive.
    #   @return [String]
    #
    class ListQueuesRequest < Struct.new(
      :queue_name_prefix)
      include Aws::Structure
    end

    # A list of your queues.
    #
    # @!attribute [rw] queue_urls
    #   A list of queue URLs, up to 1000 entries.
    #   @return [Array<String>]
    #
    class ListQueuesResult < Struct.new(
      :queue_urls)
      include Aws::Structure
    end

    # An Amazon SQS message.
    #
    # @!attribute [rw] message_id
    #   A unique identifier for the message. Message IDs are considered
    #   unique across all AWS accounts for an extended period of time.
    #   @return [String]
    #
    # @!attribute [rw] receipt_handle
    #   An identifier associated with the act of receiving the message. A
    #   new receipt handle is returned every time you receive a message.
    #   When deleting a message, you provide the last received receipt
    #   handle to delete the message.
    #   @return [String]
    #
    # @!attribute [rw] md5_of_body
    #   An MD5 digest of the non-URL-encoded message body string.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The message's contents (not URL-encoded).
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   `SenderId`, `SentTimestamp`, `ApproximateReceiveCount`, and/or
    #   `ApproximateFirstReceiveTimestamp`. `SentTimestamp` and
    #   `ApproximateFirstReceiveTimestamp` are each returned as an integer
    #   representing the [epoch time][1] in milliseconds.
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/Unix_time
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] md5_of_message_attributes
    #   An MD5 digest of the non-URL-encoded message attribute string. This
    #   can be used to verify that Amazon SQS received the message
    #   correctly. Amazon SQS first URL decodes the message before creating
    #   the MD5 digest. For information about MD5, see [RFC1321][1].
    #
    #
    #
    #   [1]: https://www.ietf.org/rfc/rfc1321.txt
    #   @return [String]
    #
    # @!attribute [rw] message_attributes
    #   Each message attribute consists of a Name, Type, and Value. For more
    #   information, see [Message Attribute Items and Validation][1] in the
    #   *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation
    #   @return [Hash<String,Types::MessageAttributeValue>]
    #
    class Message < Struct.new(
      :message_id,
      :receipt_handle,
      :md5_of_body,
      :body,
      :attributes,
      :md5_of_message_attributes,
      :message_attributes)
      include Aws::Structure
    end

    # The user-specified message attribute value. For string data types, the
    # value attribute has the same restrictions on the content as the
    # message body. For more information, see SendMessage.
    #
    # Name, type, and value must not be empty or null. In addition, the
    # message body should not be empty or null. All parts of the message
    # attribute, including name, type, and value, are included in the
    # message size restriction, which is currently 256 KB (262,144 bytes).
    #
    # @note When making an API call, you may pass MessageAttributeValue
    #   data as a hash:
    #
    #       {
    #         string_value: "String",
    #         binary_value: "data",
    #         string_list_values: ["String"],
    #         binary_list_values: ["data"],
    #         data_type: "String", # required
    #       }
    #
    # @!attribute [rw] string_value
    #   Strings are Unicode with UTF8 binary encoding. For a list of code
    #   values, see [ASCII Printable Characters][1].
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
    #   @return [String]
    #
    # @!attribute [rw] binary_value
    #   Binary type attributes can store any binary data, for example,
    #   compressed data, encrypted data, or images.
    #   @return [String]
    #
    # @!attribute [rw] string_list_values
    #   Not implemented. Reserved for future use.
    #   @return [Array<String>]
    #
    # @!attribute [rw] binary_list_values
    #   Not implemented. Reserved for future use.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_type
    #   Amazon SQS supports the following logical data types: String,
    #   Number, and Binary. For the Number data type, you must use
    #   StringValue.
    #
    #   You can also append custom labels. For more information, see
    #   [Message Attribute Data Types and Validation][1] in the *Amazon SQS
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-data-types-validation
    #   @return [String]
    #
    class MessageAttributeValue < Struct.new(
      :string_value,
      :binary_value,
      :string_list_values,
      :binary_list_values,
      :data_type)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass PurgeQueueRequest
    #   data as a hash:
    #
    #       {
    #         queue_url: "String", # required
    #       }
    #
    # @!attribute [rw] queue_url
    #   The queue URL of the queue to delete the messages from when using
    #   the `PurgeQueue` API.
    #
    #   Queue URLs are case-sensitive.
    #   @return [String]
    #
    class PurgeQueueRequest < Struct.new(
      :queue_url)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass ReceiveMessageRequest
    #   data as a hash:
    #
    #       {
    #         queue_url: "String", # required
    #         attribute_names: ["All"], # accepts All, Policy, VisibilityTimeout, MaximumMessageSize, MessageRetentionPeriod, ApproximateNumberOfMessages, ApproximateNumberOfMessagesNotVisible, CreatedTimestamp, LastModifiedTimestamp, QueueArn, ApproximateNumberOfMessagesDelayed, DelaySeconds, ReceiveMessageWaitTimeSeconds, RedrivePolicy, FifoQueue, ContentBasedDeduplication
    #         message_attribute_names: ["MessageAttributeName"],
    #         max_number_of_messages: 1,
    #         visibility_timeout: 1,
    #         wait_time_seconds: 1,
    #         receive_request_attempt_id: "String",
    #       }
    #
    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to take action on.
    #
    #   Queue URLs are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] attribute_names
    #   A list of attributes that need to be returned along with each
    #   message. These attributes include:
    #
    #   * `All` - Returns all values.
    #
    #   * `ApproximateFirstReceiveTimestamp` - Returns the time the message
    #     was first received from the queue (epoch time in milliseconds).
    #
    #   * `ApproximateReceiveCount` - Returns the number of times a message
    #     has been received from the queue but not deleted.
    #
    #   * `SenderId`
    #
    #     * For an IAM user, returns the IAM user ID, for example
    #       `ABCDEFGHI1JKLMNOPQ23R`.
    #
    #     * For an IAM role, returns the IAM role ID, for example
    #       `ABCDE1F2GH3I4JK5LMNOP:i-a123b456`.
    #
    #   * `SentTimestamp` - Returns the time the message was sent to the
    #     queue (epoch time in milliseconds).
    #
    #   * `MessageDeduplicationId` - Returns the value provided by the
    #     sender that calls the ` SendMessage ` action.
    #
    #   * `MessageGroupId` - Returns the value provided by the sender that
    #     calls the ` SendMessage ` action. Messages with the same
    #     `MessageGroupId` are returned in sequence.
    #
    #   * `SequenceNumber` - Returns the value provided by Amazon SQS.
    #
    #   Any other valid special request parameters (such as the following)
    #   that are specified are ignored:
    #
    #   * `ApproximateNumberOfMessages`
    #
    #   * `ApproximateNumberOfMessagesDelayed`
    #
    #   * `ApproximateNumberOfMessagesNotVisible`
    #
    #   * `CreatedTimestamp`
    #
    #   * `ContentBasedDeduplication`
    #
    #   * `DelaySeconds`
    #
    #   * `LastModifiedTimestamp`
    #
    #   * `MaximumMessageSize`
    #
    #   * `MessageRetentionPeriod`
    #
    #   * `Policy`
    #
    #   * `QueueArn`,
    #
    #   * `ReceiveMessageWaitTimeSeconds`
    #
    #   * `RedrivePolicy`
    #
    #   * `FifoQueue`
    #
    #   * `VisibilityTimeout`
    #   @return [Array<String>]
    #
    # @!attribute [rw] message_attribute_names
    #   The name of the message attribute, where *N* is the index. The
    #   message attribute name can contain the following characters: A-Z,
    #   a-z, 0-9, underscore (\_), hyphen (-), and period (.). The name must
    #   not start or end with a period, and it should not have successive
    #   periods. The name is case sensitive and must be unique among all
    #   attribute names for the message. The name can be up to 256
    #   characters long. The name can't start with "AWS." or "Amazon."
    #   (or any variations in casing), because these prefixes are reserved
    #   for use by Amazon Web Services.
    #
    #   When using `ReceiveMessage`, you can send a list of attribute names
    #   to receive, or you can return all of the attributes by specifying
    #   "All" or ".*" in your request. You can also use "bar.*" to
    #   return all message attributes starting with the "bar" prefix.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_number_of_messages
    #   The maximum number of messages to return. Amazon SQS never returns
    #   more messages than this value but might return fewer. Values can be
    #   from 1 to 10. Default is 1.
    #
    #   All of the messages are not necessarily returned.
    #   @return [Integer]
    #
    # @!attribute [rw] visibility_timeout
    #   The duration (in seconds) that the received messages are hidden from
    #   subsequent retrieve requests after being retrieved by a
    #   `ReceiveMessage` request.
    #   @return [Integer]
    #
    # @!attribute [rw] wait_time_seconds
    #   The duration (in seconds) for which the call will wait for a message
    #   to arrive in the queue before returning. If a message is available,
    #   the call will return sooner than WaitTimeSeconds.
    #   @return [Integer]
    #
    # @!attribute [rw] receive_request_attempt_id
    #   This parameter applies only to FIFO (first-in-first-out) queues.
    #
    #   The token used for deduplication of `ReceiveMessage` calls. If a
    #   networking issue occurs after a `ReceiveMessage` action, and instead
    #   of a response you receive a generic error, you can retry the same
    #   action with an identical `ReceiveRequestAttemptId` to retrieve the
    #   same set of messages, even if their visibility timeout has not yet
    #   expired.
    #
    #   * You can use `ReceiveRequestAttemptId` only for 5 minutes after a
    #     `ReceiveMessage` action.
    #
    #   * When you set `FifoQueue`, a caller of the `ReceiveMessage` action
    #     can provide a `ReceiveRequestAttemptId` explicitly.
    #
    #   * If a caller of the `ReceiveMessage` action doesn't provide a
    #     `ReceiveRequestAttemptId`, Amazon SQS generates a
    #     `ReceiveRequestAttemptId`.
    #
    #   * You can retry the `ReceiveMessage` action with the same
    #     `ReceiveRequestAttemptId` if none of the messages have been
    #     modified (deleted or had their visibility changes).
    #
    #   * During a visibility timeout, subsequent calls with the same
    #     `ReceiveRequestAttemptId` return the same messages and receipt
    #     handles. If a retry occurs within the deduplication interval, it
    #     resets the visibility timeout. For more information, see
    #     [Visibility Timeout][1] in the *Amazon Simple Queue Service
    #     Developer Guide*.
    #
    #     If a caller of the `ReceiveMessage` action is still processing
    #     messages when the visibility timeout expires and messages become
    #     visible, another worker reading from the same queue can receive
    #     the same messages and therefore process duplicates. Also, if a
    #     reader whose message processing time is longer than the visibility
    #     timeout tries to delete the processed messages, the action fails
    #     with an error.
    #
    #      To mitigate this effect, ensure that your application observes a
    #     safe threshold before the visibility timeout expires and extend
    #     the visibility timeout as necessary.
    #
    #   * While messages with a particular `MessageGroupId` are invisible,
    #     no more messages belonging to the same `MessageGroupId` are
    #     returned until the visibility timeout expires. You can still
    #     receive messages with another `MessageGroupId` as long as it is
    #     also visible.
    #
    #   * If a caller of `ReceiveMessage` can't track the
    #     `ReceiveRequestAttemptId`, no retries will work until the original
    #     visibility timeout expires. As a result, delays might occur but
    #     the messages in the queue will remain in a strict order.
    #
    #   The length of `ReceiveRequestAttemptId` is 128 characters.
    #   `ReceiveRequestAttemptId` can contain alphanumeric characters
    #   (`a-z`, `A-Z`, `0-9`) and punctuation (``
    #   !"#$%&'()*+,-./:;<=>?@[\]^_`\{|\}~ ``).
    #
    #   For best practices of using `ReceiveRequestAttemptId`, see [Using
    #   the ReceiveRequestAttemptId Request Parameter][2] in the *Amazon
    #   Simple Queue Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-receiverequestattemptid-request-parameter
    #   @return [String]
    #
    class ReceiveMessageRequest < Struct.new(
      :queue_url,
      :attribute_names,
      :message_attribute_names,
      :max_number_of_messages,
      :visibility_timeout,
      :wait_time_seconds,
      :receive_request_attempt_id)
      include Aws::Structure
    end

    # A list of received messages.
    #
    # @!attribute [rw] messages
    #   A list of messages.
    #   @return [Array<Types::Message>]
    #
    class ReceiveMessageResult < Struct.new(
      :messages)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass RemovePermissionRequest
    #   data as a hash:
    #
    #       {
    #         queue_url: "String", # required
    #         label: "String", # required
    #       }
    #
    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to take action on.
    #
    #   Queue URLs are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The identification of the permission to remove. This is the label
    #   added with the AddPermission action.
    #   @return [String]
    #
    class RemovePermissionRequest < Struct.new(
      :queue_url,
      :label)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass SendMessageBatchRequest
    #   data as a hash:
    #
    #       {
    #         queue_url: "String", # required
    #         entries: [ # required
    #           {
    #             id: "String", # required
    #             message_body: "String", # required
    #             delay_seconds: 1,
    #             message_attributes: {
    #               "String" => {
    #                 string_value: "String",
    #                 binary_value: "data",
    #                 string_list_values: ["String"],
    #                 binary_list_values: ["data"],
    #                 data_type: "String", # required
    #               },
    #             },
    #             message_deduplication_id: "String",
    #             message_group_id: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to take action on.
    #
    #   Queue URLs are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   A list of SendMessageBatchRequestEntry items.
    #   @return [Array<Types::SendMessageBatchRequestEntry>]
    #
    class SendMessageBatchRequest < Struct.new(
      :queue_url,
      :entries)
      include Aws::Structure
    end

    # Contains the details of a single Amazon SQS message along with a `Id`.
    #
    # @note When making an API call, you may pass SendMessageBatchRequestEntry
    #   data as a hash:
    #
    #       {
    #         id: "String", # required
    #         message_body: "String", # required
    #         delay_seconds: 1,
    #         message_attributes: {
    #           "String" => {
    #             string_value: "String",
    #             binary_value: "data",
    #             string_list_values: ["String"],
    #             binary_list_values: ["data"],
    #             data_type: "String", # required
    #           },
    #         },
    #         message_deduplication_id: "String",
    #         message_group_id: "String",
    #       }
    #
    # @!attribute [rw] id
    #   An identifier for the message in this batch. This is used to
    #   communicate the result. Note that the `Id`s of a batch request need
    #   to be unique within the request.
    #   @return [String]
    #
    # @!attribute [rw] message_body
    #   Body of the message.
    #   @return [String]
    #
    # @!attribute [rw] delay_seconds
    #   The number of seconds (0 to 900 - 15 minutes) to delay a specific
    #   message. Messages with a positive `DelaySeconds` value become
    #   available for processing after the delay time is finished. If you
    #   don't specify a value, the default value for the queue applies.
    #
    #   <note markdown="1"> When you set `FifoQueue`, you can't set `DelaySeconds` per message.
    #   You can set this parameter only on a queue level.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] message_attributes
    #   Each message attribute consists of a Name, Type, and Value. For more
    #   information, see [Message Attribute Items and Validation][1] in the
    #   *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation
    #   @return [Hash<String,Types::MessageAttributeValue>]
    #
    # @!attribute [rw] message_deduplication_id
    #   This parameter applies only to FIFO (first-in-first-out) queues.
    #
    #   The token used for deduplication of messages within a 5-minute
    #   minimum deduplication interval. If a message with a particular
    #   `MessageDeduplicationId` is sent successfully, subsequent messages
    #   with the same `MessageDeduplicationId` are accepted successfully but
    #   aren't delivered. For more information, see [ Exactly-Once
    #   Processing][1] in the *Amazon SQS Developer Guide*.
    #
    #   * Every message must have a unique `MessageDeduplicationId`,
    #
    #     * You may provide a `MessageDeduplicationId` explicitly.
    #
    #     * If you aren't able to provide a `MessageDeduplicationId` and
    #       you enable `ContentBasedDeduplication` for your queue, Amazon
    #       SQS uses a SHA-256 hash to generate the `MessageDeduplicationId`
    #       using the body of the message (but not the attributes of the
    #       message).
    #
    #     * If you don't provide a `MessageDeduplicationId` and the queue
    #       doesn't have `ContentBasedDeduplication` set, the action fails
    #       with an error.
    #
    #     * If the queue has `ContentBasedDeduplication` set, your
    #       `MessageDeduplicationId` overrides the generated one.
    #
    #   * When `ContentBasedDeduplication` is in effect, messages with
    #     identical content sent within the deduplication interval are
    #     treated as duplicates and only one copy of the message is
    #     delivered.
    #
    #   * You can also use `ContentBasedDeduplication` for messages with
    #     identical content to be treated as duplicates.
    #
    #   * If you send one message with `ContentBasedDeduplication` enabled
    #     and then another message with a `MessageDeduplicationId` that is
    #     the same as the one generated for the first
    #     `MessageDeduplicationId`, the two messages are treated as
    #     duplicates and only one copy of the message is delivered.
    #
    #   <note markdown="1"> The `MessageDeduplicationId` is available to the recipient of the
    #   message (this can be useful for troubleshooting delivery issues).
    #
    #    If a message is sent successfully but the acknowledgement is lost
    #   and the message is resent with the same `MessageDeduplicationId`
    #   after the deduplication interval, Amazon SQS can't detect duplicate
    #   messages.
    #
    #    </note>
    #
    #   The length of `MessageDeduplicationId` is 128 characters.
    #   `MessageDeduplicationId` can contain alphanumeric characters (`a-z`,
    #   `A-Z`, `0-9`) and punctuation (`` !"#$%&'()*+,-./:;<=>?@[\]^_`\{|\}~
    #   ``).
    #
    #   For best practices of using `MessageDeduplicationId`, see [Using the
    #   MessageDeduplicationId Property][2] in the *Amazon Simple Queue
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing
    #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagededuplicationid-property
    #   @return [String]
    #
    # @!attribute [rw] message_group_id
    #   This parameter applies only to FIFO (first-in-first-out) queues.
    #
    #   The tag that specifies that a message belongs to a specific message
    #   group. Messages that belong to the same message group are processed
    #   in a FIFO manner (however, messages in different message groups
    #   might be processed out of order). To interleave multiple ordered
    #   streams within a single queue, use `MessageGroupId` values (for
    #   example, session data for multiple users). In this scenario,
    #   multiple readers can process the queue, but the session data of each
    #   user is processed in a FIFO fashion.
    #
    #   * You must associate a non-empty `MessageGroupId` with a message. If
    #     you don't provide a `MessageGroupId`, the action fails.
    #
    #   * `ReceiveMessage` might return messages with multiple
    #     `MessageGroupId` values. For each `MessageGroupId`, the messages
    #     are sorted by time sent. The caller can't specify a
    #     `MessageGroupId`.
    #
    #   The length of `MessageGroupId` is 128 characters. Valid values are
    #   alphanumeric characters and punctuation ``
    #   (!"#$%&'()*+,-./:;<=>?@[\]^_`\{|\}~) ``.
    #
    #   For best practices of using `MessageGroupId`, see [Using the
    #   MessageGroupId Property][1] in the *Amazon Simple Queue Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagegroupid-property
    #   @return [String]
    #
    class SendMessageBatchRequestEntry < Struct.new(
      :id,
      :message_body,
      :delay_seconds,
      :message_attributes,
      :message_deduplication_id,
      :message_group_id)
      include Aws::Structure
    end

    # For each message in the batch, the response contains a
    # SendMessageBatchResultEntry tag if the message succeeds or a
    # BatchResultErrorEntry tag if the message fails.
    #
    # @!attribute [rw] successful
    #   A list of SendMessageBatchResultEntry items.
    #   @return [Array<Types::SendMessageBatchResultEntry>]
    #
    # @!attribute [rw] failed
    #   A list of BatchResultErrorEntry items with the error detail about
    #   each message that could not be enqueued.
    #   @return [Array<Types::BatchResultErrorEntry>]
    #
    class SendMessageBatchResult < Struct.new(
      :successful,
      :failed)
      include Aws::Structure
    end

    # Encloses a message ID for successfully enqueued message of a
    # SendMessageBatch.
    #
    # @!attribute [rw] id
    #   An identifier for the message in this batch.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   An identifier for the message.
    #   @return [String]
    #
    # @!attribute [rw] md5_of_message_body
    #   An MD5 digest of the non-URL-encoded message body string. This can
    #   be used to verify that Amazon SQS received the message correctly.
    #   Amazon SQS first URL decodes the message before creating the MD5
    #   digest. For information about MD5, see [RFC1321][1].
    #
    #
    #
    #   [1]: https://www.ietf.org/rfc/rfc1321.txt
    #   @return [String]
    #
    # @!attribute [rw] md5_of_message_attributes
    #   An MD5 digest of the non-URL-encoded message attribute string. This
    #   can be used to verify that Amazon SQS received the message batch
    #   correctly. Amazon SQS first URL decodes the message before creating
    #   the MD5 digest. For information about MD5, see [RFC1321][1].
    #
    #
    #
    #   [1]: https://www.ietf.org/rfc/rfc1321.txt
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   *This element applies only to FIFO (first-in-first-out) queues.*
    #
    #   A large, non-consecutive number that Amazon SQS assigns to each
    #   message.
    #
    #   The length of `SequenceNumber` is 128 bits. As `SequenceNumber`
    #   continues to increase for a particular `MessageGroupId`.
    #   @return [String]
    #
    class SendMessageBatchResultEntry < Struct.new(
      :id,
      :message_id,
      :md5_of_message_body,
      :md5_of_message_attributes,
      :sequence_number)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass SendMessageRequest
    #   data as a hash:
    #
    #       {
    #         queue_url: "String", # required
    #         message_body: "String", # required
    #         delay_seconds: 1,
    #         message_attributes: {
    #           "String" => {
    #             string_value: "String",
    #             binary_value: "data",
    #             string_list_values: ["String"],
    #             binary_list_values: ["data"],
    #             data_type: "String", # required
    #           },
    #         },
    #         message_deduplication_id: "String",
    #         message_group_id: "String",
    #       }
    #
    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to take action on.
    #
    #   Queue URLs are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] message_body
    #   The message to send. String maximum 256 KB in size. For a list of
    #   allowed characters, see the preceding note.
    #   @return [String]
    #
    # @!attribute [rw] delay_seconds
    #   The number of seconds (0 to 900 - 15 minutes) to delay a specific
    #   message. Messages with a positive `DelaySeconds` value become
    #   available for processing after the delay time is finished. If you
    #   don't specify a value, the default value for the queue applies.
    #
    #   <note markdown="1"> When you set `FifoQueue`, you can't set `DelaySeconds` per message.
    #   You can set this parameter only on a queue level.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] message_attributes
    #   Each message attribute consists of a Name, Type, and Value. For more
    #   information, see [Message Attribute Items and Validation][1] in the
    #   *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation
    #   @return [Hash<String,Types::MessageAttributeValue>]
    #
    # @!attribute [rw] message_deduplication_id
    #   This parameter applies only to FIFO (first-in-first-out) queues.
    #
    #   The token used for deduplication of sent messages. If a message with
    #   a particular `MessageDeduplicationId` is sent successfully, any
    #   messages sent with the same `MessageDeduplicationId` are accepted
    #   successfully but aren't delivered during the 5-minute deduplication
    #   interval. For more information, see [ Exactly-Once Processing][1] in
    #   the *Amazon SQS Developer Guide*.
    #
    #   * Every message must have a unique `MessageDeduplicationId`,
    #
    #     * You may provide a `MessageDeduplicationId` explicitly.
    #
    #     * If you aren't able to provide a `MessageDeduplicationId` and
    #       you enable `ContentBasedDeduplication` for your queue, Amazon
    #       SQS uses a SHA-256 hash to generate the `MessageDeduplicationId`
    #       using the body of the message (but not the attributes of the
    #       message).
    #
    #     * If you don't provide a `MessageDeduplicationId` and the queue
    #       doesn't have `ContentBasedDeduplication` set, the action fails
    #       with an error.
    #
    #     * If the queue has `ContentBasedDeduplication` set, your
    #       `MessageDeduplicationId` overrides the generated one.
    #
    #   * When `ContentBasedDeduplication` is in effect, messages with
    #     identical content sent within the deduplication interval are
    #     treated as duplicates and only one copy of the message is
    #     delivered.
    #
    #   * You can also use `ContentBasedDeduplication` for messages with
    #     identical content to be treated as duplicates.
    #
    #   * If you send one message with `ContentBasedDeduplication` enabled
    #     and then another message with a `MessageDeduplicationId` that is
    #     the same as the one generated for the first
    #     `MessageDeduplicationId`, the two messages are treated as
    #     duplicates and only one copy of the message is delivered.
    #
    #   <note markdown="1"> The `MessageDeduplicationId` is available to the recipient of the
    #   message (this can be useful for troubleshooting delivery issues).
    #
    #    If a message is sent successfully but the acknowledgdment is lost
    #   and the message is resent with the same `MessageDeduplicationId`
    #   after the deduplication interval, Amazon SQS can't detect duplicate
    #   messages.
    #
    #    </note>
    #
    #   The length of `MessageDeduplicationId` is 128 characters.
    #   `MessageDeduplicationId` can contain alphanumeric characters (`a-z`,
    #   `A-Z`, `0-9`) and punctuation (`` !"#$%&'()*+,-./:;<=>?@[\]^_`\{|\}~
    #   ``).
    #
    #   For best practices of using `MessageDeduplicationId`, see [Using the
    #   MessageDeduplicationId Property][2] in the *Amazon Simple Queue
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing
    #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagededuplicationid-property
    #   @return [String]
    #
    # @!attribute [rw] message_group_id
    #   This parameter applies only to FIFO (first-in-first-out) queues.
    #
    #   The tag that specifies that a message belongs to a specific message
    #   group. Messages that belong to the same message group are processed
    #   in a FIFO manner (however, messages in different message groups
    #   might be processed out of order). To interleave multiple ordered
    #   streams within a single queue, use `MessageGroupId` values (for
    #   example, session data for multiple users). In this scenario,
    #   multiple readers can process the queue, but the session data of each
    #   user is processed in a FIFO fashion.
    #
    #   * You must associate a non-empty `MessageGroupId` with a message. If
    #     you don't provide a `MessageGroupId`, the action fails.
    #
    #   * `ReceiveMessage` might return messages with multiple
    #     `MessageGroupId` values. For each `MessageGroupId`, the messages
    #     are sorted by time sent. The caller can't specify a
    #     `MessageGroupId`.
    #
    #   The length of `MessageGroupId` is 128 characters. Valid values are
    #   alphanumeric characters and punctuation ``
    #   (!"#$%&'()*+,-./:;<=>?@[\]^_`\{|\}~) ``.
    #
    #   For best practices of using `MessageGroupId`, see [Using the
    #   MessageGroupId Property][1] in the *Amazon Simple Queue Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagegroupid-property
    #   @return [String]
    #
    class SendMessageRequest < Struct.new(
      :queue_url,
      :message_body,
      :delay_seconds,
      :message_attributes,
      :message_deduplication_id,
      :message_group_id)
      include Aws::Structure
    end

    # The MD5OfMessageBody and MessageId elements.
    #
    # @!attribute [rw] md5_of_message_body
    #   An MD5 digest of the non-URL-encoded message body string. This can
    #   be used to verify that Amazon SQS received the message correctly.
    #   Amazon SQS first URL decodes the message before creating the MD5
    #   digest. For information about MD5, see [RFC1321][1].
    #
    #
    #
    #   [1]: https://www.ietf.org/rfc/rfc1321.txt
    #   @return [String]
    #
    # @!attribute [rw] md5_of_message_attributes
    #   An MD5 digest of the non-URL-encoded message attribute string. This
    #   can be used to verify that Amazon SQS received the message
    #   correctly. Amazon SQS first URL decodes the message before creating
    #   the MD5 digest. For information about MD5, see [RFC1321][1].
    #
    #
    #
    #   [1]: https://www.ietf.org/rfc/rfc1321.txt
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   An element containing the message ID of the message sent to the
    #   queue. For more information, see [Queue and Message Identifiers][1]
    #   in the *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   *This element applies only to FIFO (first-in-first-out) queues.*
    #
    #   A large, non-consecutive number that Amazon SQS assigns to each
    #   message.
    #
    #   The length of `SequenceNumber` is 128 bits. `SequenceNumber`
    #   continues to increase for a particular `MessageGroupId`.
    #   @return [String]
    #
    class SendMessageResult < Struct.new(
      :md5_of_message_body,
      :md5_of_message_attributes,
      :message_id,
      :sequence_number)
      include Aws::Structure
    end

    #
    # @note When making an API call, you may pass SetQueueAttributesRequest
    #   data as a hash:
    #
    #       {
    #         queue_url: "String", # required
    #         attributes: { # required
    #           "All" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to take action on.
    #
    #   Queue URLs are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A map of attributes to set.
    #
    #   The following lists the names, descriptions, and values of the
    #   special request parameters that the `SetQueueAttributes` action
    #   uses:
    #
    #   * `DelaySeconds` - The number of seconds for which the delivery of
    #     all messages in the queue is delayed. An integer from 0 to 900 (15
    #     minutes). The default is 0 (zero).
    #
    #   * `MaximumMessageSize` - The limit of how many bytes a message can
    #     contain before Amazon SQS rejects it. An integer from 1,024 bytes
    #     (1 KiB) up to 262,144 bytes (256 KiB). The default is 262,144 (256
    #     KiB).
    #
    #   * `MessageRetentionPeriod` - The number of seconds for which Amazon
    #     SQS retains a message. An integer representing seconds, from 60 (1
    #     minute) to 120,9600 (14 days). The default is 345,600 (4 days).
    #
    #   * `Policy` - The queue's policy. A valid AWS policy. For more
    #     information about policy structure, see [Overview of AWS IAM
    #     Policies][1] in the *Amazon IAM User Guide*.
    #
    #   * `ReceiveMessageWaitTimeSeconds` - The number of seconds for which
    #     a ReceiveMessage action will wait for a message to arrive. An
    #     integer from 0 to 20 (seconds). The default is 0.
    #
    #   * `RedrivePolicy` - The parameters for the dead letter queue
    #     functionality of the source queue. For more information about the
    #     redrive policy and dead letter queues, see [Using Amazon SQS Dead
    #     Letter Queues][2] in the *Amazon SQS Developer Guide*.
    #
    #     <note markdown="1"> The dead letter queue of a FIFO queue must also be a FIFO queue.
    #     Similarly, the dead letter queue of a standard queue must also be
    #     a standard queue.
    #
    #      </note>
    #
    #   * `VisibilityTimeout` - The visibility timeout for the queue. An
    #     integer from 0 to 43200 (12 hours). The default is 30. For more
    #     information about the visibility timeout, see [Visibility
    #     Timeout][3] in the *Amazon SQS Developer Guide*.
    #
    #   The following attribute applies only to [FIFO (first-in-first-out)
    #   queues][4]\:
    #
    #   * `ContentBasedDeduplication` - Enables content-based deduplication.
    #     For more information, see [Exactly-Once Processing][5] in the
    #     *Amazon SQS Developer Guide*.
    #
    #     * Every message must have a unique `MessageDeduplicationId`,
    #
    #       * You may provide a `MessageDeduplicationId` explicitly.
    #
    #       * If you aren't able to provide a `MessageDeduplicationId` and
    #         you enable `ContentBasedDeduplication` for your queue, Amazon
    #         SQS uses a SHA-256 hash to generate the
    #         `MessageDeduplicationId` using the body of the message (but
    #         not the attributes of the message).
    #
    #       * If you don't provide a `MessageDeduplicationId` and the queue
    #         doesn't have `ContentBasedDeduplication` set, the action
    #         fails with an error.
    #
    #       * If the queue has `ContentBasedDeduplication` set, your
    #         `MessageDeduplicationId` overrides the generated one.
    #
    #     * When `ContentBasedDeduplication` is in effect, messages with
    #       identical content sent within the deduplication interval are
    #       treated as duplicates and only one copy of the message is
    #       delivered.
    #
    #     * You can also use `ContentBasedDeduplication` for messages with
    #       identical content to be treated as duplicates.
    #
    #     * If you send one message with `ContentBasedDeduplication` enabled
    #       and then another message with a `MessageDeduplicationId` that is
    #       the same as the one generated for the first
    #       `MessageDeduplicationId`, the two messages are treated as
    #       duplicates and only one copy of the message is delivered.
    #
    #   Any other valid special request parameters that are specified (such
    #   as `ApproximateNumberOfMessages`,
    #   `ApproximateNumberOfMessagesDelayed`,
    #   `ApproximateNumberOfMessagesNotVisible`, `CreatedTimestamp`,
    #   `LastModifiedTimestamp`, and `QueueArn`) will be ignored.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html
    #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
    #   [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    #   [4]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html
    #   [5]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing
    #   @return [Hash<String,String>]
    #
    class SetQueueAttributesRequest < Struct.new(
      :queue_url,
      :attributes)
      include Aws::Structure
    end

  end
end
