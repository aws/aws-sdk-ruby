# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SNS

  # This class provides a resource oriented interface for SNS.
  # To create a resource object:
  #
  #     resource = Aws::SNS::Resource.new(region: 'us-west-2')
  #
  # You can supply a client object with custom configuration that will be used for all resource operations.
  # If you do not pass `:client`, a default client will be constructed.
  #
  #     client = Aws::SNS::Client.new(region: 'us-west-2')
  #     resource = Aws::SNS::Resource.new(client: client)
  #
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
    #   platformapplication = sns.create_platform_application({
    #     name: "String", # required
    #     platform: "String", # required
    #     attributes: { # required
    #       "String" => "String",
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :name
    #   Application names must be made up of only uppercase and lowercase
    #   ASCII letters, numbers, underscores, hyphens, and periods, and must be
    #   between 1 and 256 characters long.
    # @option options [required, String] :platform
    #   The following platforms are supported: ADM (Amazon Device Messaging),
    #   APNS (Apple Push Notification Service), APNS\_SANDBOX, and GCM
    #   (Firebase Cloud Messaging).
    # @option options [required, Hash<String,String>] :attributes
    #   For a list of attributes, see [ `SetPlatformApplicationAttributes`
    #   ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sns/latest/api/API_SetPlatformApplicationAttributes.html
    # @return [PlatformApplication]
    def create_platform_application(options = {})
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.create_platform_application(options)
      end
      PlatformApplication.new(
        arn: resp.data.platform_application_arn,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   topic = sns.create_topic({
    #     name: "topicName", # required
    #     attributes: {
    #       "attributeName" => "attributeValue",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     data_protection_policy: "attributeValue",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :name
    #   The name of the topic you want to create.
    #
    #   Constraints: Topic names must be made up of only uppercase and
    #   lowercase ASCII letters, numbers, underscores, and hyphens, and must
    #   be between 1 and 256 characters long.
    #
    #   For a FIFO (first-in-first-out) topic, the name must end with the
    #   `.fifo` suffix.
    # @option options [Hash<String,String>] :attributes
    #   A map of attributes with their corresponding values.
    #
    #   The following lists names, descriptions, and values of the special
    #   request parameters that the `CreateTopic` action uses:
    #
    #   * `DeliveryPolicy` – The policy that defines how Amazon SNS retries
    #     failed deliveries to HTTP/S endpoints.
    #
    #   * `DisplayName` – The display name to use for a topic with SMS
    #     subscriptions.
    #
    #   * `Policy` – The policy that defines who can access your topic. By
    #     default, only the topic owner can publish or subscribe to the topic.
    #
    #   * `TracingConfig` – Tracing mode of an Amazon SNS topic. By default
    #     `TracingConfig` is set to `PassThrough`, and the topic passes
    #     through the tracing header it receives from an Amazon SNS publisher
    #     to its subscriptions. If set to `Active`, Amazon SNS will vend X-Ray
    #     segment data to topic owner account if the sampled flag in the
    #     tracing header is true. This is only supported on standard topics.
    #
    #   * HTTP
    #
    #     * `HTTPSuccessFeedbackRoleArn` – Indicates successful message
    #       delivery status for an Amazon SNS topic that is subscribed to an
    #       HTTP endpoint.
    #
    #     * `HTTPSuccessFeedbackSampleRate` – Indicates percentage of
    #       successful messages to sample for an Amazon SNS topic that is
    #       subscribed to an HTTP endpoint.
    #
    #     * `HTTPFailureFeedbackRoleArn` – Indicates failed message delivery
    #       status for an Amazon SNS topic that is subscribed to an HTTP
    #       endpoint.
    #   * Amazon Data Firehose
    #
    #     * `FirehoseSuccessFeedbackRoleArn` – Indicates successful message
    #       delivery status for an Amazon SNS topic that is subscribed to an
    #       Amazon Data Firehose endpoint.
    #
    #     * `FirehoseSuccessFeedbackSampleRate` – Indicates percentage of
    #       successful messages to sample for an Amazon SNS topic that is
    #       subscribed to an Amazon Data Firehose endpoint.
    #
    #     * `FirehoseFailureFeedbackRoleArn` – Indicates failed message
    #       delivery status for an Amazon SNS topic that is subscribed to an
    #       Amazon Data Firehose endpoint.
    #   * Lambda
    #
    #     * `LambdaSuccessFeedbackRoleArn` – Indicates successful message
    #       delivery status for an Amazon SNS topic that is subscribed to an
    #       Lambda endpoint.
    #
    #     * `LambdaSuccessFeedbackSampleRate` – Indicates percentage of
    #       successful messages to sample for an Amazon SNS topic that is
    #       subscribed to an Lambda endpoint.
    #
    #     * `LambdaFailureFeedbackRoleArn` – Indicates failed message delivery
    #       status for an Amazon SNS topic that is subscribed to an Lambda
    #       endpoint.
    #   * Platform application endpoint
    #
    #     * `ApplicationSuccessFeedbackRoleArn` – Indicates successful message
    #       delivery status for an Amazon SNS topic that is subscribed to a
    #       platform application endpoint.
    #
    #     * `ApplicationSuccessFeedbackSampleRate` – Indicates percentage of
    #       successful messages to sample for an Amazon SNS topic that is
    #       subscribed to an platform application endpoint.
    #
    #     * `ApplicationFailureFeedbackRoleArn` – Indicates failed message
    #       delivery status for an Amazon SNS topic that is subscribed to an
    #       platform application endpoint.
    #     <note markdown="1"> In addition to being able to configure topic attributes for message
    #     delivery status of notification messages sent to Amazon SNS
    #     application endpoints, you can also configure application attributes
    #     for the delivery status of push notification messages sent to push
    #     notification services.
    #
    #      For example, For more information, see [Using Amazon SNS Application
    #     Attributes for Message Delivery Status][1].
    #
    #      </note>
    #
    #   * Amazon SQS
    #
    #     * `SQSSuccessFeedbackRoleArn` – Indicates successful message
    #       delivery status for an Amazon SNS topic that is subscribed to an
    #       Amazon SQS endpoint.
    #
    #     * `SQSSuccessFeedbackSampleRate` – Indicates percentage of
    #       successful messages to sample for an Amazon SNS topic that is
    #       subscribed to an Amazon SQS endpoint.
    #
    #     * `SQSFailureFeedbackRoleArn` – Indicates failed message delivery
    #       status for an Amazon SNS topic that is subscribed to an Amazon SQS
    #       endpoint.
    #
    #   <note markdown="1"> The &lt;ENDPOINT&gt;SuccessFeedbackRoleArn and
    #   &lt;ENDPOINT&gt;FailureFeedbackRoleArn attributes are used to give
    #   Amazon SNS write access to use CloudWatch Logs on your behalf. The
    #   &lt;ENDPOINT&gt;SuccessFeedbackSampleRate attribute is for specifying
    #   the sample rate percentage (0-100) of successfully delivered messages.
    #   After you configure the &lt;ENDPOINT&gt;FailureFeedbackRoleArn
    #   attribute, then all failed message deliveries generate CloudWatch
    #   Logs.
    #
    #    </note>
    #
    #   The following attribute applies only to [server-side encryption][2]:
    #
    #   * `KmsMasterKeyId` – The ID of an Amazon Web Services managed customer
    #     master key (CMK) for Amazon SNS or a custom CMK. For more
    #     information, see [Key Terms][3]. For more examples, see [KeyId][4]
    #     in the *Key Management Service API Reference*.
    #
    #   ^
    #
    #   The following attributes apply only to [FIFO topics][5]:
    #
    #   * `ArchivePolicy` – The policy that sets the retention period for
    #     messages stored in the message archive of an Amazon SNS FIFO topic.
    #
    #   * `ContentBasedDeduplication` – Enables content-based deduplication
    #     for FIFO topics.
    #
    #     * By default, `ContentBasedDeduplication` is set to `false`. If you
    #       create a FIFO topic and this attribute is `false`, you must
    #       specify a value for the `MessageDeduplicationId` parameter for the
    #       [Publish][6] action.
    #
    #     * When you set `ContentBasedDeduplication` to `true`, Amazon SNS
    #       uses a SHA-256 hash to generate the `MessageDeduplicationId` using
    #       the body of the message (but not the attributes of the message).
    #
    #       (Optional) To override the generated value, you can specify a
    #       value for the `MessageDeduplicationId` parameter for the `Publish`
    #       action.
    #   ^
    #
    #   * `FifoThroughputScope` – Enables higher throughput for your FIFO
    #     topic by adjusting the scope of deduplication. This attribute has
    #     two possible values:
    #
    #     * `Topic` – The scope of message deduplication is across the entire
    #       topic. This is the default value and maintains existing behavior,
    #       with a maximum throughput of 3000 messages per second or 20MB per
    #       second, whichever comes first.
    #
    #     * `MessageGroup` – The scope of deduplication is within each
    #       individual message group, which enables higher throughput per
    #       topic subject to regional quotas. For more information on quotas
    #       or to request an increase, see [Amazon SNS service quotas][7] in
    #       the Amazon Web Services General Reference.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html
    #   [2]: https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html
    #   [3]: https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms
    #   [4]: https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters
    #   [5]: https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html
    #   [6]: https://docs.aws.amazon.com/sns/latest/api/API_Publish.html
    #   [7]: https://docs.aws.amazon.com/general/latest/gr/sns.html
    # @option options [Array<Types::Tag>] :tags
    #   The list of tags to add to a new topic.
    #
    #   <note markdown="1"> To be able to tag a topic on creation, you must have the
    #   `sns:CreateTopic` and `sns:TagResource` permissions.
    #
    #    </note>
    # @option options [String] :data_protection_policy
    #   The body of the policy document you want to use for this topic.
    #
    #   You can only add one policy per topic.
    #
    #   The policy must be in JSON string format.
    #
    #   Length Constraints: Maximum length of 30,720.
    # @return [Topic]
    def create_topic(options = {})
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.create_topic(options)
      end
      Topic.new(
        arn: resp.data.topic_arn,
        client: @client
      )
    end

    # @!group Associations

    # @param [String] arn
    # @return [PlatformApplication]
    def platform_application(arn)
      PlatformApplication.new(
        arn: arn,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   sns.platform_applications()
    # @param [Hash] options ({})
    # @return [PlatformApplication::Collection]
    def platform_applications(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.list_platform_applications(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.platform_applications.each do |p|
            batch << PlatformApplication.new(
              arn: p.platform_application_arn,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      PlatformApplication::Collection.new(batches)
    end

    # @param [String] arn
    # @return [PlatformEndpoint]
    def platform_endpoint(arn)
      PlatformEndpoint.new(
        arn: arn,
        client: @client
      )
    end

    # @param [String] arn
    # @return [Subscription]
    def subscription(arn)
      Subscription.new(
        arn: arn,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   sns.subscriptions()
    # @param [Hash] options ({})
    # @return [Subscription::Collection]
    def subscriptions(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.list_subscriptions(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.subscriptions.each do |s|
            batch << Subscription.new(
              arn: s.subscription_arn,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Subscription::Collection.new(batches)
    end

    # @param [String] arn
    # @return [Topic]
    def topic(arn)
      Topic.new(
        arn: arn,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   sns.topics()
    # @param [Hash] options ({})
    # @return [Topic::Collection]
    def topics(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.list_topics(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.topics.each do |t|
            batch << Topic.new(
              arn: t.topic_arn,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Topic::Collection.new(batches)
    end

  end
end
