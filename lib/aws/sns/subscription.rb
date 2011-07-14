# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'aws/model'
require 'aws/sns/topic_subscription_collection'
require 'aws/sns/subscription_collection'

module AWS
  class SNS

    # Represents a subscription of a single endpoint to an SNS topic.
    # To create a subscription, use the {Topic#subscribe} method.
    # Depending on the endpoint type, you may also need to use
    # {Topic#confirm_subscription}.
    class Subscription

      include Model

      # @private
      def initialize(arn, opts = {})
        @arn = arn
        @topic = opts[:topic]
        @endpoint = opts[:endpoint]
        @protocol = opts[:protocol]
        @owner_id = opts[:owner_id]
        super
      end

      # @return [String] The ARN of the subscription.
      attr_reader :arn

      # @return [Topic] The topic to which the endpoint is subscribed.
      attr_reader :topic

      # @return [String] The endpoint.  This can be an HTTP or HTTPS
      # URL, an e-mail address, or a queue ARN.
      attr_reader :endpoint

      # @return [String] The protocol.  Possible values:
      #
      #  * +:http+
      #  * +:https+
      #  * +:email+
      #  * +:email_json+
      #  * +:sqs+
      attr_reader :protocol

      # @return [String] The AWS account ID of the subscription owner.
      attr_reader :owner_id

      # Deletes this subscription.
      # @return [nil]
      def unsubscribe
        client.unsubscribe(:subscription_arn => arn)
        nil
      end

      # @note This method requests the entire list of subscriptions
      #   for the topic (if known) or the account (if the topic is not
      #   known).  It can be expensive if the number of subscriptions
      #   is high.
      #
      # @return [Boolean] Returns true if the subscription exists.
      def exists?
        collection =
          if topic
            TopicSubscriptionCollection.new(topic,
                                            :config => config)
          else
            SubscriptionCollection.new(:config => config)
          end
        collection.include?(self)
      end

      # @private
      def inspect
        "<#{self.class}:#{arn}>"
      end

      # @return [Boolean] Returns true if the subscriptions have the same
      #   resource ARN.
      def ==(other)
        other.kind_of?(Subscription) and other.arn == arn
      end
      alias_method :eql?, :==

    end

  end
end
