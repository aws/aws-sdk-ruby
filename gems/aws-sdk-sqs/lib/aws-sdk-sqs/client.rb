# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'
require 'aws-sdk-sqs/plugins/queue_urls.rb'
require 'aws-sdk-sqs/plugins/md5s.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:sqs)

module Aws::SQS
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :sqs

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::Query)
    add_plugin(Aws::SQS::Plugins::QueueUrls)
    add_plugin(Aws::SQS::Plugins::Md5s)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    # @option options [Boolean] :verify_checksums (true)
    #   When `true` MD5 checksums will be computed for messages sent to
    #   an SQS queue and matched against MD5 checksums returned by Amazon SQS.
    #   `Aws::Errors::Checksum` errors are raised for cases where checksums do
    #   not match.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds a permission to a queue for a specific [principal][1]. This
    # allows sharing access to the queue.
    #
    # When you create a queue, you have full control access rights for the
    # queue. Only you, the owner of the queue, can grant or deny permissions
    # to the queue. For more information about these permissions, see
    # [Shared Queues][2] in the *Amazon Simple Queue Service Developer
    # Guide*.
    #
    # <note markdown="1"> `AddPermission` writes an Amazon-SQS-generated policy. If you want to
    # write your own policy, use ` SetQueueAttributes ` to upload your
    # policy. For more information about writing your own policy, see [Using
    # The Access Policy Language][3] in the *Amazon Simple Queue Service
    # Developer Guide*.
    #
    #  Some actions take lists of parameters. These lists are specified using
    # the `param.n` notation. Values of `n` are integers starting from 1.
    # For example, a parameter list with two elements looks like this:
    #
    #  `&Attribute.1=this`
    #
    #  `&Attribute.2=that`
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P
    # [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html
    # [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AccessPolicyLanguage.html
    #
    # @option params [required, String] :queue_url
    #   The URL of the Amazon SQS queue to which permissions are added.
    #
    #   Queue URLs are case-sensitive.
    #
    # @option params [required, String] :label
    #   The unique identification of the permission you're setting (for
    #   example, `AliceSendMessage`). Maximum 80 characters. Allowed
    #   characters include alphanumeric characters, hyphens (`-`), and
    #   underscores (`_`).
    #
    # @option params [required, Array<String>] :aws_account_ids
    #   The AWS account number of the [principal][1] who is given permission.
    #   The principal must have an AWS account, but does not need to be signed
    #   up for Amazon SQS. For information about locating the AWS account
    #   identification, see [Your AWS Identifiers][2] in the *Amazon Simple
    #   Queue Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P
    #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AWSCredentials.html
    #
    # @option params [required, Array<String>] :actions
    #   The action the client wants to allow for the specified principal. The
    #   following values are valid:
    #
    #   * `*`
    #
    #   * `ChangeMessageVisibility`
    #
    #   * `DeleteMessage`
    #
    #   * `GetQueueAttributes`
    #
    #   * `GetQueueUrl`
    #
    #   * `ReceiveMessage`
    #
    #   * `SendMessage`
    #
    #   For more information about these actions, see [Understanding
    #   Permissions][1] in the *Amazon Simple Queue Service Developer Guide*.
    #
    #   Specifying `SendMessage`, `DeleteMessage`, or
    #   `ChangeMessageVisibility` for `ActionName.n` also grants permissions
    #   for the corresponding batch versions of those actions:
    #   `SendMessageBatch`, `DeleteMessageBatch`, and
    #   `ChangeMessageVisibilityBatch`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html#PermissionTypes
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_permission({
    #     queue_url: "String", # required
    #     label: "String", # required
    #     aws_account_ids: ["String"], # required
    #     actions: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/AddPermission AWS API Documentation
    #
    # @overload add_permission(params = {})
    # @param [Hash] params ({})
    def add_permission(params = {}, options = {})
      req = build_request(:add_permission, params)
      req.send_request(options)
    end

    # Changes the visibility timeout of a specified message in a queue to a
    # new value. The maximum allowed timeout value is 12 hours. Thus, you
    # can't extend the timeout of a message in an existing queue to more
    # than a total visibility timeout of 12 hours. For more information, see
    # [Visibility Timeout][1] in the *Amazon Simple Queue Service Developer
    # Guide*.
    #
    # For example, you have a message with a visibility timeout of 5
    # minutes. After 3 minutes, you call `ChangeMessageVisiblity` with a
    # timeout of 10 minutes. At that time, the timeout for the message is
    # extended by 10 minutes beyond the time of the
    # `ChangeMessageVisibility` action. This results in a total visibility
    # timeout of 13 minutes. You can continue to call the
    # `ChangeMessageVisibility` to extend the visibility timeout to a
    # maximum of 12 hours. If you try to extend the visibility timeout
    # beyond 12 hours, your request is rejected.
    #
    # A message is considered to be *in flight* after it's received from a
    # queue by a consumer, but not yet deleted from the queue.
    #
    # For standard queues, there can be a maximum of 120,000 inflight
    # messages per queue. If you reach this limit, Amazon SQS returns the
    # `OverLimit` error message. To avoid reaching the limit, you should
    # delete messages from the queue after they're processed. You can also
    # increase the number of queues you use to process your messages.
    #
    # For FIFO queues, there can be a maximum of 20,000 inflight messages
    # per queue. If you reach this limit, Amazon SQS returns no error
    # messages.
    #
    # If you attempt to set the `VisibilityTimeout` to a value greater than
    # the maximum time left, Amazon SQS returns an error. Amazon SQS
    # doesn't automatically recalculate and increase the timeout to the
    # maximum remaining time.
    #
    #  Unlike with a queue, when you change the visibility timeout for a
    # specific message the timeout value is applied immediately but isn't
    # saved in memory for that message. If you don't delete a message after
    # it is received, the visibility timeout for the message reverts to the
    # original timeout value (not to the value you set using the
    # `ChangeMessageVisibility` action) the next time the message is
    # received.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    #
    # @option params [required, String] :queue_url
    #   The URL of the Amazon SQS queue whose message's visibility is
    #   changed.
    #
    #   Queue URLs are case-sensitive.
    #
    # @option params [required, String] :receipt_handle
    #   The receipt handle associated with the message whose visibility
    #   timeout is changed. This parameter is returned by the ` ReceiveMessage
    #   ` action.
    #
    # @option params [required, Integer] :visibility_timeout
    #   The new value for the message's visibility timeout (in seconds).
    #   Values values: `0` to `43200`. Maximum: 12 hours.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_message_visibility({
    #     queue_url: "String", # required
    #     receipt_handle: "String", # required
    #     visibility_timeout: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ChangeMessageVisibility AWS API Documentation
    #
    # @overload change_message_visibility(params = {})
    # @param [Hash] params ({})
    def change_message_visibility(params = {}, options = {})
      req = build_request(:change_message_visibility, params)
      req.send_request(options)
    end

    # Changes the visibility timeout of multiple messages. This is a batch
    # version of ` ChangeMessageVisibility.` The result of the action on
    # each message is reported individually in the response. You can send up
    # to 10 ` ChangeMessageVisibility ` requests with each
    # `ChangeMessageVisibilityBatch` action.
    #
    # Because the batch request can result in a combination of successful
    # and unsuccessful actions, you should check for batch errors even when
    # the call returns an HTTP status code of `200`.
    #
    # <note markdown="1"> Some actions take lists of parameters. These lists are specified using
    # the `param.n` notation. Values of `n` are integers starting from 1.
    # For example, a parameter list with two elements looks like this:
    #
    #  `&Attribute.1=this`
    #
    #  `&Attribute.2=that`
    #
    #  </note>
    #
    # @option params [required, String] :queue_url
    #   The URL of the Amazon SQS queue whose messages' visibility is
    #   changed.
    #
    #   Queue URLs are case-sensitive.
    #
    # @option params [required, Array<Types::ChangeMessageVisibilityBatchRequestEntry>] :entries
    #   A list of receipt handles of the messages for which the visibility
    #   timeout must be changed.
    #
    # @return [Types::ChangeMessageVisibilityBatchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ChangeMessageVisibilityBatchResult#successful #successful} => Array&lt;Types::ChangeMessageVisibilityBatchResultEntry&gt;
    #   * {Types::ChangeMessageVisibilityBatchResult#failed #failed} => Array&lt;Types::BatchResultErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
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
    #
    #   resp.successful #=> Array
    #   resp.successful[0].id #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].id #=> String
    #   resp.failed[0].sender_fault #=> Boolean
    #   resp.failed[0].code #=> String
    #   resp.failed[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ChangeMessageVisibilityBatch AWS API Documentation
    #
    # @overload change_message_visibility_batch(params = {})
    # @param [Hash] params ({})
    def change_message_visibility_batch(params = {}, options = {})
      req = build_request(:change_message_visibility_batch, params)
      req.send_request(options)
    end

    # Creates a new standard or FIFO queue. You can pass one or more
    # attributes in the request. Keep the following caveats in mind:
    #
    # * If you don't specify the `FifoQueue` attribute, Amazon SQS creates
    #   a standard queue.
    #
    #   <note markdown="1"> You can't change the queue type after you create it and you can't
    #   convert an existing standard queue into a FIFO queue. You must
    #   either create a new FIFO queue for your application or delete your
    #   existing standard queue and recreate it as a FIFO queue. For more
    #   information, see [ Moving From a Standard Queue to a FIFO Queue][1]
    #   in the *Amazon Simple Queue Service Developer Guide*.
    #
    #    </note>
    #
    # * If you don't provide a value for an attribute, the queue is created
    #   with the default value for the attribute.
    #
    # * If you delete a queue, you must wait at least 60 seconds before
    #   creating a queue with the same name.
    #
    # To successfully create a new queue, you must provide a queue name that
    # adheres to the [limits related to queues][2] and is unique within the
    # scope of your queues.
    #
    # To get the queue URL, use the ` GetQueueUrl ` action. ` GetQueueUrl `
    # requires only the `QueueName` parameter. be aware of existing queue
    # names:
    #
    # * If you provide the name of an existing queue along with the exact
    #   names and values of all the queue's attributes, `CreateQueue`
    #   returns the queue URL for the existing queue.
    #
    # * If the queue name, attribute names, or attribute values don't match
    #   an existing queue, `CreateQueue` returns an error.
    #
    # <note markdown="1"> Some actions take lists of parameters. These lists are specified using
    # the `param.n` notation. Values of `n` are integers starting from 1.
    # For example, a parameter list with two elements looks like this:
    #
    #  `&Attribute.1=this`
    #
    #  `&Attribute.2=that`
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-moving
    # [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html
    #
    # @option params [required, String] :queue_name
    #   The name of the new queue. The following limits apply to this name:
    #
    #   * A queue name can have up to 80 characters.
    #
    #   * Valid values: alphanumeric characters, hyphens (`-`), and
    #     underscores (`_`).
    #
    #   * A FIFO queue name must end with the `.fifo` suffix.
    #
    #   Queue names are case-sensitive.
    #
    # @option params [Hash<String,String>] :attributes
    #   A map of attributes with their corresponding values.
    #
    #   The following lists the names, descriptions, and values of the special
    #   request parameters that the `CreateQueue` action uses:
    #
    #   * `DelaySeconds` - The length of time, in seconds, for which the
    #     delivery of all messages in the queue is delayed. Valid values: An
    #     integer from 0 to 900 seconds (15 minutes). The default is 0 (zero).
    #
    #   * `MaximumMessageSize` - The limit of how many bytes a message can
    #     contain before Amazon SQS rejects it. Valid values: An integer from
    #     1,024 bytes (1 KiB) to 262,144 bytes (256 KiB). The default is
    #     262,144 (256 KiB).
    #
    #   * `MessageRetentionPeriod` - The length of time, in seconds, for which
    #     Amazon SQS retains a message. Valid values: An integer from 60
    #     seconds (1 minute) to 1,209,600 seconds (14 days). The default is
    #     345,600 (4 days).
    #
    #   * `Policy` - The queue's policy. A valid AWS policy. For more
    #     information about policy structure, see [Overview of AWS IAM
    #     Policies][1] in the *Amazon IAM User Guide*.
    #
    #   * `ReceiveMessageWaitTimeSeconds` - The length of time, in seconds,
    #     for which a ` ReceiveMessage ` action waits for a message to arrive.
    #     Valid values: An integer from 0 to 20 (seconds). The default is 0
    #     (zero).
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
    #       the source queue before being moved to the dead-letter queue.
    #
    #     <note markdown="1"> The dead-letter queue of a FIFO queue must also be a FIFO queue.
    #     Similarly, the dead-letter queue of a standard queue must also be a
    #     standard queue.
    #
    #      </note>
    #
    #   * `VisibilityTimeout` - The visibility timeout for the queue. Valid
    #     values: An integer from 0 to 43,200 (12 hours). The default is 30.
    #     For more information about the visibility timeout, see [Visibility
    #     Timeout][3] in the *Amazon Simple Queue Service Developer Guide*.
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
    #     hours). The default is 300 (5 minutes). A shorter time period
    #     provides better security but results in more calls to KMS which
    #     might incur charges after Free Tier. For more information, see [How
    #     Does the Data Key Reuse Period Work?][8].
    #
    #   The following attributes apply only to [FIFO (first-in-first-out)
    #   queues][9]\:
    #
    #   * `FifoQueue` - Designates a queue as FIFO. Valid values: `true`,
    #     `false`. You can provide this attribute only during queue creation.
    #     You can't change it for an existing queue. When you set this
    #     attribute, you must also provide the `MessageGroupId` for your
    #     messages explicitly.
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
    #   Any other valid special request parameters (such as the following) are
    #   ignored:
    #
    #   * `ApproximateNumberOfMessages`
    #
    #   * `ApproximateNumberOfMessagesDelayed`
    #
    #   * `ApproximateNumberOfMessagesNotVisible`
    #
    #   * `CreatedTimestamp`
    #
    #   * `LastModifiedTimestamp`
    #
    #   * `QueueArn`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html
    #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
    #   [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    #   [4]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html
    #   [5]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms
    #   [6]: http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters
    #   [7]: http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys
    #   [8]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work
    #   [9]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html
    #   [10]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic
    #   [11]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing
    #
    # @return [Types::CreateQueueResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQueueResult#queue_url #queue_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_queue({
    #     queue_name: "String", # required
    #     attributes: {
    #       "All" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/CreateQueue AWS API Documentation
    #
    # @overload create_queue(params = {})
    # @param [Hash] params ({})
    def create_queue(params = {}, options = {})
      req = build_request(:create_queue, params)
      req.send_request(options)
    end

    # Deletes the specified message from the specified queue. You specify
    # the message by using the message's *receipt handle* and not the
    # *MessageId* you receive when you send the message. Even if the message
    # is locked by another reader due to the visibility timeout setting, it
    # is still deleted from the queue. If you leave a message in the queue
    # for longer than the queue's configured retention period, Amazon SQS
    # automatically deletes the message.
    #
    # <note markdown="1"> The receipt handle is associated with a specific instance of receiving
    # the message. If you receive a message more than once, the receipt
    # handle you get each time you receive the message is different. If you
    # don't provide the most recently received receipt handle for the
    # message when you use the `DeleteMessage` action, the request succeeds,
    # but the message might not be deleted.
    #
    #  For standard queues, it is possible to receive a message even after
    # you delete it. This might happen on rare occasions if one of the
    # servers storing a copy of the message is unavailable when you send the
    # request to delete the message. The copy remains on the server and
    # might be returned to you on a subsequent receive request. You should
    # ensure that your application is idempotent, so that receiving a
    # message more than once does not cause issues.
    #
    #  </note>
    #
    # @option params [required, String] :queue_url
    #   The URL of the Amazon SQS queue from which messages are deleted.
    #
    #   Queue URLs are case-sensitive.
    #
    # @option params [required, String] :receipt_handle
    #   The receipt handle associated with the message to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_message({
    #     queue_url: "String", # required
    #     receipt_handle: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/DeleteMessage AWS API Documentation
    #
    # @overload delete_message(params = {})
    # @param [Hash] params ({})
    def delete_message(params = {}, options = {})
      req = build_request(:delete_message, params)
      req.send_request(options)
    end

    # Deletes up to ten messages from the specified queue. This is a batch
    # version of ` DeleteMessage.` The result of the action on each message
    # is reported individually in the response.
    #
    # Because the batch request can result in a combination of successful
    # and unsuccessful actions, you should check for batch errors even when
    # the call returns an HTTP status code of `200`.
    #
    # <note markdown="1"> Some actions take lists of parameters. These lists are specified using
    # the `param.n` notation. Values of `n` are integers starting from 1.
    # For example, a parameter list with two elements looks like this:
    #
    #  `&Attribute.1=this`
    #
    #  `&Attribute.2=that`
    #
    #  </note>
    #
    # @option params [required, String] :queue_url
    #   The URL of the Amazon SQS queue from which messages are deleted.
    #
    #   Queue URLs are case-sensitive.
    #
    # @option params [required, Array<Types::DeleteMessageBatchRequestEntry>] :entries
    #   A list of receipt handles for the messages to be deleted.
    #
    # @return [Types::DeleteMessageBatchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMessageBatchResult#successful #successful} => Array&lt;Types::DeleteMessageBatchResultEntry&gt;
    #   * {Types::DeleteMessageBatchResult#failed #failed} => Array&lt;Types::BatchResultErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
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
    #
    #   resp.successful #=> Array
    #   resp.successful[0].id #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].id #=> String
    #   resp.failed[0].sender_fault #=> Boolean
    #   resp.failed[0].code #=> String
    #   resp.failed[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/DeleteMessageBatch AWS API Documentation
    #
    # @overload delete_message_batch(params = {})
    # @param [Hash] params ({})
    def delete_message_batch(params = {}, options = {})
      req = build_request(:delete_message_batch, params)
      req.send_request(options)
    end

    # Deletes the queue specified by the `QueueUrl`, regardless of the
    # queue's contents. If the specified queue doesn't exist, Amazon SQS
    # returns a successful response.
    #
    # Be careful with the `DeleteQueue` action: When you delete a queue, any
    # messages in the queue are no longer available.
    #
    # When you delete a queue, the deletion process takes up to 60 seconds.
    # Requests you send involving that queue during the 60 seconds might
    # succeed. For example, a ` SendMessage ` request might succeed, but
    # after 60 seconds the queue and the message you sent no longer exist.
    #
    # When you delete a queue, you must wait at least 60 seconds before
    # creating a queue with the same name.
    #
    # @option params [required, String] :queue_url
    #   The URL of the Amazon SQS queue to delete.
    #
    #   Queue URLs are case-sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queue({
    #     queue_url: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/DeleteQueue AWS API Documentation
    #
    # @overload delete_queue(params = {})
    # @param [Hash] params ({})
    def delete_queue(params = {}, options = {})
      req = build_request(:delete_queue, params)
      req.send_request(options)
    end

    # Gets attributes for the specified queue.
    #
    # <note markdown="1"> To determine whether a queue is [FIFO][1], you can check whether
    # `QueueName` ends with the `.fifo` suffix.
    #
    #  </note>
    #
    # <note markdown="1"> Some actions take lists of parameters. These lists are specified using
    # the `param.n` notation. Values of `n` are integers starting from 1.
    # For example, a parameter list with two elements looks like this:
    #
    #  `&Attribute.1=this`
    #
    #  `&Attribute.2=that`
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html
    #
    # @option params [required, String] :queue_url
    #   The URL of the Amazon SQS queue whose attribute information is
    #   retrieved.
    #
    #   Queue URLs are case-sensitive.
    #
    # @option params [Array<String>] :attribute_names
    #   A list of attributes for which to retrieve information.
    #
    #   <note markdown="1"> In the future, new attributes might be added. If you write code that
    #   calls this action, we recommend that you structure your code so that
    #   it can handle new attributes gracefully.
    #
    #    </note>
    #
    #   The following attributes are supported:
    #
    #   * `All` - Returns all values.
    #
    #   * `ApproximateNumberOfMessages` - Returns the approximate number of
    #     visible messages in a queue. For more information, see [Resources
    #     Required to Process Messages][1] in the *Amazon Simple Queue Service
    #     Developer Guide*.
    #
    #   * `ApproximateNumberOfMessagesDelayed` - Returns the approximate
    #     number of messages that are waiting to be added to the queue.
    #
    #   * `ApproximateNumberOfMessagesNotVisible` - Returns the approximate
    #     number of messages that have not timed-out and aren't deleted. For
    #     more information, see [Resources Required to Process Messages][1] in
    #     the *Amazon Simple Queue Service Developer Guide*.
    #
    #   * `CreatedTimestamp` - Returns the time when the queue was created in
    #     seconds ([epoch time][2]).
    #
    #   * `DelaySeconds` - Returns the default delay on the queue in seconds.
    #
    #   * `LastModifiedTimestamp` - Returns the time when the queue was last
    #     changed in seconds ([epoch time][2]).
    #
    #   * `MaximumMessageSize` - Returns the limit of how many bytes a message
    #     can contain before Amazon SQS rejects it.
    #
    #   * `MessageRetentionPeriod` - Returns the length of time, in seconds,
    #     for which Amazon SQS retains a message.
    #
    #   * `Policy` - Returns the policy of the queue.
    #
    #   * `QueueArn` - Returns the Amazon resource name (ARN) of the queue.
    #
    #   * `ReceiveMessageWaitTimeSeconds` - Returns the length of time, in
    #     seconds, for which the `ReceiveMessage` action waits for a message
    #     to arrive.
    #
    #   * `RedrivePolicy` - Returns the string that includes the parameters
    #     for dead-letter queue functionality of the source queue. For more
    #     information about the redrive policy and dead-letter queues, see
    #     [Using Amazon SQS Dead-Letter Queues][3] in the *Amazon Simple Queue
    #     Service Developer Guide*.
    #
    #     * `deadLetterTargetArn` - The Amazon Resource Name (ARN) of the
    #       dead-letter queue to which Amazon SQS moves messages after the
    #       value of `maxReceiveCount` is exceeded.
    #
    #     * `maxReceiveCount` - The number of times a message is delivered to
    #       the source queue before being moved to the dead-letter queue.
    #
    #   * `VisibilityTimeout` - Returns the visibility timeout for the queue.
    #     For more information about the visibility timeout, see [Visibility
    #     Timeout][4] in the *Amazon Simple Queue Service Developer Guide*.
    #
    #   The following attributes apply only to [server-side-encryption][5]\:
    #
    #   * `KmsMasterKeyId` - Returns the ID of an AWS-managed customer master
    #     key (CMK) for Amazon SQS or a custom CMK. For more information, see
    #     [Key Terms][6].
    #
    #   * `KmsDataKeyReusePeriodSeconds` - Returns the length of time, in
    #     seconds, for which Amazon SQS can reuse a data key to encrypt or
    #     decrypt messages before calling AWS KMS again. For more information,
    #     see [How Does the Data Key Reuse Period Work?][7].
    #
    #   The following attributes apply only to [FIFO (first-in-first-out)
    #   queues][8]\:
    #
    #   * `FifoQueue` - Returns whether the queue is FIFO. For more
    #     information, see [FIFO Queue Logic][9] in the *Amazon Simple Queue
    #     Service Developer Guide*.
    #
    #     <note markdown="1"> To determine whether a queue is [FIFO][8], you can check whether
    #     `QueueName` ends with the `.fifo` suffix.
    #
    #      </note>
    #
    #   * `ContentBasedDeduplication` - Returns whether content-based
    #     deduplication is enabled for the queue. For more information, see
    #     [Exactly-Once Processing][10] in the *Amazon Simple Queue Service
    #     Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-resources-required-process-messages.html
    #   [2]: http://en.wikipedia.org/wiki/Unix_time
    #   [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
    #   [4]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    #   [5]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html
    #   [6]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms
    #   [7]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work
    #   [8]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html
    #   [9]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic
    #   [10]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing
    #
    # @return [Types::GetQueueAttributesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueueAttributesResult#attributes #attributes} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_queue_attributes({
    #     queue_url: "String", # required
    #     attribute_names: ["All"], # accepts All, Policy, VisibilityTimeout, MaximumMessageSize, MessageRetentionPeriod, ApproximateNumberOfMessages, ApproximateNumberOfMessagesNotVisible, CreatedTimestamp, LastModifiedTimestamp, QueueArn, ApproximateNumberOfMessagesDelayed, DelaySeconds, ReceiveMessageWaitTimeSeconds, RedrivePolicy, FifoQueue, ContentBasedDeduplication, KmsMasterKeyId, KmsDataKeyReusePeriodSeconds
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Hash
    #   resp.attributes["QueueAttributeName"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/GetQueueAttributes AWS API Documentation
    #
    # @overload get_queue_attributes(params = {})
    # @param [Hash] params ({})
    def get_queue_attributes(params = {}, options = {})
      req = build_request(:get_queue_attributes, params)
      req.send_request(options)
    end

    # Returns the URL of an existing queue. This action provides a simple
    # way to retrieve the URL of an Amazon SQS queue.
    #
    # To access a queue that belongs to another AWS account, use the
    # `QueueOwnerAWSAccountId` parameter to specify the account ID of the
    # queue's owner. The queue's owner must grant you permission to access
    # the queue. For more information about shared queue access, see `
    # AddPermission ` or see [Shared Queues][1] in the *Amazon Simple Queue
    # Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html
    #
    # @option params [required, String] :queue_name
    #   The name of the queue whose URL must be fetched. Maximum 80
    #   characters. Valid values: alphanumeric characters, hyphens (`-`), and
    #   underscores (`_`).
    #
    #   Queue names are case-sensitive.
    #
    # @option params [String] :queue_owner_aws_account_id
    #   The AWS account ID of the account that created the queue.
    #
    # @return [Types::GetQueueUrlResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueueUrlResult#queue_url #queue_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_queue_url({
    #     queue_name: "String", # required
    #     queue_owner_aws_account_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/GetQueueUrl AWS API Documentation
    #
    # @overload get_queue_url(params = {})
    # @param [Hash] params ({})
    def get_queue_url(params = {}, options = {})
      req = build_request(:get_queue_url, params)
      req.send_request(options)
    end

    # Returns a list of your queues that have the `RedrivePolicy` queue
    # attribute configured with a dead-letter queue.
    #
    # For more information about using dead-letter queues, see [Using Amazon
    # SQS Dead-Letter Queues][1] in the *Amazon Simple Queue Service
    # Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
    #
    # @option params [required, String] :queue_url
    #   The URL of a dead-letter queue.
    #
    #   Queue URLs are case-sensitive.
    #
    # @return [Types::ListDeadLetterSourceQueuesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeadLetterSourceQueuesResult#queue_urls #queue_urls} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dead_letter_source_queues({
    #     queue_url: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_urls #=> Array
    #   resp.queue_urls[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListDeadLetterSourceQueues AWS API Documentation
    #
    # @overload list_dead_letter_source_queues(params = {})
    # @param [Hash] params ({})
    def list_dead_letter_source_queues(params = {}, options = {})
      req = build_request(:list_dead_letter_source_queues, params)
      req.send_request(options)
    end

    # List all cost allocation tags added to the specified Amazon SQS queue.
    # For an overview, see [Tagging Amazon SQS Queues][1] in the *Amazon
    # Simple Queue Service Developer Guide*.
    #
    # When you use queue tags, keep the following guidelines in mind:
    #
    # * Adding more than 50 tags to a queue isn't recommended.
    #
    # * Tags don't have any semantic meaning. Amazon SQS interprets tags as
    #   character strings.
    #
    # * Tags are case-sensitive.
    #
    # * A new tag with a key identical to that of an existing tag overwrites
    #   the existing tag.
    #
    # * Tagging API actions are limited to 5 TPS per AWS account. If your
    #   application requires a higher throughput, file a [technical support
    #   request][2].
    #
    # For a full list of tag restrictions, see [Limits Related to Queues][3]
    # in the *Amazon Simple Queue Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-tagging-queues.html
    # [2]: https://console.aws.amazon.com/support/home#/case/create?issueType=technical
    # [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html
    #
    # @option params [required, String] :queue_url
    #   The URL of the queue.
    #
    # @return [Types::ListQueueTagsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueueTagsResult#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queue_tags({
    #     queue_url: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListQueueTags AWS API Documentation
    #
    # @overload list_queue_tags(params = {})
    # @param [Hash] params ({})
    def list_queue_tags(params = {}, options = {})
      req = build_request(:list_queue_tags, params)
      req.send_request(options)
    end

    # Returns a list of your queues. The maximum number of queues that can
    # be returned is 1,000. If you specify a value for the optional
    # `QueueNamePrefix` parameter, only queues with a name that begins with
    # the specified value are returned.
    #
    # @option params [String] :queue_name_prefix
    #   A string to use for filtering the list results. Only those queues
    #   whose name begins with the specified string are returned.
    #
    #   Queue names are case-sensitive.
    #
    # @return [Types::ListQueuesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueuesResult#queue_urls #queue_urls} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queues({
    #     queue_name_prefix: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_urls #=> Array
    #   resp.queue_urls[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListQueues AWS API Documentation
    #
    # @overload list_queues(params = {})
    # @param [Hash] params ({})
    def list_queues(params = {}, options = {})
      req = build_request(:list_queues, params)
      req.send_request(options)
    end

    # Deletes the messages in a queue specified by the `QueueURL` parameter.
    #
    # When you use the `PurgeQueue` action, you can't retrieve a message
    # deleted from a queue.
    #
    # When you purge a queue, the message deletion process takes up to 60
    # seconds. All messages sent to the queue before calling the
    # `PurgeQueue` action are deleted. Messages sent to the queue while it
    # is being purged might be deleted. While the queue is being purged,
    # messages sent to the queue before `PurgeQueue` is called might be
    # received, but are deleted within the next minute.
    #
    # @option params [required, String] :queue_url
    #   The URL of the queue from which the `PurgeQueue` action deletes
    #   messages.
    #
    #   Queue URLs are case-sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purge_queue({
    #     queue_url: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/PurgeQueue AWS API Documentation
    #
    # @overload purge_queue(params = {})
    # @param [Hash] params ({})
    def purge_queue(params = {}, options = {})
      req = build_request(:purge_queue, params)
      req.send_request(options)
    end

    # Retrieves one or more messages (up to 10), from the specified queue.
    # Using the `WaitTimeSeconds` parameter enables long-poll support. For
    # more information, see [Amazon SQS Long Polling][1] in the *Amazon
    # Simple Queue Service Developer Guide*.
    #
    # Short poll is the default behavior where a weighted random set of
    # machines is sampled on a `ReceiveMessage` call. Thus, only the
    # messages on the sampled machines are returned. If the number of
    # messages in the queue is small (fewer than 1,000), you most likely get
    # fewer messages than you requested per `ReceiveMessage` call. If the
    # number of messages in the queue is extremely small, you might not
    # receive any messages in a particular `ReceiveMessage` response. If
    # this happens, repeat the request.
    #
    # For each message returned, the response includes the following:
    #
    # * The message body.
    #
    # * An MD5 digest of the message body. For information about MD5, see
    #   [RFC1321][2].
    #
    # * The `MessageId` you received when you sent the message to the queue.
    #
    # * The receipt handle.
    #
    # * The message attributes.
    #
    # * An MD5 digest of the message attributes.
    #
    # The receipt handle is the identifier you must provide when deleting
    # the message. For more information, see [Queue and Message
    # Identifiers][3] in the *Amazon Simple Queue Service Developer Guide*.
    #
    # You can provide the `VisibilityTimeout` parameter in your request. The
    # parameter is applied to the messages that Amazon SQS returns in the
    # response. If you don't include the parameter, the overall visibility
    # timeout for the queue is used for the returned messages. For more
    # information, see [Visibility Timeout][4] in the *Amazon Simple Queue
    # Service Developer Guide*.
    #
    # A message that isn't deleted or a message whose visibility isn't
    # extended before the visibility timeout expires counts as a failed
    # receive. Depending on the configuration of the queue, the message
    # might be sent to the dead-letter queue.
    #
    # <note markdown="1"> In the future, new attributes might be added. If you write code that
    # calls this action, we recommend that you structure your code so that
    # it can handle new attributes gracefully.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-long-polling.html
    # [2]: https://www.ietf.org/rfc/rfc1321.txt
    # [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html
    # [4]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    #
    # @option params [required, String] :queue_url
    #   The URL of the Amazon SQS queue from which messages are received.
    #
    #   Queue URLs are case-sensitive.
    #
    # @option params [Array<String>] :attribute_names
    #   A list of attributes that need to be returned along with each message.
    #   These attributes include:
    #
    #   * `All` - Returns all values.
    #
    #   * `ApproximateFirstReceiveTimestamp` - Returns the time the message
    #     was first received from the queue ([epoch time][1] in milliseconds).
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
    #     ([epoch time][1] in milliseconds).
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
    #   Any other valid special request parameters (such as the following) are
    #   ignored:
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
    #   * `FifoQueue`
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
    #   * `VisibilityTimeout`
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/Unix_time
    #
    # @option params [Array<String>] :message_attribute_names
    #   The name of the message attribute, where *N* is the index.
    #
    #   * The name can contain alphanumeric characters and the underscore
    #     (`_`), hyphen (`-`), and period (`.`).
    #
    #   * The name is case-sensitive and must be unique among all attribute
    #     names for the message.
    #
    #   * The name must not start with AWS-reserved prefixes such as `AWS.` or
    #     `Amazon.` (or any casing variants).
    #
    #   * The name must not start or end with a period (`.`), and it should
    #     not have periods in succession (`..`).
    #
    #   * The name can be up to 256 characters long.
    #
    #   When using `ReceiveMessage`, you can send a list of attribute names to
    #   receive, or you can return all of the attributes by specifying `All`
    #   or `.*` in your request. You can also use all message attributes
    #   starting with a prefix, for example `bar.*`.
    #
    # @option params [Integer] :max_number_of_messages
    #   The maximum number of messages to return. Amazon SQS never returns
    #   more messages than this value (however, fewer messages might be
    #   returned). Valid values are 1 to 10. Default is 1.
    #
    # @option params [Integer] :visibility_timeout
    #   The duration (in seconds) that the received messages are hidden from
    #   subsequent retrieve requests after being retrieved by a
    #   `ReceiveMessage` request.
    #
    # @option params [Integer] :wait_time_seconds
    #   The duration (in seconds) for which the call waits for a message to
    #   arrive in the queue before returning. If a message is available, the
    #   call returns sooner than `WaitTimeSeconds`. If no messages are
    #   available and the wait time expires, the call returns successfully
    #   with an empty list of messages.
    #
    # @option params [String] :receive_request_attempt_id
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
    #     `ReceiveRequestAttemptId`, no retries work until the original
    #     visibility timeout expires. As a result, delays might occur but the
    #     messages in the queue remain in a strict order.
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
    #
    # @return [Types::ReceiveMessageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReceiveMessageResult#messages #messages} => Array&lt;Types::Message&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.receive_message({
    #     queue_url: "String", # required
    #     attribute_names: ["All"], # accepts All, Policy, VisibilityTimeout, MaximumMessageSize, MessageRetentionPeriod, ApproximateNumberOfMessages, ApproximateNumberOfMessagesNotVisible, CreatedTimestamp, LastModifiedTimestamp, QueueArn, ApproximateNumberOfMessagesDelayed, DelaySeconds, ReceiveMessageWaitTimeSeconds, RedrivePolicy, FifoQueue, ContentBasedDeduplication, KmsMasterKeyId, KmsDataKeyReusePeriodSeconds
    #     message_attribute_names: ["MessageAttributeName"],
    #     max_number_of_messages: 1,
    #     visibility_timeout: 1,
    #     wait_time_seconds: 1,
    #     receive_request_attempt_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.messages #=> Array
    #   resp.messages[0].message_id #=> String
    #   resp.messages[0].receipt_handle #=> String
    #   resp.messages[0].md5_of_body #=> String
    #   resp.messages[0].body #=> String
    #   resp.messages[0].attributes #=> Hash
    #   resp.messages[0].attributes["MessageSystemAttributeName"] #=> String
    #   resp.messages[0].md5_of_message_attributes #=> String
    #   resp.messages[0].message_attributes #=> Hash
    #   resp.messages[0].message_attributes["String"].string_value #=> String
    #   resp.messages[0].message_attributes["String"].binary_value #=> String
    #   resp.messages[0].message_attributes["String"].string_list_values #=> Array
    #   resp.messages[0].message_attributes["String"].string_list_values[0] #=> String
    #   resp.messages[0].message_attributes["String"].binary_list_values #=> Array
    #   resp.messages[0].message_attributes["String"].binary_list_values[0] #=> String
    #   resp.messages[0].message_attributes["String"].data_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ReceiveMessage AWS API Documentation
    #
    # @overload receive_message(params = {})
    # @param [Hash] params ({})
    def receive_message(params = {}, options = {})
      req = build_request(:receive_message, params)
      req.send_request(options)
    end

    # Revokes any permissions in the queue policy that matches the specified
    # `Label` parameter. Only the owner of the queue can remove permissions.
    #
    # @option params [required, String] :queue_url
    #   The URL of the Amazon SQS queue from which permissions are removed.
    #
    #   Queue URLs are case-sensitive.
    #
    # @option params [required, String] :label
    #   The identification of the permission to remove. This is the label
    #   added using the ` AddPermission ` action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_permission({
    #     queue_url: "String", # required
    #     label: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/RemovePermission AWS API Documentation
    #
    # @overload remove_permission(params = {})
    # @param [Hash] params ({})
    def remove_permission(params = {}, options = {})
      req = build_request(:remove_permission, params)
      req.send_request(options)
    end

    # Delivers a message to the specified queue.
    #
    # A message can include only XML, JSON, and unformatted text. The
    # following Unicode characters are allowed:
    #
    #  `#x9` \| `#xA` \| `#xD` \| `#x20` to `#xD7FF` \| `#xE000` to `#xFFFD`
    # \| `#x10000` to `#x10FFFF`
    #
    #  Any characters not included in this list will be rejected. For more
    # information, see the [W3C specification for characters][1].
    #
    #
    #
    # [1]: http://www.w3.org/TR/REC-xml/#charsets
    #
    # @option params [required, String] :queue_url
    #   The URL of the Amazon SQS queue to which a message is sent.
    #
    #   Queue URLs are case-sensitive.
    #
    # @option params [required, String] :message_body
    #   The message to send. The maximum string size is 256 KB.
    #
    #   A message can include only XML, JSON, and unformatted text. The
    #   following Unicode characters are allowed:
    #
    #    `#x9` \| `#xA` \| `#xD` \| `#x20` to `#xD7FF` \| `#xE000` to `#xFFFD`
    #   \| `#x10000` to `#x10FFFF`
    #
    #    Any characters not included in this list will be rejected. For more
    #   information, see the [W3C specification for characters][1].
    #
    #
    #
    #   [1]: http://www.w3.org/TR/REC-xml/#charsets
    #
    # @option params [Integer] :delay_seconds
    #   The length of time, in seconds, for which to delay a specific message.
    #   Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive
    #   `DelaySeconds` value become available for processing after the delay
    #   period is finished. If you don't specify a value, the default value
    #   for the queue applies.
    #
    #   <note markdown="1"> When you set `FifoQueue`, you can't set `DelaySeconds` per message.
    #   You can set this parameter only on a queue level.
    #
    #    </note>
    #
    # @option params [Hash<String,Types::MessageAttributeValue>] :message_attributes
    #   Each message attribute consists of a `Name`, `Type`, and `Value`. For
    #   more information, see [Message Attribute Items and Validation][1] in
    #   the *Amazon Simple Queue Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation
    #
    # @option params [String] :message_deduplication_id
    #   This parameter applies only to FIFO (first-in-first-out) queues.
    #
    #   The token used for deduplication of sent messages. If a message with a
    #   particular `MessageDeduplicationId` is sent successfully, any messages
    #   sent with the same `MessageDeduplicationId` are accepted successfully
    #   but aren't delivered during the 5-minute deduplication interval. For
    #   more information, see [ Exactly-Once Processing][1] in the *Amazon
    #   Simple Queue Service Developer Guide*.
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
    #   * If you send one message with `ContentBasedDeduplication` enabled and
    #     then another message with a `MessageDeduplicationId` that is the
    #     same as the one generated for the first `MessageDeduplicationId`,
    #     the two messages are treated as duplicates and only one copy of the
    #     message is delivered.
    #
    #   <note markdown="1"> The `MessageDeduplicationId` is available to the recipient of the
    #   message (this can be useful for troubleshooting delivery issues).
    #
    #    If a message is sent successfully but the acknowledgement is lost and
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
    #
    # @option params [String] :message_group_id
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
    #   `MessageGroupId` is required for FIFO queues. You can't use it for
    #   Standard queues.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagegroupid-property
    #
    # @return [Types::SendMessageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendMessageResult#md5_of_message_body #md5_of_message_body} => String
    #   * {Types::SendMessageResult#md5_of_message_attributes #md5_of_message_attributes} => String
    #   * {Types::SendMessageResult#message_id #message_id} => String
    #   * {Types::SendMessageResult#sequence_number #sequence_number} => String
    #
    # @example Request syntax with placeholder values
    #
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
    #     message_deduplication_id: "String",
    #     message_group_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.md5_of_message_body #=> String
    #   resp.md5_of_message_attributes #=> String
    #   resp.message_id #=> String
    #   resp.sequence_number #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/SendMessage AWS API Documentation
    #
    # @overload send_message(params = {})
    # @param [Hash] params ({})
    def send_message(params = {}, options = {})
      req = build_request(:send_message, params)
      req.send_request(options)
    end

    # Delivers up to ten messages to the specified queue. This is a batch
    # version of ` SendMessage.` For a FIFO queue, multiple messages within
    # a single batch are enqueued in the order they are sent.
    #
    # The result of sending each message is reported individually in the
    # response. Because the batch request can result in a combination of
    # successful and unsuccessful actions, you should check for batch errors
    # even when the call returns an HTTP status code of `200`.
    #
    # The maximum allowed individual message size and the maximum total
    # payload size (the sum of the individual lengths of all of the batched
    # messages) are both 256 KB (262,144 bytes).
    #
    # A message can include only XML, JSON, and unformatted text. The
    # following Unicode characters are allowed:
    #
    #  `#x9` \| `#xA` \| `#xD` \| `#x20` to `#xD7FF` \| `#xE000` to `#xFFFD`
    # \| `#x10000` to `#x10FFFF`
    #
    #  Any characters not included in this list will be rejected. For more
    # information, see the [W3C specification for characters][1].
    #
    # If you don't specify the `DelaySeconds` parameter for an entry,
    # Amazon SQS uses the default value for the queue.
    #
    # <note markdown="1"> Some actions take lists of parameters. These lists are specified using
    # the `param.n` notation. Values of `n` are integers starting from 1.
    # For example, a parameter list with two elements looks like this:
    #
    #  `&Attribute.1=this`
    #
    #  `&Attribute.2=that`
    #
    #  </note>
    #
    #
    #
    # [1]: http://www.w3.org/TR/REC-xml/#charsets
    #
    # @option params [required, String] :queue_url
    #   The URL of the Amazon SQS queue to which batched messages are sent.
    #
    #   Queue URLs are case-sensitive.
    #
    # @option params [required, Array<Types::SendMessageBatchRequestEntry>] :entries
    #   A list of ` SendMessageBatchRequestEntry ` items.
    #
    # @return [Types::SendMessageBatchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendMessageBatchResult#successful #successful} => Array&lt;Types::SendMessageBatchResultEntry&gt;
    #   * {Types::SendMessageBatchResult#failed #failed} => Array&lt;Types::BatchResultErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
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
    #         message_deduplication_id: "String",
    #         message_group_id: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.successful #=> Array
    #   resp.successful[0].id #=> String
    #   resp.successful[0].message_id #=> String
    #   resp.successful[0].md5_of_message_body #=> String
    #   resp.successful[0].md5_of_message_attributes #=> String
    #   resp.successful[0].sequence_number #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].id #=> String
    #   resp.failed[0].sender_fault #=> Boolean
    #   resp.failed[0].code #=> String
    #   resp.failed[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/SendMessageBatch AWS API Documentation
    #
    # @overload send_message_batch(params = {})
    # @param [Hash] params ({})
    def send_message_batch(params = {}, options = {})
      req = build_request(:send_message_batch, params)
      req.send_request(options)
    end

    # Sets the value of one or more queue attributes. When you change a
    # queue's attributes, the change can take up to 60 seconds for most of
    # the attributes to propagate throughout the Amazon SQS system. Changes
    # made to the `MessageRetentionPeriod` attribute can take up to 15
    # minutes.
    #
    # <note markdown="1"> In the future, new attributes might be added. If you write code that
    # calls this action, we recommend that you structure your code so that
    # it can handle new attributes gracefully.
    #
    #  </note>
    #
    # @option params [required, String] :queue_url
    #   The URL of the Amazon SQS queue whose attributes are set.
    #
    #   Queue URLs are case-sensitive.
    #
    # @option params [required, Hash<String,String>] :attributes
    #   A map of attributes to set.
    #
    #   The following lists the names, descriptions, and values of the special
    #   request parameters that the `SetQueueAttributes` action uses:
    #
    #   * `DelaySeconds` - The length of time, in seconds, for which the
    #     delivery of all messages in the queue is delayed. Valid values: An
    #     integer from 0 to 900 (15 minutes). The default is 0 (zero).
    #
    #   * `MaximumMessageSize` - The limit of how many bytes a message can
    #     contain before Amazon SQS rejects it. Valid values: An integer from
    #     1,024 bytes (1 KiB) up to 262,144 bytes (256 KiB). The default is
    #     262,144 (256 KiB).
    #
    #   * `MessageRetentionPeriod` - The length of time, in seconds, for which
    #     Amazon SQS retains a message. Valid values: An integer representing
    #     seconds, from 60 (1 minute) to 1,209,600 (14 days). The default is
    #     345,600 (4 days).
    #
    #   * `Policy` - The queue's policy. A valid AWS policy. For more
    #     information about policy structure, see [Overview of AWS IAM
    #     Policies][1] in the *Amazon IAM User Guide*.
    #
    #   * `ReceiveMessageWaitTimeSeconds` - The length of time, in seconds,
    #     for which a ` ReceiveMessage ` action waits for a message to arrive.
    #     Valid values: an integer from 0 to 20 (seconds). The default is 0.
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
    #       the source queue before being moved to the dead-letter queue.
    #
    #     <note markdown="1"> The dead-letter queue of a FIFO queue must also be a FIFO queue.
    #     Similarly, the dead-letter queue of a standard queue must also be a
    #     standard queue.
    #
    #      </note>
    #
    #   * `VisibilityTimeout` - The visibility timeout for the queue. Valid
    #     values: an integer from 0 to 43,200 (12 hours). The default is 30.
    #     For more information about the visibility timeout, see [Visibility
    #     Timeout][3] in the *Amazon Simple Queue Service Developer Guide*.
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
    #     hours). The default is 300 (5 minutes). A shorter time period
    #     provides better security but results in more calls to KMS which
    #     might incur charges after Free Tier. For more information, see [How
    #     Does the Data Key Reuse Period Work?][8].
    #
    #   The following attribute applies only to [FIFO (first-in-first-out)
    #   queues][9]\:
    #
    #   * `ContentBasedDeduplication` - Enables content-based deduplication.
    #     For more information, see [Exactly-Once Processing][10] in the
    #     *Amazon Simple Queue Service Developer Guide*.
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
    #   Any other valid special request parameters (such as the following) are
    #   ignored:
    #
    #   * `ApproximateNumberOfMessages`
    #
    #   * `ApproximateNumberOfMessagesDelayed`
    #
    #   * `ApproximateNumberOfMessagesNotVisible`
    #
    #   * `CreatedTimestamp`
    #
    #   * `LastModifiedTimestamp`
    #
    #   * `QueueArn`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html
    #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
    #   [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    #   [4]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html
    #   [5]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms
    #   [6]: http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters
    #   [7]: http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys
    #   [8]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work
    #   [9]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html
    #   [10]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_queue_attributes({
    #     queue_url: "String", # required
    #     attributes: { # required
    #       "All" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/SetQueueAttributes AWS API Documentation
    #
    # @overload set_queue_attributes(params = {})
    # @param [Hash] params ({})
    def set_queue_attributes(params = {}, options = {})
      req = build_request(:set_queue_attributes, params)
      req.send_request(options)
    end

    # Add cost allocation tags to the specified Amazon SQS queue. For an
    # overview, see [Tagging Amazon SQS Queues][1] in the *Amazon Simple
    # Queue Service Developer Guide*.
    #
    # When you use queue tags, keep the following guidelines in mind:
    #
    # * Adding more than 50 tags to a queue isn't recommended.
    #
    # * Tags don't have any semantic meaning. Amazon SQS interprets tags as
    #   character strings.
    #
    # * Tags are case-sensitive.
    #
    # * A new tag with a key identical to that of an existing tag overwrites
    #   the existing tag.
    #
    # * Tagging API actions are limited to 5 TPS per AWS account. If your
    #   application requires a higher throughput, file a [technical support
    #   request][2].
    #
    # For a full list of tag restrictions, see [Limits Related to Queues][3]
    # in the *Amazon Simple Queue Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-tagging-queues.html
    # [2]: https://console.aws.amazon.com/support/home#/case/create?issueType=technical
    # [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html
    #
    # @option params [required, String] :queue_url
    #   The URL of the queue.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of tags to be added to the specified queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_queue({
    #     queue_url: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/TagQueue AWS API Documentation
    #
    # @overload tag_queue(params = {})
    # @param [Hash] params ({})
    def tag_queue(params = {}, options = {})
      req = build_request(:tag_queue, params)
      req.send_request(options)
    end

    # Remove cost allocation tags from the specified Amazon SQS queue. For
    # an overview, see [Tagging Amazon SQS Queues][1] in the *Amazon Simple
    # Queue Service Developer Guide*.
    #
    # When you use queue tags, keep the following guidelines in mind:
    #
    # * Adding more than 50 tags to a queue isn't recommended.
    #
    # * Tags don't have any semantic meaning. Amazon SQS interprets tags as
    #   character strings.
    #
    # * Tags are case-sensitive.
    #
    # * A new tag with a key identical to that of an existing tag overwrites
    #   the existing tag.
    #
    # * Tagging API actions are limited to 5 TPS per AWS account. If your
    #   application requires a higher throughput, file a [technical support
    #   request][2].
    #
    # For a full list of tag restrictions, see [Limits Related to Queues][3]
    # in the *Amazon Simple Queue Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-tagging-queues.html
    # [2]: https://console.aws.amazon.com/support/home#/case/create?issueType=technical
    # [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html
    #
    # @option params [required, String] :queue_url
    #   The URL of the queue.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tags to be removed from the specified queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_queue({
    #     queue_url: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/UntagQueue AWS API Documentation
    #
    # @overload untag_queue(params = {})
    # @param [Hash] params ({})
    def untag_queue(params = {}, options = {})
      req = build_request(:untag_queue, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-sqs'
      context[:gem_version] = '1.6.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
