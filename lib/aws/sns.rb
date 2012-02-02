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

require 'aws/core'
require 'aws/sns/config'

module AWS

  # This class is the starting point for working with Amazon Simple 
  # Notification Service (SNS).
  #
  # To use Amazon SNS you must first {sign up here}[http://aws.amazon.com/sns/].
  #
  # For more information about Amazon SNS:
  #
  # * {Amazon SNS}[http://aws.amazon.com/sns/]
  # * {Amazon SNS Documentation}[http://aws.amazon.com/documentation/sns/]
  #
  # = Credentials
  #
  # You can setup default credentials for all AWS services via 
  # AWS.config:
  #
  #   AWS.config(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  # 
  # Or you can set them directly on the SNS interface:
  #
  #   sns = AWS::SNS.new(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  class SNS

    AWS.register_autoloads(self) do
      autoload :Client,                      'client'
      autoload :Errors,                      'errors'
      autoload :Policy,                      'policy'
      autoload :HasDeliveryPolicy,           'has_delivery_policy'
      autoload :Request,                     'request'
      autoload :Subscription,                'subscription'
      autoload :SubscriptionCollection,      'subscription_collection'
      autoload :Topic,                       'topic'
      autoload :TopicCollection,             'topic_collection'
      autoload :TopicSubscriptionCollection, 'topic_subscription_collection'
    end

    include Core::ServiceInterface

    # @return [TopicCollection] Returns a topic collection for managing
    #   SNS topics.
    def topics
      TopicCollection.new(:config => config)
    end

    # @return [SubscriptionCollection] Returns a subscription
    #   collection for managing SNS subscriptions.
    def subscriptions
      SubscriptionCollection.new(:config => config)
    end

  end
end
