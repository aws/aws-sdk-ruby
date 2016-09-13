# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/request_signer.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'
require 'aws-sdk-sqs/plugins/queue_urls.rb'
require 'aws-sdk-sqs/plugins/md5s.rb'

module Aws
  module SQS
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :sqs

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::Query)
      add_plugin(Aws::SQS::Plugins::QueueUrls)
      add_plugin(Aws::SQS::Plugins::Md5s)

      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      def initialize(**args)
        super
      end

      # @!group API Operations

      # Adds a permission to a queue for a specific [principal][1]. This
      # allows for sharing access to the queue.
      #
      # When you create a queue, you have full control access rights for the
      # queue. Only you (as owner of the queue) can grant or deny permissions
      # to the queue. For more information about these permissions, see
      # [Shared Queues][2] in the *Amazon SQS Developer Guide*.
      #
      # <note markdown="1"> `AddPermission` writes an Amazon SQS-generated policy. If you want to
      # write your own policy, use SetQueueAttributes to upload your policy.
      # For more information about writing your own policy, see [Using The
      # Access Policy Language][3] in the *Amazon SQS Developer Guide*.
      #
      #  </note>
      #
      # <note markdown="1">Some API actions take lists of parameters. These lists are specified
      # using the `param.n` notation. Values of `n` are integers starting from
      # 1. For example, a parameter list with two elements looks like this:
      #
      #  </note>
      #
      # `<![CDATA[&Attribute.1=this]]>`
      #
      # `<![CDATA[&Attribute.2=that]]>`
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P
      # [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html
      # [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AccessPolicyLanguage.html
      # @option params [required, String] :queue_url
      #   The URL of the Amazon SQS queue to take action on.
      #
      #   Queue URLs are case-sensitive.
      # @option params [required, String] :label
      #   The unique identification of the permission you\'re setting (e.g.,
      #   `AliceSendMessage`). Constraints: Maximum 80 characters; alphanumeric
      #   characters, hyphens (-), and underscores (\_) are allowed.
      # @option params [required, Array<String>] :aws_account_ids
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
      # @option params [required, Array<String>] :actions
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
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_permission({
      #     queue_url: "String", # required
      #     label: "String", # required
      #     aws_account_ids: ["String"], # required
      #     actions: ["String"], # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_permission(params = {}, options = {})
        req = build_request(:add_permission, params)
        req.send_request(options)
      end

      # Changes the visibility timeout of a specified message in a queue to a
      # new value. The maximum allowed timeout value you can set the value to
      # is 12 hours. This means you can\'t extend the timeout of a message in
      # an existing queue to more than a total visibility timeout of 12 hours.
      # (For more information visibility timeout, see [Visibility Timeout][1]
      # in the *Amazon SQS Developer Guide*.)
      #
      # For example, let\'s say you have a message and its default message
      # visibility timeout is 5 minutes. After 3 minutes, you call
      # `ChangeMessageVisiblity` with a timeout of 10 minutes. At that time,
      # the timeout for the message would be extended by 10 minutes beyond the
      # time of the ChangeMessageVisibility call. This results in a total
      # visibility timeout of 13 minutes. You can continue to call
      # ChangeMessageVisibility to extend the visibility timeout to a maximum
      # of 12 hours. If you try to extend beyond 12 hours, the request will be
      # rejected.
      #
      # <note markdown="1">There is a 120,000 limit for the number of inflight messages per
      # queue. Messages are inflight after they have been received from the
      # queue by a consuming component, but have not yet been deleted from the
      # queue. If you reach the 120,000 limit, you will receive an OverLimit
      # error message from Amazon SQS. To help avoid reaching the limit, you
      # should delete the messages from the queue after they have been
      # processed. You can also increase the number of queues you use to
      # process the messages.
      #
      # </note>
      #
      # <important markdown="1">If you attempt to set the `VisibilityTimeout` to an amount more than
      # the maximum time left, Amazon SQS returns an error. It will not
      # automatically recalculate and increase the timeout to the maximum time
      # remaining.
      #
      # </important>
      #
      # <important markdown="1">Unlike with a queue, when you change the visibility timeout for a
      # specific message, that timeout value is applied immediately but is not
      # saved in memory for that message. If you don\'t delete a message after
      # it is received, the visibility timeout for the message the next time
      # it is received reverts to the original timeout value, not the value
      # you set with the `ChangeMessageVisibility` action.
      #
      # </important>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AboutVT.html
      # @option params [required, String] :queue_url
      #   The URL of the Amazon SQS queue to take action on.
      #
      #   Queue URLs are case-sensitive.
      # @option params [required, String] :receipt_handle
      #   The receipt handle associated with the message whose visibility
      #   timeout should be changed. This parameter is returned by the
      #   ReceiveMessage action.
      # @option params [required, Integer] :visibility_timeout
      #   The new value (in seconds - from 0 to 43200 - maximum 12 hours) for
      #   the message\'s visibility timeout.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.change_message_visibility({
      #     queue_url: "String", # required
      #     receipt_handle: "String", # required
      #     visibility_timeout: 1, # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def change_message_visibility(params = {}, options = {})
        req = build_request(:change_message_visibility, params)
        req.send_request(options)
      end

      # Changes the visibility timeout of multiple messages. This is a batch
      # version of ChangeMessageVisibility. The result of the action on each
      # message is reported individually in the response. You can send up to
      # 10 ChangeMessageVisibility requests with each
      # `ChangeMessageVisibilityBatch` action.
      #
      # <important markdown="1">Because the batch request can result in a combination of successful
      # and unsuccessful actions, you should check for batch errors even when
      # the call returns an HTTP status code of 200.
      #
      # </important>
      #
      # <note markdown="1">Some API actions take lists of parameters. These lists are specified
      # using the `param.n` notation. Values of `n` are integers starting from
      # 1. For example, a parameter list with two elements looks like this:
      #
      #  </note>
      #
      # `<![CDATA[&Attribute.1=this]]>`
      #
      # `<![CDATA[&Attribute.2=that]]>`
      # @option params [required, String] :queue_url
      #   The URL of the Amazon SQS queue to take action on.
      #
      #   Queue URLs are case-sensitive.
      # @option params [required, Array<Types::ChangeMessageVisibilityBatchRequestEntry>] :entries
      #   A list of receipt handles of the messages for which the visibility
      #   timeout must be changed.
      # @return [Types::ChangeMessageVisibilityBatchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ChangeMessageVisibilityBatchResult#successful #Successful} => Array&lt;Types::ChangeMessageVisibilityBatchResultEntry&gt;
      #   * {Types::ChangeMessageVisibilityBatchResult#failed #Failed} => Array&lt;Types::BatchResultErrorEntry&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.change_message_visibility_batch({
      #     queue_url: "String", # required
      #     entries: [ # required
      #       {
      #         id: "String", # required
      #         receipt_handle: "String", # required
      #         visibility_timeout: 1,
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.successful #=> Array
      #   resp.successful[0].id #=> String
      #   resp.failed #=> Array
      #   resp.failed[0].id #=> String
      #   resp.failed[0].sender_fault #=> Boolean
      #   resp.failed[0].code #=> String
      #   resp.failed[0].message #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def change_message_visibility_batch(params = {}, options = {})
        req = build_request(:change_message_visibility_batch, params)
        req.send_request(options)
      end

      # Creates a new queue, or returns the URL of an existing one. When you
      # request `CreateQueue`, you provide a name for the queue. To
      # successfully create a new queue, you must provide a name that is
      # unique within the scope of your own queues.
      #
      # <note markdown="1"> If you delete a queue, you must wait at least 60 seconds before
      # creating a queue with the same name.
      #
      #  </note>
      #
      # You may pass one or more attributes in the request. If you do not
      # provide a value for any attribute, the queue will have the default
      # value for that attribute.
      #
      # <note markdown="1">Use GetQueueUrl to get a queue\'s URL. GetQueueUrl requires only the
      # `QueueName` parameter.
      #
      # </note>
      #
      # If you provide the name of an existing queue, along with the exact
      # names and values of all the queue\'s attributes, `CreateQueue` returns
      # the queue URL for the existing queue. If the queue name, attribute
      # names, or attribute values do not match an existing queue,
      # `CreateQueue` returns an error.
      #
      # <note markdown="1">Some API actions take lists of parameters. These lists are specified
      # using the `param.n` notation. Values of `n` are integers starting from
      # 1. For example, a parameter list with two elements looks like this:
      #
      #  </note>
      #
      # `<![CDATA[&Attribute.1=this]]>`
      #
      # `<![CDATA[&Attribute.2=that]]>`
      # @option params [required, String] :queue_name
      #   The name for the queue to be created.
      #
      #   Queue names are case-sensitive.
      # @option params [Hash<String,String>] :attributes
      #   A map of attributes with their corresponding values.
      #
      #   The following lists the names, descriptions, and values of the special
      #   request parameters the `CreateQueue` action uses:
      #
      #   * `DelaySeconds` - The time in seconds that the delivery of all
      #     messages in the queue will be delayed. An integer from 0 to 900 (15
      #     minutes). The default for this attribute is 0 (zero).
      #
      #   * `MaximumMessageSize` - The limit of how many bytes a message can
      #     contain before Amazon SQS rejects it. An integer from 1024 bytes (1
      #     KiB) up to 262144 bytes (256 KiB). The default for this attribute is
      #     262144 (256 KiB).
      #
      #   * `MessageRetentionPeriod` - The number of seconds Amazon SQS retains
      #     a message. Integer representing seconds, from 60 (1 minute) to
      #     1209600 (14 days). The default for this attribute is 345600 (4
      #     days).
      #
      #   * `Policy` - The queue\'s policy. A valid AWS policy. For more
      #     information about policy structure, see [Overview of AWS IAM
      #     Policies][1] in the *Amazon IAM User Guide*.
      #
      #   * `ReceiveMessageWaitTimeSeconds` - The time for which a
      #     ReceiveMessage call will wait for a message to arrive. An integer
      #     from 0 to 20 (seconds). The default for this attribute is 0.
      #
      #   * `RedrivePolicy` - The parameters for dead letter queue functionality
      #     of the source queue. For more information about RedrivePolicy and
      #     dead letter queues, see [Using Amazon SQS Dead Letter Queues][2] in
      #     the *Amazon SQS Developer Guide*.
      #
      #   * `VisibilityTimeout` - The visibility timeout for the queue. An
      #     integer from 0 to 43200 (12 hours). The default for this attribute
      #     is 30. For more information about visibility timeout, see
      #     [Visibility Timeout][3] in the *Amazon SQS Developer Guide*.
      #
      #   Any other valid special request parameters that are specified (such as
      #   `ApproximateNumberOfMessages`, `ApproximateNumberOfMessagesDelayed`,
      #   `ApproximateNumberOfMessagesNotVisible`, `CreatedTimestamp`,
      #   `LastModifiedTimestamp`, and `QueueArn`) will be ignored.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html
      #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html
      #   [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AboutVT.html
      # @return [Types::CreateQueueResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateQueueResult#queue_url #QueueUrl} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_queue({
      #     queue_name: "String", # required
      #     attributes: {
      #       "Policy" => "String",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.queue_url #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_queue(params = {}, options = {})
        req = build_request(:create_queue, params)
        req.send_request(options)
      end

      # Deletes the specified message from the specified queue. You specify
      # the message by using the message\'s `receipt handle` and not the
      # `message ID` you received when you sent the message. Even if the
      # message is locked by another reader due to the visibility timeout
      # setting, it is still deleted from the queue. If you leave a message in
      # the queue for longer than the queue\'s configured retention period,
      # Amazon SQS automatically deletes it.
      #
      # <note markdown="1"> The receipt handle is associated with a specific instance of receiving
      # the message. If you receive a message more than once, the receipt
      # handle you get each time you receive the message is different. When
      # you request `DeleteMessage`, if you don\'t provide the most recently
      # received receipt handle for the message, the request will still
      # succeed, but the message might not be deleted.
      #
      #  </note>
      #
      # <important markdown="1"> It is possible you will receive a message even after you have deleted
      # it. This might happen on rare occasions if one of the servers storing
      # a copy of the message is unavailable when you request to delete the
      # message. The copy remains on the server and might be returned to you
      # again on a subsequent receive request. You should create your system
      # to be idempotent so that receiving a particular message more than once
      # is not a problem.
      #
      #  </important>
      # @option params [required, String] :queue_url
      #   The URL of the Amazon SQS queue to take action on.
      #
      #   Queue URLs are case-sensitive.
      # @option params [required, String] :receipt_handle
      #   The receipt handle associated with the message to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_message({
      #     queue_url: "String", # required
      #     receipt_handle: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_message(params = {}, options = {})
        req = build_request(:delete_message, params)
        req.send_request(options)
      end

      # Deletes up to ten messages from the specified queue. This is a batch
      # version of DeleteMessage. The result of the delete action on each
      # message is reported individually in the response.
      #
      # <important markdown="1"> Because the batch request can result in a combination of successful
      # and unsuccessful actions, you should check for batch errors even when
      # the call returns an HTTP status code of 200.
      #
      #  </important>
      #
      # <note markdown="1">Some API actions take lists of parameters. These lists are specified
      # using the `param.n` notation. Values of `n` are integers starting from
      # 1. For example, a parameter list with two elements looks like this:
      #
      #  </note>
      #
      # `<![CDATA[&Attribute.1=this]]>`
      #
      # `<![CDATA[&Attribute.2=that]]>`
      # @option params [required, String] :queue_url
      #   The URL of the Amazon SQS queue to take action on.
      #
      #   Queue URLs are case-sensitive.
      # @option params [required, Array<Types::DeleteMessageBatchRequestEntry>] :entries
      #   A list of receipt handles for the messages to be deleted.
      # @return [Types::DeleteMessageBatchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteMessageBatchResult#successful #Successful} => Array&lt;Types::DeleteMessageBatchResultEntry&gt;
      #   * {Types::DeleteMessageBatchResult#failed #Failed} => Array&lt;Types::BatchResultErrorEntry&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_message_batch({
      #     queue_url: "String", # required
      #     entries: [ # required
      #       {
      #         id: "String", # required
      #         receipt_handle: "String", # required
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.successful #=> Array
      #   resp.successful[0].id #=> String
      #   resp.failed #=> Array
      #   resp.failed[0].id #=> String
      #   resp.failed[0].sender_fault #=> Boolean
      #   resp.failed[0].code #=> String
      #   resp.failed[0].message #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_message_batch(params = {}, options = {})
        req = build_request(:delete_message_batch, params)
        req.send_request(options)
      end

      # Deletes the queue specified by the **queue URL**, regardless of
      # whether the queue is empty. If the specified queue does not exist,
      # Amazon SQS returns a successful response.
      #
      # <important markdown="1"> Use `DeleteQueue` with care; once you delete your queue, any messages
      # in the queue are no longer available.
      #
      #  </important>
      #
      # When you delete a queue, the deletion process takes up to 60 seconds.
      # Requests you send involving that queue during the 60 seconds might
      # succeed. For example, a SendMessage request might succeed, but after
      # the 60 seconds, the queue and that message you sent no longer exist.
      # Also, when you delete a queue, you must wait at least 60 seconds
      # before creating a queue with the same name.
      #
      # We reserve the right to delete queues that have had no activity for
      # more than 30 days. For more information, see [How Amazon SQS Queues
      # Work][1] in the *Amazon SQS Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSConcepts.html
      # @option params [required, String] :queue_url
      #   The URL of the Amazon SQS queue to take action on.
      #
      #   Queue URLs are case-sensitive.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_queue({
      #     queue_url: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_queue(params = {}, options = {})
        req = build_request(:delete_queue, params)
        req.send_request(options)
      end

      # Gets attributes for the specified queue.
      #
      # <note markdown="1">Some API actions take lists of parameters. These lists are specified
      # using the `param.n` notation. Values of `n` are integers starting from
      # 1. For example, a parameter list with two elements looks like this:
      #
      #  </note>
      #
      # `<![CDATA[&Attribute.1=this]]>`
      #
      # `<![CDATA[&Attribute.2=that]]>`
      # @option params [required, String] :queue_url
      #   The URL of the Amazon SQS queue to take action on.
      #
      #   Queue URLs are case-sensitive.
      # @option params [Array<String>] :attribute_names
      #   A list of attributes to retrieve information for. The following
      #   attributes are supported:
      #
      #   * `All` - returns all values.
      #
      #   * `ApproximateNumberOfMessages` - returns the approximate number of
      #     visible messages in a queue. For more information, see [Resources
      #     Required to Process Messages][1] in the *Amazon SQS Developer
      #     Guide*.
      #
      #   * `ApproximateNumberOfMessagesNotVisible` - returns the approximate
      #     number of messages that are not timed-out and not deleted. For more
      #     information, see [Resources Required to Process Messages][1] in the
      #     *Amazon SQS Developer Guide*.
      #
      #   * `VisibilityTimeout` - returns the visibility timeout for the queue.
      #     For more information about visibility timeout, see [Visibility
      #     Timeout][2] in the *Amazon SQS Developer Guide*.
      #
      #   * `CreatedTimestamp` - returns the time when the queue was created
      #     (epoch time in seconds).
      #
      #   * `LastModifiedTimestamp` - returns the time when the queue was last
      #     changed (epoch time in seconds).
      #
      #   * `Policy` - returns the queue\'s policy.
      #
      #   * `MaximumMessageSize` - returns the limit of how many bytes a message
      #     can contain before Amazon SQS rejects it.
      #
      #   * `MessageRetentionPeriod` - returns the number of seconds Amazon SQS
      #     retains a message.
      #
      #   * `QueueArn` - returns the queue\'s Amazon resource name (ARN).
      #
      #   * `ApproximateNumberOfMessagesDelayed` - returns the approximate
      #     number of messages that are pending to be added to the queue.
      #
      #   * `DelaySeconds` - returns the default delay on the queue in seconds.
      #
      #   * `ReceiveMessageWaitTimeSeconds` - returns the time for which a
      #     ReceiveMessage call will wait for a message to arrive.
      #
      #   * `RedrivePolicy` - returns the parameters for dead letter queue
      #     functionality of the source queue. For more information about
      #     RedrivePolicy and dead letter queues, see [Using Amazon SQS Dead
      #     Letter Queues][3] in the *Amazon SQS Developer Guide*.
      #
      #   <note markdown="1">Going forward, new attributes might be added. If you are writing code
      #   that calls this action, we recommend that you structure your code so
      #   that it can handle new attributes gracefully.
      #
      #   </note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/ApproximateNumber.html
      #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AboutVT.html
      #   [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html
      # @return [Types::GetQueueAttributesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetQueueAttributesResult#attributes #Attributes} => Hash&lt;String,String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_queue_attributes({
      #     queue_url: "String", # required
      #     attribute_names: ["Policy"], # accepts Policy, VisibilityTimeout, MaximumMessageSize, MessageRetentionPeriod, ApproximateNumberOfMessages, ApproximateNumberOfMessagesNotVisible, CreatedTimestamp, LastModifiedTimestamp, QueueArn, ApproximateNumberOfMessagesDelayed, DelaySeconds, ReceiveMessageWaitTimeSeconds, RedrivePolicy
      #   })
      #
      # @example Response structure
      #   resp.attributes #=> Hash
      #   resp.attributes["QueueAttributeName"] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_queue_attributes(params = {}, options = {})
        req = build_request(:get_queue_attributes, params)
        req.send_request(options)
      end

      # Returns the URL of an existing queue. This action provides a simple
      # way to retrieve the URL of an Amazon SQS queue.
      #
      # To access a queue that belongs to another AWS account, use the
      # `QueueOwnerAWSAccountId` parameter to specify the account ID of the
      # queue\'s owner. The queue\'s owner must grant you permission to access
      # the queue. For more information about shared queue access, see
      # AddPermission or go to [Shared Queues][1] in the *Amazon SQS Developer
      # Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html
      # @option params [required, String] :queue_name
      #   The name of the queue whose URL must be fetched. Maximum 80
      #   characters; alphanumeric characters, hyphens (-), and underscores (\_)
      #   are allowed.
      #
      #   Queue names are case-sensitive.
      # @option params [String] :queue_owner_aws_account_id
      #   The AWS account ID of the account that created the queue.
      # @return [Types::GetQueueUrlResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetQueueUrlResult#queue_url #QueueUrl} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_queue_url({
      #     queue_name: "String", # required
      #     queue_owner_aws_account_id: "String",
      #   })
      #
      # @example Response structure
      #   resp.queue_url #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_queue_url(params = {}, options = {})
        req = build_request(:get_queue_url, params)
        req.send_request(options)
      end

      # Returns a list of your queues that have the RedrivePolicy queue
      # attribute configured with a dead letter queue.
      #
      # For more information about using dead letter queues, see [Using Amazon
      # SQS Dead Letter Queues][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html
      # @option params [required, String] :queue_url
      #   The queue URL of a dead letter queue.
      #
      #   Queue URLs are case-sensitive.
      # @return [Types::ListDeadLetterSourceQueuesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListDeadLetterSourceQueuesResult#queue_urls #queueUrls} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_dead_letter_source_queues({
      #     queue_url: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.queue_urls #=> Array
      #   resp.queue_urls[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_dead_letter_source_queues(params = {}, options = {})
        req = build_request(:list_dead_letter_source_queues, params)
        req.send_request(options)
      end

      # Returns a list of your queues. The maximum number of queues that can
      # be returned is 1000. If you specify a value for the optional
      # `QueueNamePrefix` parameter, only queues with a name beginning with
      # the specified value are returned.
      # @option params [String] :queue_name_prefix
      #   A string to use for filtering the list results. Only those queues
      #   whose name begins with the specified string are returned.
      #
      #   Queue names are case-sensitive.
      # @return [Types::ListQueuesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListQueuesResult#queue_urls #QueueUrls} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_queues({
      #     queue_name_prefix: "String",
      #   })
      #
      # @example Response structure
      #   resp.queue_urls #=> Array
      #   resp.queue_urls[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_queues(params = {}, options = {})
        req = build_request(:list_queues, params)
        req.send_request(options)
      end

      # Deletes the messages in a queue specified by the **queue URL**.
      #
      # <important markdown="1">When you use the `PurgeQueue` API, the deleted messages in the queue
      # cannot be retrieved.
      #
      # </important>
      #
      # When you purge a queue, the message deletion process takes up to 60
      # seconds. All messages sent to the queue before calling `PurgeQueue`
      # will be deleted; messages sent to the queue while it is being purged
      # may be deleted. While the queue is being purged, messages sent to the
      # queue before `PurgeQueue` was called may be received, but will be
      # deleted within the next minute.
      # @option params [required, String] :queue_url
      #   The queue URL of the queue to delete the messages from when using the
      #   `PurgeQueue` API.
      #
      #   Queue URLs are case-sensitive.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.purge_queue({
      #     queue_url: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def purge_queue(params = {}, options = {})
        req = build_request(:purge_queue, params)
        req.send_request(options)
      end

      # Retrieves one or more messages, with a maximum limit of 10 messages,
      # from the specified queue. Long poll support is enabled by using the
      # `WaitTimeSeconds` parameter. For more information, see [Amazon SQS
      # Long Poll][1] in the *Amazon SQS Developer Guide*.
      #
      # Short poll is the default behavior where a weighted random set of
      # machines is sampled on a `ReceiveMessage` call. This means only the
      # messages on the sampled machines are returned. If the number of
      # messages in the queue is small (less than 1000), it is likely you will
      # get fewer messages than you requested per `ReceiveMessage` call. If
      # the number of messages in the queue is extremely small, you might not
      # receive any messages in a particular `ReceiveMessage` response; in
      # which case you should repeat the request.
      #
      # For each message returned, the response includes the following:
      #
      # * Message body
      #
      # * MD5 digest of the message body. For information about MD5, go to
      #   [http://www.faqs.org/rfcs/rfc1321.html][2].
      #
      # * Message ID you received when you sent the message to the queue.
      #
      # * Receipt handle.
      #
      # * Message attributes.
      #
      # * MD5 digest of the message attributes.
      #
      # The receipt handle is the identifier you must provide when deleting
      # the message. For more information, see [Queue and Message
      # Identifiers][3] in the *Amazon SQS Developer Guide*.
      #
      # You can provide the `VisibilityTimeout` parameter in your request,
      # which will be applied to the messages that Amazon SQS returns in the
      # response. If you do not include the parameter, the overall visibility
      # timeout for the queue is used for the returned messages. For more
      # information, see [Visibility Timeout][4] in the *Amazon SQS Developer
      # Guide*.
      #
      # <note markdown="1"> Going forward, new attributes might be added. If you are writing code
      # that calls this action, we recommend that you structure your code so
      # that it can handle new attributes gracefully.
      #
      #  </note>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-long-polling.html
      # [2]: http://www.faqs.org/rfcs/rfc1321.html
      # [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/ImportantIdentifiers.html
      # [4]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AboutVT.html
      # @option params [required, String] :queue_url
      #   The URL of the Amazon SQS queue to take action on.
      #
      #   Queue URLs are case-sensitive.
      # @option params [Array<String>] :attribute_names
      #   A list of attributes that need to be returned along with each message.
      #   These attributes include:
      #
      #   * `All` - returns all values.
      #
      #   * `ApproximateFirstReceiveTimestamp` - returns the time when the
      #     message was first received from the queue (epoch time in
      #     milliseconds).
      #
      #   * `ApproximateReceiveCount` - returns the number of times a message
      #     has been received from the queue but not deleted.
      #
      #   * `SenderId` - returns the AWS account number (or the IP address, if
      #     anonymous access is allowed) of the sender.
      #
      #   * `SentTimestamp` - returns the time when the message was sent to the
      #     queue (epoch time in milliseconds).
      #
      #   Any other valid special request parameters that are specified (such as
      #   `ApproximateNumberOfMessages`, `ApproximateNumberOfMessagesDelayed`,
      #   `ApproximateNumberOfMessagesNotVisible`, `CreatedTimestamp`,
      #   `DelaySeconds`, `LastModifiedTimestamp`, `MaximumMessageSize`,
      #   `MessageRetentionPeriod`, `Policy`, `QueueArn`,
      #   `ReceiveMessageWaitTimeSeconds`, `RedrivePolicy`, and
      #   `VisibilityTimeout`) will be ignored.
      # @option params [Array<String>] :message_attribute_names
      #   The name of the message attribute, where *N* is the index. The message
      #   attribute name can contain the following characters: A-Z, a-z, 0-9,
      #   underscore (\_), hyphen (-), and period (.). The name must not start
      #   or end with a period, and it should not have successive periods. The
      #   name is case sensitive and must be unique among all attribute names
      #   for the message. The name can be up to 256 characters long. The name
      #   cannot start with \"AWS.\" or \"Amazon.\" (or any variations in
      #   casing), because these prefixes are reserved for use by Amazon Web
      #   Services.
      #
      #   When using `ReceiveMessage`, you can send a list of attribute names to
      #   receive, or you can return all of the attributes by specifying \"All\"
      #   or \".\*\" in your request. You can also use \"bar.\*\" to return all
      #   message attributes starting with the \"bar\" prefix.
      # @option params [Integer] :max_number_of_messages
      #   The maximum number of messages to return. Amazon SQS never returns
      #   more messages than this value but may return fewer. Values can be from
      #   1 to 10. Default is 1.
      #
      #   All of the messages are not necessarily returned.
      # @option params [Integer] :visibility_timeout
      #   The duration (in seconds) that the received messages are hidden from
      #   subsequent retrieve requests after being retrieved by a
      #   `ReceiveMessage` request.
      # @option params [Integer] :wait_time_seconds
      #   The duration (in seconds) for which the call will wait for a message
      #   to arrive in the queue before returning. If a message is available,
      #   the call will return sooner than WaitTimeSeconds.
      # @return [Types::ReceiveMessageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ReceiveMessageResult#messages #Messages} => Array&lt;Types::Message&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.receive_message({
      #     queue_url: "String", # required
      #     attribute_names: ["Policy"], # accepts Policy, VisibilityTimeout, MaximumMessageSize, MessageRetentionPeriod, ApproximateNumberOfMessages, ApproximateNumberOfMessagesNotVisible, CreatedTimestamp, LastModifiedTimestamp, QueueArn, ApproximateNumberOfMessagesDelayed, DelaySeconds, ReceiveMessageWaitTimeSeconds, RedrivePolicy
      #     message_attribute_names: ["MessageAttributeName"],
      #     max_number_of_messages: 1,
      #     visibility_timeout: 1,
      #     wait_time_seconds: 1,
      #   })
      #
      # @example Response structure
      #   resp.messages #=> Array
      #   resp.messages[0].message_id #=> String
      #   resp.messages[0].receipt_handle #=> String
      #   resp.messages[0].md5_of_body #=> String
      #   resp.messages[0].body #=> String
      #   resp.messages[0].attributes #=> Hash
      #   resp.messages[0].attributes["QueueAttributeName"] #=> String
      #   resp.messages[0].md5_of_message_attributes #=> String
      #   resp.messages[0].message_attributes #=> Hash
      #   resp.messages[0].message_attributes["String"].string_value #=> String
      #   resp.messages[0].message_attributes["String"].binary_value #=> String
      #   resp.messages[0].message_attributes["String"].string_list_values #=> Array
      #   resp.messages[0].message_attributes["String"].string_list_values[0] #=> String
      #   resp.messages[0].message_attributes["String"].binary_list_values #=> Array
      #   resp.messages[0].message_attributes["String"].binary_list_values[0] #=> String
      #   resp.messages[0].message_attributes["String"].data_type #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def receive_message(params = {}, options = {})
        req = build_request(:receive_message, params)
        req.send_request(options)
      end

      # Revokes any permissions in the queue policy that matches the specified
      # `Label` parameter. Only the owner of the queue can remove permissions.
      # @option params [required, String] :queue_url
      #   The URL of the Amazon SQS queue to take action on.
      #
      #   Queue URLs are case-sensitive.
      # @option params [required, String] :label
      #   The identification of the permission to remove. This is the label
      #   added with the AddPermission action.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_permission({
      #     queue_url: "String", # required
      #     label: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def remove_permission(params = {}, options = {})
        req = build_request(:remove_permission, params)
        req.send_request(options)
      end

      # Delivers a message to the specified queue. With Amazon SQS, you now
      # have the ability to send large payload messages that are up to 256KB
      # (262,144 bytes) in size. To send large payloads, you must use an AWS
      # SDK that supports SigV4 signing. To verify whether SigV4 is supported
      # for an AWS SDK, check the SDK release notes.
      #
      # <important markdown="1"> The following list shows the characters (in Unicode) allowed in your
      # message, according to the W3C XML specification. For more information,
      # go to [http://www.w3.org/TR/REC-xml/#charsets][1] If you send any
      # characters not included in the list, your request will be rejected.
      #
      #  \#x9 \| #xA \| #xD \| \[#x20 to #xD7FF\] \| \[#xE000 to #xFFFD\] \|
      # \[#x10000 to #x10FFFF\]
      #
      #  </important>
      #
      #
      #
      # [1]: http://www.w3.org/TR/REC-xml/#charsets
      # @option params [required, String] :queue_url
      #   The URL of the Amazon SQS queue to take action on.
      #
      #   Queue URLs are case-sensitive.
      # @option params [required, String] :message_body
      #   The message to send. String maximum 256 KB in size. For a list of
      #   allowed characters, see the preceding important note.
      # @option params [Integer] :delay_seconds
      #   The number of seconds (0 to 900 - 15 minutes) to delay a specific
      #   message. Messages with a positive `DelaySeconds` value become
      #   available for processing after the delay time is finished. If you
      #   don\'t specify a value, the default value for the queue applies.
      # @option params [Hash<String,Types::MessageAttributeValue>] :message_attributes
      #   Each message attribute consists of a Name, Type, and Value. For more
      #   information, see [Message Attribute Items][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSMessageAttributes.html#SQSMessageAttributesNTV
      # @return [Types::SendMessageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::SendMessageResult#md5_of_message_body #MD5OfMessageBody} => String
      #   * {Types::SendMessageResult#md5_of_message_attributes #MD5OfMessageAttributes} => String
      #   * {Types::SendMessageResult#message_id #MessageId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.send_message({
      #     queue_url: "String", # required
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
      #   })
      #
      # @example Response structure
      #   resp.md5_of_message_body #=> String
      #   resp.md5_of_message_attributes #=> String
      #   resp.message_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def send_message(params = {}, options = {})
        req = build_request(:send_message, params)
        req.send_request(options)
      end

      # Delivers up to ten messages to the specified queue. This is a batch
      # version of SendMessage. The result of the send action on each message
      # is reported individually in the response. The maximum allowed
      # individual message size is 256 KB (262,144 bytes).
      #
      # The maximum total payload size (i.e., the sum of all a batch\'s
      # individual message lengths) is also 256 KB (262,144 bytes).
      #
      # If the `DelaySeconds` parameter is not specified for an entry, the
      # default for the queue is used.
      #
      # <important markdown="1">The following list shows the characters (in Unicode) that are allowed
      # in your message, according to the W3C XML specification. For more
      # information, go to [http://www.faqs.org/rfcs/rfc1321.html][1]. If you
      # send any characters that are not included in the list, your request
      # will be rejected.
      #
      #  \#x9 \| #xA \| #xD \| \[#x20 to #xD7FF\] \| \[#xE000 to #xFFFD\] \|
      # \[#x10000 to #x10FFFF\]
      #
      #  </important>
      #
      # <important markdown="1"> Because the batch request can result in a combination of successful
      # and unsuccessful actions, you should check for batch errors even when
      # the call returns an HTTP status code of 200.
      #
      #  </important>
      #
      # <note markdown="1">Some API actions take lists of parameters. These lists are specified
      # using the `param.n` notation. Values of `n` are integers starting from
      # 1. For example, a parameter list with two elements looks like this:
      #
      #  </note>
      #
      # `<![CDATA[&Attribute.1=this]]>`
      #
      # `<![CDATA[&Attribute.2=that]]>`
      #
      #
      #
      # [1]: http://www.faqs.org/rfcs/rfc1321.html
      # @option params [required, String] :queue_url
      #   The URL of the Amazon SQS queue to take action on.
      #
      #   Queue URLs are case-sensitive.
      # @option params [required, Array<Types::SendMessageBatchRequestEntry>] :entries
      #   A list of SendMessageBatchRequestEntry items.
      # @return [Types::SendMessageBatchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::SendMessageBatchResult#successful #Successful} => Array&lt;Types::SendMessageBatchResultEntry&gt;
      #   * {Types::SendMessageBatchResult#failed #Failed} => Array&lt;Types::BatchResultErrorEntry&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.send_message_batch({
      #     queue_url: "String", # required
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
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.successful #=> Array
      #   resp.successful[0].id #=> String
      #   resp.successful[0].message_id #=> String
      #   resp.successful[0].md5_of_message_body #=> String
      #   resp.successful[0].md5_of_message_attributes #=> String
      #   resp.failed #=> Array
      #   resp.failed[0].id #=> String
      #   resp.failed[0].sender_fault #=> Boolean
      #   resp.failed[0].code #=> String
      #   resp.failed[0].message #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def send_message_batch(params = {}, options = {})
        req = build_request(:send_message_batch, params)
        req.send_request(options)
      end

      # Sets the value of one or more queue attributes. When you change a
      # queue\'s attributes, the change can take up to 60 seconds for most of
      # the attributes to propagate throughout the SQS system. Changes made to
      # the `MessageRetentionPeriod` attribute can take up to 15 minutes.
      #
      # <note markdown="1">Going forward, new attributes might be added. If you are writing code
      # that calls this action, we recommend that you structure your code so
      # that it can handle new attributes gracefully.
      #
      # </note>
      # @option params [required, String] :queue_url
      #   The URL of the Amazon SQS queue to take action on.
      #
      #   Queue URLs are case-sensitive.
      # @option params [required, Hash<String,String>] :attributes
      #   A map of attributes to set.
      #
      #   The following lists the names, descriptions, and values of the special
      #   request parameters the `SetQueueAttributes` action uses:
      #
      #   * `DelaySeconds` - The time in seconds that the delivery of all
      #     messages in the queue will be delayed. An integer from 0 to 900 (15
      #     minutes). The default for this attribute is 0 (zero).
      #
      #   * `MaximumMessageSize` - The limit of how many bytes a message can
      #     contain before Amazon SQS rejects it. An integer from 1024 bytes (1
      #     KiB) up to 262144 bytes (256 KiB). The default for this attribute is
      #     262144 (256 KiB).
      #
      #   * `MessageRetentionPeriod` - The number of seconds Amazon SQS retains
      #     a message. Integer representing seconds, from 60 (1 minute) to
      #     1209600 (14 days). The default for this attribute is 345600 (4
      #     days).
      #
      #   * `Policy` - The queue\'s policy. A valid AWS policy. For more
      #     information about policy structure, see [Overview of AWS IAM
      #     Policies][1] in the *Amazon IAM User Guide*.
      #
      #   * `ReceiveMessageWaitTimeSeconds` - The time for which a
      #     ReceiveMessage call will wait for a message to arrive. An integer
      #     from 0 to 20 (seconds). The default for this attribute is 0.
      #
      #   * `VisibilityTimeout` - The visibility timeout for the queue. An
      #     integer from 0 to 43200 (12 hours). The default for this attribute
      #     is 30. For more information about visibility timeout, see Visibility
      #     Timeout in the *Amazon SQS Developer Guide*.
      #
      #   * `RedrivePolicy` - The parameters for dead letter queue functionality
      #     of the source queue. For more information about RedrivePolicy and
      #     dead letter queues, see Using Amazon SQS Dead Letter Queues in the
      #     *Amazon SQS Developer Guide*.
      #
      #   Any other valid special request parameters that are specified (such as
      #   `ApproximateNumberOfMessages`, `ApproximateNumberOfMessagesDelayed`,
      #   `ApproximateNumberOfMessagesNotVisible`, `CreatedTimestamp`,
      #   `LastModifiedTimestamp`, and `QueueArn`) will be ignored.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.set_queue_attributes({
      #     queue_url: "String", # required
      #     attributes: { # required
      #       "Policy" => "String",
      #     },
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def set_queue_attributes(params = {}, options = {})
        req = build_request(:set_queue_attributes, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
