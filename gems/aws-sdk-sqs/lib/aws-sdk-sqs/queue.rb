# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module SQS
    class Queue

      extend Aws::Deprecations

      # @overload def initialize(url, options = {})
      #   @param [String] url
      #   @option options [Client] :client
      # @overload def initialize(options = {})
      #   @option options [required, String] :url
      #   @option options [Client] :client
      def initialize(*args)
        options = Hash === args.last ? args.pop.dup : {}
        @url = extract_url(args, options)
        @data = options.delete(:data)
        @client = options.delete(:client) || Client.new(options)
      end

      # @!group Read-Only Attributes

      # @return [String]
      def url
        @url
      end

      # A map of attributes to the respective values.
      # @return [Hash<String,String>]
      def attributes
        data.attributes
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # Loads, or reloads {#data} for the current {Queue}.
      # Returns `self` making it possible to chain methods.
      #
      #     queue.reload.data
      #
      # @return [self]
      def load
        resp = @client.get_queue_attributes(
          queue_url: @url,
          attribute_names: ["All"]
        )
        @data = resp.data
        self
      end
      alias :reload :load

      # @return [Types::GetQueueAttributesResult]
      #   Returns the data for this {Queue}. Calls
      #   {Client#get_queue_attributes} if {#data_loaded?} is `false`.
      def data
        load unless @data
        @data
      end

      # @return [Boolean]
      #   Returns `true` if this resource is loaded.  Accessing attributes or
      #   {#data} on an unloaded resource will trigger a call to {#load}.
      def data_loaded?
        !!@data
      end

      # @!group Actions

      # @example Request syntax with placeholder values
      #
      #   queue.add_permission({
      #     label: "String", # required
      #     aws_account_ids: ["String"], # required
      #     actions: ["String"], # required
      #   })
      # @param [Hash] options ({})
      # @option options [required, String] :label
      #   The unique identification of the permission you're setting (e.g.,
      #   `AliceSendMessage`). Constraints: Maximum 80 characters; alphanumeric
      #   characters, hyphens (-), and underscores (\_) are allowed.
      # @option options [required, Array<String>] :aws_account_ids
      #   The AWS account number of the [principal][1] who will be given
      #   permission. The principal must have an AWS account, but does not need
      #   to be signed up for Amazon SQS. For information about locating the AWS
      #   account identification, see [Your AWS Identifiers][2] in the *Amazon
      #   SQS Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P
      #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AWSCredentials.html
      # @option options [required, Array<String>] :actions
      #   The action the client wants to allow for the specified principal. The
      #   following are valid values: `* | SendMessage | ReceiveMessage |
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
      # @return [EmptyStructure]
      def add_permission(options = {})
        options = options.merge(queue_url: @url)
        resp = @client.add_permission(options)
        resp.data
      end

      # @example Request syntax with placeholder values
      #
      #   queue.change_message_visibility_batch({
      #     entries: [ # required
      #       {
      #         id: "String", # required
      #         receipt_handle: "String", # required
      #         visibility_timeout: 1,
      #       },
      #     ],
      #   })
      # @param [Hash] options ({})
      # @option options [required, Array<Types::ChangeMessageVisibilityBatchRequestEntry>] :entries
      #   A list of receipt handles of the messages for which the visibility
      #   timeout must be changed.
      # @return [Types::ChangeMessageVisibilityBatchResult]
      def change_message_visibility_batch(options = {})
        options = options.merge(queue_url: @url)
        resp = @client.change_message_visibility_batch(options)
        resp.data
      end

      # @example Request syntax with placeholder values
      #
      #   queue.delete()
      # @param [Hash] options ({})
      # @return [EmptyStructure]
      def delete(options = {})
        options = options.merge(queue_url: @url)
        resp = @client.delete_queue(options)
        resp.data
      end

      # @example Request syntax with placeholder values
      #
      #   queue.delete_messages({
      #     entries: [ # required
      #       {
      #         id: "String", # required
      #         receipt_handle: "String", # required
      #       },
      #     ],
      #   })
      # @param [Hash] options ({})
      # @option options [required, Array<Types::DeleteMessageBatchRequestEntry>] :entries
      #   A list of receipt handles for the messages to be deleted.
      # @return [Types::DeleteMessageBatchResult]
      def delete_messages(options = {})
        options = options.merge(queue_url: @url)
        resp = @client.delete_message_batch(options)
        resp.data
      end

      # @example Request syntax with placeholder values
      #
      #   queue.purge()
      # @param [Hash] options ({})
      # @return [EmptyStructure]
      def purge(options = {})
        options = options.merge(queue_url: @url)
        resp = @client.purge_queue(options)
        resp.data
      end

      # @example Request syntax with placeholder values
      #
      #   message = queue.receive_messages({
      #     attribute_names: ["All"], # accepts All, Policy, VisibilityTimeout, MaximumMessageSize, MessageRetentionPeriod, ApproximateNumberOfMessages, ApproximateNumberOfMessagesNotVisible, CreatedTimestamp, LastModifiedTimestamp, QueueArn, ApproximateNumberOfMessagesDelayed, DelaySeconds, ReceiveMessageWaitTimeSeconds, RedrivePolicy, FifoQueue, ContentBasedDeduplication
      #     message_attribute_names: ["MessageAttributeName"],
      #     max_number_of_messages: 1,
      #     visibility_timeout: 1,
      #     wait_time_seconds: 1,
      #     receive_request_attempt_id: "String",
      #   })
      # @param [Hash] options ({})
      # @option options [Array<String>] :attribute_names
      #   A list of attributes that need to be returned along with each message.
      #   These attributes include:
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
      #   * `SentTimestamp` - Returns the time the message was sent to the queue
      #     (epoch time in milliseconds).
      #
      #   * `MessageDeduplicationId` - Returns the value provided by the sender
      #     that calls the ` SendMessage ` action.
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
      # @option options [Array<String>] :message_attribute_names
      #   The name of the message attribute, where *N* is the index. The message
      #   attribute name can contain the following characters: A-Z, a-z, 0-9,
      #   underscore (\_), hyphen (-), and period (.). The name must not start
      #   or end with a period, and it should not have successive periods. The
      #   name is case sensitive and must be unique among all attribute names
      #   for the message. The name can be up to 256 characters long. The name
      #   can't start with "AWS." or "Amazon." (or any variations in
      #   casing), because these prefixes are reserved for use by Amazon Web
      #   Services.
      #
      #   When using `ReceiveMessage`, you can send a list of attribute names to
      #   receive, or you can return all of the attributes by specifying "All"
      #   or ".*" in your request. You can also use "bar.*" to return all
      #   message attributes starting with the "bar" prefix.
      # @option options [Integer] :max_number_of_messages
      #   The maximum number of messages to return. Amazon SQS never returns
      #   more messages than this value but might return fewer. Values can be
      #   from 1 to 10. Default is 1.
      #
      #   All of the messages are not necessarily returned.
      # @option options [Integer] :visibility_timeout
      #   The duration (in seconds) that the received messages are hidden from
      #   subsequent retrieve requests after being retrieved by a
      #   `ReceiveMessage` request.
      # @option options [Integer] :wait_time_seconds
      #   The duration (in seconds) for which the call will wait for a message
      #   to arrive in the queue before returning. If a message is available,
      #   the call will return sooner than WaitTimeSeconds.
      # @option options [String] :receive_request_attempt_id
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
      #     `ReceiveRequestAttemptId` if none of the messages have been modified
      #     (deleted or had their visibility changes).
      #
      #   * During a visibility timeout, subsequent calls with the same
      #     `ReceiveRequestAttemptId` return the same messages and receipt
      #     handles. If a retry occurs within the deduplication interval, it
      #     resets the visibility timeout. For more information, see [Visibility
      #     Timeout][1] in the *Amazon Simple Queue Service Developer Guide*.
      #
      #     If a caller of the `ReceiveMessage` action is still processing
      #     messages when the visibility timeout expires and messages become
      #     visible, another worker reading from the same queue can receive the
      #     same messages and therefore process duplicates. Also, if a reader
      #     whose message processing time is longer than the visibility timeout
      #     tries to delete the processed messages, the action fails with an
      #     error.
      #
      #      To mitigate this effect, ensure that your application observes a
      #     safe threshold before the visibility timeout expires and extend the
      #     visibility timeout as necessary.
      #
      #   * While messages with a particular `MessageGroupId` are invisible, no
      #     more messages belonging to the same `MessageGroupId` are returned
      #     until the visibility timeout expires. You can still receive messages
      #     with another `MessageGroupId` as long as it is also visible.
      #
      #   * If a caller of `ReceiveMessage` can't track the
      #     `ReceiveRequestAttemptId`, no retries will work until the original
      #     visibility timeout expires. As a result, delays might occur but the
      #     messages in the queue will remain in a strict order.
      #
      #   The length of `ReceiveRequestAttemptId` is 128 characters.
      #   `ReceiveRequestAttemptId` can contain alphanumeric characters (`a-z`,
      #   `A-Z`, `0-9`) and punctuation (`` !"#$%&'()*+,-./:;<=>?@[\]^_`\{|\}~
      #   ``).
      #
      #   For best practices of using `ReceiveRequestAttemptId`, see [Using the
      #   ReceiveRequestAttemptId Request Parameter][2] in the *Amazon Simple
      #   Queue Service Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
      #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-receiverequestattemptid-request-parameter
      # @return [Message::Collection]
      def receive_messages(options = {})
        batch = []
        options = options.merge(queue_url: @url)
        resp = @client.receive_message(options)
        resp.data.messages.each do |m|
          batch << Message.new(
            queue_url: @url,
            receipt_handle: m.receipt_handle,
            data: m,
            client: @client
          )
        end
        Message::Collection.new([batch], size: batch.size)
      end

      # @example Request syntax with placeholder values
      #
      #   queue.remove_permission({
      #     label: "String", # required
      #   })
      # @param [Hash] options ({})
      # @option options [required, String] :label
      #   The identification of the permission to remove. This is the label
      #   added with the AddPermission action.
      # @return [EmptyStructure]
      def remove_permission(options = {})
        options = options.merge(queue_url: @url)
        resp = @client.remove_permission(options)
        resp.data
      end

      # @example Request syntax with placeholder values
      #
      #   queue.send_message({
      #     message_body: "String", # required
      #     delay_seconds: 1,
      #     message_attributes: {
      #       "String" => {
      #         string_value: "String",
      #         binary_value: "data",
      #         string_list_values: ["String"],
      #         binary_list_values: ["data"],
      #         data_type: "String", # required
      #       },
      #     },
      #     message_deduplication_id: "String",
      #     message_group_id: "String",
      #   })
      # @param [Hash] options ({})
      # @option options [required, String] :message_body
      #   The message to send. String maximum 256 KB in size. For a list of
      #   allowed characters, see the preceding note.
      # @option options [Integer] :delay_seconds
      #   The number of seconds (0 to 900 - 15 minutes) to delay a specific
      #   message. Messages with a positive `DelaySeconds` value become
      #   available for processing after the delay time is finished. If you
      #   don't specify a value, the default value for the queue applies.
      #
      #   <note markdown="1"> When you set `FifoQueue`, you can't set `DelaySeconds` per message.
      #   You can set this parameter only on a queue level.
      #
      #    </note>
      # @option options [Hash<String,Types::MessageAttributeValue>] :message_attributes
      #   Each message attribute consists of a Name, Type, and Value. For more
      #   information, see [Message Attribute Items and Validation][1] in the
      #   *Amazon SQS Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation
      # @option options [String] :message_deduplication_id
      #   This parameter applies only to FIFO (first-in-first-out) queues.
      #
      #   The token used for deduplication of sent messages. If a message with a
      #   particular `MessageDeduplicationId` is sent successfully, any messages
      #   sent with the same `MessageDeduplicationId` are accepted successfully
      #   but aren't delivered during the 5-minute deduplication interval. For
      #   more information, see [ Exactly-Once Processing][1] in the *Amazon SQS
      #   Developer Guide*.
      #
      #   * Every message must have a unique `MessageDeduplicationId`,
      #
      #     * You may provide a `MessageDeduplicationId` explicitly.
      #
      #     * If you aren't able to provide a `MessageDeduplicationId` and you
      #       enable `ContentBasedDeduplication` for your queue, Amazon SQS uses
      #       a SHA-256 hash to generate the `MessageDeduplicationId` using the
      #       body of the message (but not the attributes of the message).
      #
      #     * If you don't provide a `MessageDeduplicationId` and the queue
      #       doesn't have `ContentBasedDeduplication` set, the action fails
      #       with an error.
      #
      #     * If the queue has `ContentBasedDeduplication` set, your
      #       `MessageDeduplicationId` overrides the generated one.
      #
      #   * When `ContentBasedDeduplication` is in effect, messages with
      #     identical content sent within the deduplication interval are treated
      #     as duplicates and only one copy of the message is delivered.
      #
      #   * You can also use `ContentBasedDeduplication` for messages with
      #     identical content to be treated as duplicates.
      #
      #   * If you send one message with `ContentBasedDeduplication` enabled and
      #     then another message with a `MessageDeduplicationId` that is the
      #     same as the one generated for the first `MessageDeduplicationId`,
      #     the two messages are treated as duplicates and only one copy of the
      #     message is delivered.
      #
      #   <note markdown="1"> The `MessageDeduplicationId` is available to the recipient of the
      #   message (this can be useful for troubleshooting delivery issues).
      #
      #    If a message is sent successfully but the acknowledgdment is lost and
      #   the message is resent with the same `MessageDeduplicationId` after the
      #   deduplication interval, Amazon SQS can't detect duplicate messages.
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
      # @option options [String] :message_group_id
      #   This parameter applies only to FIFO (first-in-first-out) queues.
      #
      #   The tag that specifies that a message belongs to a specific message
      #   group. Messages that belong to the same message group are processed in
      #   a FIFO manner (however, messages in different message groups might be
      #   processed out of order). To interleave multiple ordered streams within
      #   a single queue, use `MessageGroupId` values (for example, session data
      #   for multiple users). In this scenario, multiple readers can process
      #   the queue, but the session data of each user is processed in a FIFO
      #   fashion.
      #
      #   * You must associate a non-empty `MessageGroupId` with a message. If
      #     you don't provide a `MessageGroupId`, the action fails.
      #
      #   * `ReceiveMessage` might return messages with multiple
      #     `MessageGroupId` values. For each `MessageGroupId`, the messages are
      #     sorted by time sent. The caller can't specify a `MessageGroupId`.
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
      # @return [Types::SendMessageResult]
      def send_message(options = {})
        options = options.merge(queue_url: @url)
        resp = @client.send_message(options)
        resp.data
      end

      # @example Request syntax with placeholder values
      #
      #   queue.send_messages({
      #     entries: [ # required
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
      #       },
      #     ],
      #   })
      # @param [Hash] options ({})
      # @option options [required, Array<Types::SendMessageBatchRequestEntry>] :entries
      #   A list of SendMessageBatchRequestEntry items.
      # @return [Types::SendMessageBatchResult]
      def send_messages(options = {})
        options = options.merge(queue_url: @url)
        resp = @client.send_message_batch(options)
        resp.data
      end

      # @example Request syntax with placeholder values
      #
      #   queue.set_attributes({
      #     attributes: { # required
      #       "All" => "String",
      #     },
      #   })
      # @param [Hash] options ({})
      # @option options [required, Hash<String,String>] :attributes
      #   A map of attributes to set.
      #
      #   The following lists the names, descriptions, and values of the special
      #   request parameters that the `SetQueueAttributes` action uses:
      #
      #   * `DelaySeconds` - The number of seconds for which the delivery of all
      #     messages in the queue is delayed. An integer from 0 to 900 (15
      #     minutes). The default is 0 (zero).
      #
      #   * `MaximumMessageSize` - The limit of how many bytes a message can
      #     contain before Amazon SQS rejects it. An integer from 1,024 bytes (1
      #     KiB) up to 262,144 bytes (256 KiB). The default is 262,144 (256
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
      #   * `ReceiveMessageWaitTimeSeconds` - The number of seconds for which a
      #     ReceiveMessage action will wait for a message to arrive. An integer
      #     from 0 to 20 (seconds). The default is 0.
      #
      #   * `RedrivePolicy` - The parameters for the dead letter queue
      #     functionality of the source queue. For more information about the
      #     redrive policy and dead letter queues, see [Using Amazon SQS Dead
      #     Letter Queues][2] in the *Amazon SQS Developer Guide*.
      #
      #     <note markdown="1"> The dead letter queue of a FIFO queue must also be a FIFO queue.
      #     Similarly, the dead letter queue of a standard queue must also be a
      #     standard queue.
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
      #     * You can also use `ContentBasedDeduplication` for messages with
      #       identical content to be treated as duplicates.
      #
      #     * If you send one message with `ContentBasedDeduplication` enabled
      #       and then another message with a `MessageDeduplicationId` that is
      #       the same as the one generated for the first
      #       `MessageDeduplicationId`, the two messages are treated as
      #       duplicates and only one copy of the message is delivered.
      #
      #   Any other valid special request parameters that are specified (such as
      #   `ApproximateNumberOfMessages`, `ApproximateNumberOfMessagesDelayed`,
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
      # @return [EmptyStructure]
      def set_attributes(options = {})
        options = options.merge(queue_url: @url)
        resp = @client.set_queue_attributes(options)
        resp.data
      end

      # @!group Associations

      # @example Request syntax with placeholder values
      #
      #   deadlettersourcequeues = queue.dead_letter_source_queues()
      # @param [Hash] options ({})
      # @return [Queue::Collection]
      def dead_letter_source_queues(options = {})
        batches = Enumerator.new do |y|
          batch = []
          options = options.merge(queue_url: @url)
          resp = @client.list_dead_letter_source_queues(options)
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

      # @param [String] receipt_handle
      # @return [Message]
      def message(receipt_handle)
        Message.new(
          queue_url: @url,
          receipt_handle: receipt_handle,
          client: @client
        )
      end

      # @deprecated
      # @api private
      def identifiers
        { url: @url }
      end
      deprecated(:identifiers)

      private

      def extract_url(args, options)
        value = args[0] || options.delete(:url)
        case value
        when String then value
        when nil then raise ArgumentError, "missing required option :url"
        else
          msg = "expected :url to be a String, got #{value.class}"
          raise ArgumentError, msg
        end
      end

      class Collection < Aws::Resources::Collection; end
    end
  end
end
