# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

    # Represents the collection of all subscriptions for the AWS
    # account.  For example:
    #
    #  # get the ARNs of all SQS queues with subscriptions to topics
    #  # owned by this account
    #  topic.subscriptions.
    #    select { |s| s.protocol == :sqs }.
    #    collect(&:endpoint)
    #
    class SubscriptionCollection

      include Core::Model
      include Enumerable

      # Yield each subscription belonging to this account.
      # @yieldparam [Subscription] subscription Each of the
      #   subscriptions in the account.
      # @return [nil]
      def each
        next_token = nil
        begin
          opts = request_opts
          opts[:next_token] = next_token if next_token
          resp = client.send(list_request, opts)
          resp.subscriptions.each do |sub|
            subscription = Subscription.new(sub.subscription_arn,
              :endpoint => sub.endpoint,
              :protocol => sub.protocol.tr('-','_').to_sym,
              :owner_id => sub.owner,
              :topic_arn => sub.topic_arn,
              :config => config
            )
            yield(subscription)
          end
          next_token = resp.next_token
        end until resp && next_token.nil?
        nil
      end

      # Retrieves a subscription object by ARN.  This method does not
      # make any requests to the service.
      #
      # @param [String] arn The ARN of the subscription to retrieve.
      # @return [Subscription] The subscription with the given ARN.
      def [] arn
        Subscription.new(arn, :config => config)
      end

      # @private
      protected
      def list_request
        :list_subscriptions
      end

      # @private
      protected
      def request_opts
        {}
      end

    end

  end
end
