# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SQS
  class Resource

    # @param options ({})
    # @option options [Client] :client
    def initialize(options = {})
      @client = options[:client] || Client.new(options)
    end

    # @return [Client]
    def client
      @client
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   queue = sqs.create_queue({
    #     queue_name: "String", # required
    #     attributes: {
    #       "All" => "String",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :queue_name
    #   The name of the new queue. The following limits apply to this name:
    #
    #   * A queue name can have up to 80 characters.
    #
    #   * Valid values: alphanumeric characters, hyphens (`-`), and
    #     underscores (`_`).
    #
    #   * A FIFO queue name must end with the `.fifo` suffix.
    #
    #   Queue URLs and names are case-sensitive.
    # @option options [Hash<String,String>] :attributes
    #   A map of attributes with their corresponding values.
    #
    #   The following lists the names, descriptions, and values of the special
    #   request parameters that the `CreateQueue` action uses:
    #
    #   * `DelaySeconds` - The length of time, in seconds, for which the
    #     delivery of all messages in the queue is delayed. Valid values: An
    #     integer from 0 to 900 seconds (15 minutes). Default: 0.
    #
    #   * `MaximumMessageSize` - The limit of how many bytes a message can
    #     contain before Amazon SQS rejects it. Valid values: An integer from
    #     1,024 bytes (1 KiB) to 262,144 bytes (256 KiB). Default: 262,144
    #     (256 KiB).
    #
    #   * `MessageRetentionPeriod` - The length of time, in seconds, for which
    #     Amazon SQS retains a message. Valid values: An integer from 60
    #     seconds (1 minute) to 1,209,600 seconds (14 days). Default: 345,600
    #     (4 days).
    #
    #   * `Policy` - The queue's policy. A valid AWS policy. For more
    #     information about policy structure, see [Overview of AWS IAM
    #     Policies][1] in the *Amazon IAM User Guide*.
    #
    #   * `ReceiveMessageWaitTimeSeconds` - The length of time, in seconds,
    #     for which a ` ReceiveMessage ` action waits for a message to arrive.
    #     Valid values: An integer from 0 to 20 (seconds). Default: 0.
    #
    #   * `RedrivePolicy` - The string that includes the parameters for the
    #     dead-letter queue functionality of the source queue. For more
    #     information about the redrive policy and dead-letter queues, see
    #     [Using Amazon SQS Dead-Letter Queues][2] in the *Amazon Simple Queue
    #     Service Developer Guide*.
    #
    #     * `deadLetterTargetArn` - The Amazon Resource Name (ARN) of the
    #       dead-letter queue to which Amazon SQS moves messages after the
    #       value of `maxReceiveCount` is exceeded.
    #
    #     * `maxReceiveCount` - The number of times a message is delivered to
    #       the source queue before being moved to the dead-letter queue. When
    #       the `ReceiveCount` for a message exceeds the `maxReceiveCount` for
    #       a queue, Amazon SQS moves the message to the dead-letter-queue.
    #
    #     <note markdown="1"> The dead-letter queue of a FIFO queue must also be a FIFO queue.
    #     Similarly, the dead-letter queue of a standard queue must also be a
    #     standard queue.
    #
    #      </note>
    #
    #   * `VisibilityTimeout` - The visibility timeout for the queue, in
    #     seconds. Valid values: An integer from 0 to 43,200 (12 hours).
    #     Default: 30. For more information about the visibility timeout, see
    #     [Visibility Timeout][3] in the *Amazon Simple Queue Service
    #     Developer Guide*.
    #
    #   The following attributes apply only to [server-side-encryption][4]\:
    #
    #   * `KmsMasterKeyId` - The ID of an AWS-managed customer master key
    #     (CMK) for Amazon SQS or a custom CMK. For more information, see [Key
    #     Terms][5]. While the alias of the AWS-managed CMK for Amazon SQS is
    #     always `alias/aws/sqs`, the alias of a custom CMK can, for example,
    #     be `alias/MyAlias `. For more examples, see [KeyId][6] in the *AWS
    #     Key Management Service API Reference*.
    #
    #   * `KmsDataKeyReusePeriodSeconds` - The length of time, in seconds, for
    #     which Amazon SQS can reuse a [data key][7] to encrypt or decrypt
    #     messages before calling AWS KMS again. An integer representing
    #     seconds, between 60 seconds (1 minute) and 86,400 seconds (24
    #     hours). Default: 300 (5 minutes). A shorter time period provides
    #     better security but results in more calls to KMS which might incur
    #     charges after Free Tier. For more information, see [How Does the
    #     Data Key Reuse Period Work?][8].
    #
    #   The following attributes apply only to [FIFO (first-in-first-out)
    #   queues][9]\:
    #
    #   * `FifoQueue` - Designates a queue as FIFO. Valid values: `true`,
    #     `false`. If you don't specify the `FifoQueue` attribute, Amazon SQS
    #     creates a standard queue. You can provide this attribute only during
    #     queue creation. You can't change it for an existing queue. When you
    #     set this attribute, you must also provide the `MessageGroupId` for
    #     your messages explicitly.
    #
    #     For more information, see [FIFO Queue Logic][10] in the *Amazon
    #     Simple Queue Service Developer Guide*.
    #
    #   * `ContentBasedDeduplication` - Enables content-based deduplication.
    #     Valid values: `true`, `false`. For more information, see
    #     [Exactly-Once Processing][11] in the *Amazon Simple Queue Service
    #     Developer Guide*.
    #
    #     * Every message must have a unique `MessageDeduplicationId`,
    #
    #       * You may provide a `MessageDeduplicationId` explicitly.
    #
    #       * If you aren't able to provide a `MessageDeduplicationId` and
    #         you enable `ContentBasedDeduplication` for your queue, Amazon
    #         SQS uses a SHA-256 hash to generate the `MessageDeduplicationId`
    #         using the body of the message (but not the attributes of the
    #         message).
    #
    #       * If you don't provide a `MessageDeduplicationId` and the queue
    #         doesn't have `ContentBasedDeduplication` set, the action fails
    #         with an error.
    #
    #       * If the queue has `ContentBasedDeduplication` set, your
    #         `MessageDeduplicationId` overrides the generated one.
    #
    #     * When `ContentBasedDeduplication` is in effect, messages with
    #       identical content sent within the deduplication interval are
    #       treated as duplicates and only one copy of the message is
    #       delivered.
    #
    #     * If you send one message with `ContentBasedDeduplication` enabled
    #       and then another message with a `MessageDeduplicationId` that is
    #       the same as the one generated for the first
    #       `MessageDeduplicationId`, the two messages are treated as
    #       duplicates and only one copy of the message is delivered.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html
    #   [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
    #   [3]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    #   [4]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html
    #   [5]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms
    #   [6]: https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters
    #   [7]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys
    #   [8]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work
    #   [9]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html
    #   [10]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic
    #   [11]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing
    # @option options [Hash<String,String>] :tags
    #   Add cost allocation tags to the specified Amazon SQS queue. For an
    #   overview, see [Tagging Your Amazon SQS Queues][1] in the *Amazon
    #   Simple Queue Service Developer Guide*.
    #
    #   When you use queue tags, keep the following guidelines in mind:
    #
    #   * Adding more than 50 tags to a queue isn't recommended.
    #
    #   * Tags don't have any semantic meaning. Amazon SQS interprets tags as
    #     character strings.
    #
    #   * Tags are case-sensitive.
    #
    #   * A new tag with a key identical to that of an existing tag overwrites
    #     the existing tag.
    #
    #   For a full list of tag restrictions, see [Limits Related to Queues][2]
    #   in the *Amazon Simple Queue Service Developer Guide*.
    #
    #   <note markdown="1"> To be able to tag a queue on creation, you must have the
    #   `sqs:CreateQueue` and `sqs:TagQueue` permissions.
    #
    #    Cross-account permissions don't apply to this action. For more
    #   information, see [Grant Cross-Account Permissions to a Role and a User
    #   Name][3] in the *Amazon Simple Queue Service Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html
    #   [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-limits.html#limits-queues
    #   [3]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name
    # @return [Queue]
    def create_queue(options = {})
      resp = @client.create_queue(options)
      Queue.new(
        url: resp.data.queue_url,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   queue = sqs.get_queue_by_name({
    #     queue_name: "String", # required
    #     queue_owner_aws_account_id: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :queue_name
    #   The name of the queue whose URL must be fetched. Maximum 80
    #   characters. Valid values: alphanumeric characters, hyphens (`-`), and
    #   underscores (`_`).
    #
    #   Queue URLs and names are case-sensitive.
    # @option options [String] :queue_owner_aws_account_id
    #   The AWS account ID of the account that created the queue.
    # @return [Queue]
    def get_queue_by_name(options = {})
      resp = @client.get_queue_url(options)
      Queue.new(
        url: resp.data.queue_url,
        client: @client
      )
    end

    # @!group Associations

    # @param [String] url
    # @return [Queue]
    def queue(url)
      Queue.new(
        url: url,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   queues = sqs.queues({
    #     queue_name_prefix: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :queue_name_prefix
    #   A string to use for filtering the list results. Only those queues
    #   whose name begins with the specified string are returned.
    #
    #   Queue URLs and names are case-sensitive.
    # @return [Queue::Collection]
    def queues(options = {})
      batches = Enumerator.new do |y|
        batch = []
        resp = @client.list_queues(options)
        resp.data.queue_urls.each do |q|
          batch << Queue.new(
            url: q,
            client: @client
          )
        end
        y.yield(batch)
      end
      Queue::Collection.new(batches)
    end

  end
end
