# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class SNS

    # Client class for Amazon Simple Notifications Service (SNS).
    class Client < Core::QueryClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method add_permission(options = {})
      # Calls the AddPermission API operation.
      # @param [Hash] options
      #   * `:topic_arn` - *required* - (String) The ARN of the topic whose
      #     access control policy you wish to modify.
      #   * `:label` - *required* - (String) A unique identifier for the new
      #     policy statement.
      #   * `:aws_account_id` - *required* - (Array<String>) The AWS account
      #     IDs of the users (principals) who will be given access to the
      #     specified actions. The users must have AWS accounts, but do not
      #     need to be signed up for this service.
      #   * `:action_name` - *required* - (Array<String>) The action you want
      #     to allow for the specified principal(s). Valid values: any Amazon
      #     SNS action name.
      # @return [Core::Response]

      # @!method confirm_subscription(options = {})
      # Calls the ConfirmSubscription API operation.
      # @param [Hash] options
      #   * `:topic_arn` - *required* - (String) The ARN of the topic for which
      #     you wish to confirm a subscription.
      #   * `:token` - *required* - (String) Short-lived token sent to an
      #     endpoint during the Subscribe action.
      #   * `:authenticate_on_unsubscribe` - (String) Disallows unauthenticated
      #     unsubscribes of the subscription. If the value of this parameter is
      #     `true` and the request has an AWS signature, then only the topic
      #     owner and the subscription owner can unsubscribe the endpoint. The
      #     unsubscribe action will require AWS authentication.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:subscription_arn` - (String)

      # @!method create_topic(options = {})
      # Calls the CreateTopic API operation.
      # @param [Hash] options
      #   * `:name` - *required* - (String) The name of the topic you want to
      #     create. Constraints: Topic names must be made up of only uppercase
      #     and lowercase ASCII letters, numbers, and hyphens, and must be
      #     between 1 and 256 characters long.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:topic_arn` - (String)

      # @!method delete_topic(options = {})
      # Calls the DeleteTopic API operation.
      # @param [Hash] options
      #   * `:topic_arn` - *required* - (String) The ARN of the topic you want
      #     to delete. http://sns.us-east-1.amazonaws.com/
      #     ?TopicArn=arn%3Aaws%3Asns%3Aus-east-1%3A123456789012%3AMy-Topic
      #     &Action=DeleteTopic &SignatureVersion=2 &SignatureMethod=HmacSHA256
      #     &Timestamp=2010-03-31T12%3A00%3A00.000Z &AWSAccessKeyId=(AWS Access
      #     Key ID)
      #     &Signature=DjHBa%2BbYCKQAzctOPnLP7MbHnrHT3%2FK3kFEZjwcf9%2FU%3D
      #     <DeleteTopicResponse
      #     xmlns="http://sns.amazonaws.com/doc/2010-03-31/">
      #     <ResponseMetadata>
      #     <RequestId>fba800b9-3765-11df-8cf3-c58c53254dfb</RequestId>
      #     </ResponseMetadata> </DeleteTopicResponse>
      # @return [Core::Response]

      # @!method get_subscription_attributes(options = {})
      # Calls the GetSubscriptionAttributes API operation.
      # @param [Hash] options
      #   * `:subscription_arn` - *required* - (String) The ARN of the
      #     subscription whose properties you want to get.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:attributes` - (Hash<String,String>)

      # @!method get_topic_attributes(options = {})
      # Calls the GetTopicAttributes API operation.
      # @param [Hash] options
      #   * `:topic_arn` - *required* - (String) The ARN of the topic whose
      #     properties you want to get.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:attributes` - (Hash<String,String>)

      # @!method list_subscriptions(options = {})
      # Calls the ListSubscriptions API operation.
      # @param [Hash] options
      #   * `:next_token` - (String) Token returned by the previous
      #     ListSubscriptions request.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:subscriptions` - (Array<Hash>)
      #     * `:subscription_arn` - (String)
      #     * `:owner` - (String)
      #     * `:protocol` - (String)
      #     * `:endpoint` - (String)
      #     * `:topic_arn` - (String)
      #   * `:next_token` - (String)

      # @!method list_subscriptions_by_topic(options = {})
      # Calls the ListSubscriptionsByTopic API operation.
      # @param [Hash] options
      #   * `:topic_arn` - *required* - (String) The ARN of the topic for which
      #     you wish to find subscriptions.
      #   * `:next_token` - (String) Token returned by the previous
      #     ListSubscriptionsByTopic request.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:subscriptions` - (Array<Hash>)
      #     * `:subscription_arn` - (String)
      #     * `:owner` - (String)
      #     * `:protocol` - (String)
      #     * `:endpoint` - (String)
      #     * `:topic_arn` - (String)
      #   * `:next_token` - (String)

      # @!method list_topics(options = {})
      # Calls the ListTopics API operation.
      # @param [Hash] options
      #   * `:next_token` - (String) Token returned by the previous ListTopics
      #     request.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:topics` - (Array<Hash>)
      #     * `:topic_arn` - (String)
      #   * `:next_token` - (String)

      # @!method publish(options = {})
      # Calls the Publish API operation.
      # @param [Hash] options
      #   * `:topic_arn` - *required* - (String) The topic you want to publish
      #     to.
      #   * `:message` - *required* - (String) The message you want to send to
      #     the topic. Constraints: Messages must be UTF-8 encoded strings at
      #     most 8 KB in size (8192 bytes, not 8192 characters).
      #   * `:subject` - (String) Optional parameter to be used as the
      #     "Subject" line of when the message is delivered to e-mail
      #     endpoints. This field will also be included, if present, in the
      #     standard JSON messages delivered to other endpoints. Constraints:
      #     Subjects must be ASCII text that begins with a letter, number or
      #     punctuation mark; must not include line breaks or control
      #     characters; and must be less than 100 characters long.
      #   * `:message_structure` - (String) Optional parameter. It will have
      #     one valid value: "json". If this option, Message is present and set
      #     to "json", the value of Message must: be a syntactically valid JSON
      #     object. It must contain at least a top level JSON key of "default"
      #     with a value that is a string. For any other top level key that
      #     matches one of our transport protocols (e.g. "http"), then the
      #     corresponding value (if it is a string) will be used for the
      #     message published for that protocol Constraints: Keys in the JSON
      #     object that correspond to supported transport protocols must have
      #     simple JSON string values. The values will be parsed (unescaped)
      #     before they are used in outgoing messages. Typically, outbound
      #     notifications are JSON encoded (meaning, the characters will be
      #     reescaped for sending). JSON strings are UTF-8. Values have a
      #     minimum length of 0 (the empty string, "", is allowed). Values have
      #     a maximum length bounded by the overall message size (so, including
      #     multiple protocols may limit message sizes). Non-string values will
      #     cause the key to be ignored. Keys that do not correspond to
      #     supported transport protocols will be ignored. Duplicate keys are
      #     not allowed. Failure to parse or validate any key or value in the
      #     message will cause the Publish call to return an error (no partial
      #     delivery).
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:message_id` - (String)

      # @!method remove_permission(options = {})
      # Calls the RemovePermission API operation.
      # @param [Hash] options
      #   * `:topic_arn` - *required* - (String) The ARN of the topic whose
      #     access control policy you wish to modify.
      #   * `:label` - *required* - (String) The unique label of the statement
      #     you want to remove.
      # @return [Core::Response]

      # @!method set_subscription_attributes(options = {})
      # Calls the SetSubscriptionAttributes API operation.
      # @param [Hash] options
      #   * `:subscription_arn` - *required* - (String) The ARN of the
      #     subscription to modify.
      #   * `:attribute_name` - *required* - (String) The name of the attribute
      #     you want to set. Only a subset of the subscriptions attributes are
      #     mutable. Valid values: DeliveryPolicy
      #   * `:attribute_value` - *required* - (String) The new value for the
      #     attribute.
      # @return [Core::Response]

      # @!method set_topic_attributes(options = {})
      # Calls the SetTopicAttributes API operation.
      # @param [Hash] options
      #   * `:topic_arn` - *required* - (String) The ARN of the topic to
      #     modify.
      #   * `:attribute_name` - *required* - (String) The name of the attribute
      #     you want to set. Only a subset of the topic's attributes are
      #     mutable. Valid values: Policy | DisplayName
      #   * `:attribute_value` - *required* - (String) The new value for the
      #     attribute.
      # @return [Core::Response]

      # @!method subscribe(options = {})
      # Calls the Subscribe API operation.
      # @param [Hash] options
      #   * `:topic_arn` - *required* - (String) The ARN of topic you want to
      #     subscribe to.
      #   * `:protocol` - *required* - (String) The protocol you want to use.
      #     Supported protocols include: http -- delivery of JSON-encoded
      #     message via HTTP POST https -- delivery of JSON-encoded message via
      #     HTTPS POST email -- delivery of message via SMTP email-json --
      #     delivery of JSON-encoded message via SMTP sms -- delivery of
      #     message via SMS sqs -- delivery of JSON-encoded message to an
      #     Amazon SQS queue
      #   * `:endpoint` - *required* - (String) The endpoint that you want to
      #     receive notifications. Endpoints vary by protocol: For the http
      #     protocol, the endpoint is an URL beginning with "http://" For the
      #     https protocol, the endpoint is a URL beginning with "https://" For
      #     the email protocol, the endpoint is an e-mail address For the
      #     email-json protocol, the endpoint is an e-mail address For the sms
      #     protocol, the endpoint is a phone number of an SMS-enabled device
      #     For the sqs protocol, the endpoint is the ARN of an Amazon SQS
      #     queue
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:subscription_arn` - (String)

      # @!method unsubscribe(options = {})
      # Calls the Unsubscribe API operation.
      # @param [Hash] options
      #   * `:subscription_arn` - *required* - (String) The ARN of the
      #     subscription to be deleted.
      # @return [Core::Response]

      # end client methods #

      define_client_methods('2010-03-31')

    end
  end
end
